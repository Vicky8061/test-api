class AuthRequest {
  final String email;
  final String password;
  final String? name;

  AuthRequest({this.name, required this.email, required this.password});

  Map<String, String> toLoginMap() {
    return {'email': email, 'password': password};
  }

  Map<String, String> toRegisterMap() {
    return {'name': name ?? '', 'email': email, 'password': password};
  }
}
