import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable{
  const AuthEvent();
  @override
  List<Object>get props =>[];
}
class AppLoaded  extends AuthEvent{}