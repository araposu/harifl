import 'package:hooks_riverpod/all.dart';

import '../repository/lgtm_repository.dart';
import '../repository/lgtm_repository_impl.dart';
import 'lgtm_data_source_provider.dart';

final lgtmRepositoryProvider = Provider<LgtmRepository>(
    (ref) => LgtmRepositoryImpl(dataSource: ref.read(lgtmDataSourceProvider)));
