import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../component/container_with_loading.dart';
import '../loading_state_view_model.dart';
import 'lgtm_view_model.dart';

enum LgtmImageType { recent, random }

class LgtmImageList extends StatelessWidget {
  LgtmImageList(this.type);

  final LgtmImageType type;

  @override
  Widget build(BuildContext context) {
    return ContainerWithLoading(
      child: HookBuilder(
        builder: (context) {
          final lgtmViewModel = context.read(lgtmViewModelProvider);
          if (type == LgtmImageType.recent) {
            context
                .read(loadingStateProvider)
                .whileLoading(lgtmViewModel.fetchRecentImages);
          } else {
            context
                .read(loadingStateProvider)
                .whileLoading(lgtmViewModel.fetchRandomImages);
          }
          final images = useProvider(
              lgtmViewModelProvider.select((value) => value.images));

          return images.when(success: (data) {
            return RefreshIndicator(
                onRefresh: () async => {
                  if (type == LgtmImageType.recent) {
                    lgtmViewModel.fetchRecentImages()
                  } else {
                    lgtmViewModel.fetchRandomImages()
                  }
                },
                child: StaggeredGridView.countBuilder(
                  crossAxisCount: 6,
                  itemCount: data.images.length,
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black26,
                        width: 1.0,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(4.0)),
                    ),
                    child: Image.network(
                      data.images[index].url,
                      fit: BoxFit.cover,
                    ),
                  ),
                  staggeredTileBuilder: (index) => const StaggeredTile.fit(2),
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                ));
          }, failure: (e) {
            return Text('Error Screen: $e');
          });
        },
      ),
    );
  }
}
