abstract class Failure {
  final String errMsg;

  const Failure({required this.errMsg});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMsg});
}
