import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_management_starter/core/networking/local/hive_service.dart';
import 'package:student_management_starter/features/batch/data/model/batch_hive_model.dart';



//creating provider for batchlocaldatasource
final batchLocalDataSourceProvider = Provider(
  (ref) => BatchLocalDatasource(
    hiveService: ref.watch(hiveServiceProvider),
    batchHiveModel: ref.watch(batchHiveModelProvider),
  ),
);


class BatchLocalDatasource {
  final HiveService hiveService;
  final BatchHiveModel batchHiveModel;
  BatchLocalDatasource({
    required this.hiveService,
    required this.batchHiveModel,
  });
}
