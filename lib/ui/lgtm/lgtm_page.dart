import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants.dart';
import '../component/image.dart';
import '../user_view_model.dart';
import 'lgtm_image_list.dart';

class LgtmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
                title: Text(L10n.of(context).lgtm,
                    style: Theme.of(context).textTheme.headline1),
                actions: [
                  // action button
                  IconButton(
                      icon: HookBuilder(builder: (context) {
                        final user = useProvider(userViewModelProvider
                            .select((value) => value.user));
                        return CircleAvatar(
                          backgroundImage: loadProfileImage(user?.photoURL),
                          backgroundColor: Colors.transparent,
                          radius: 12,
                        );
                      }),
                      onPressed: () => Get.toNamed(Constants.pageSignIn))
                ]),
            body: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Material(
                    child: TabBar(
                        unselectedLabelColor: Colors.redAccent,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.redAccent),
                        tabs: [
                          Tab(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      color: Colors.redAccent, width: 1)),
                              child: const Align(
                                alignment: Alignment.center,
                                child: Text('Recent'),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                      color: Colors.redAccent, width: 1)),
                              child: const Align(
                                alignment: Alignment.center,
                                child: Text('Random'),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
                Expanded(
                    child: TabBarView(children: [
                  LgtmImageList(LgtmImageType.recent),
                  LgtmImageList(LgtmImageType.random)
                ]))
              ],
            )));
  }
}
