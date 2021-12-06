import 'package:pro_area_flutter_task_v2/core/domain/failures.dart';

class AuthFailure extends Failure {
  final String message;

  AuthFailure(this.message);
}
