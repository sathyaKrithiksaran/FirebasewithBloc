import 'package:equatable/equatable.dart';

abstract class AuthState extends Equatable{
  const AuthState();
  @override
  List<Object>get props => [];
}
class AppLoaded extends AuthState{}