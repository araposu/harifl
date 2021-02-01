import 'package:hooks_riverpod/all.dart';

import '../remote/lgtm_data_source.dart';
import '../remote/lgtm_data_source_impl.dart';
import 'dio_provider.dart';

final lgtmDataSourceProvider = Provider<LgtmDataSource>(
    (ref) => LgtmDataSourceImpl(dio: ref.read(lgtmDioProvider)));
