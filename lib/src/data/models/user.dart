class User {
  final String email, name, lastname;
  final String ?id;
  final DateTime? birthday;

  User({
    required this.id,
    required this.email,
    required this.name,
    required this.lastname,
    required this.birthday,
  });
}
