import 'package:todo/core/classes/result.dart';
import 'package:todo/core/services/services.dart';
import 'package:todo/features/ussd_codes/domain/entities/entities.dart';
import 'package:todo/features/ussd_codes/domain/repositories/repositories.dart';
import 'package:meta/meta.dart';

class GetAssetsUssdCodes implements IService<List<UssdItem>, NoParams> {
  final IUssdCodesRepository repository;

  GetAssetsUssdCodes({@required this.repository}) : assert(repository != null);

  @override
  Future<Result<List<UssdItem>>> call(NoParams params) {
    return repository.getAssetsUssdCodes();
  }
}
