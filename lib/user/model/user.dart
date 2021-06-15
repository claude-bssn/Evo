class User {
  User(this.id, this.fullName);

  final String id;
  final String fullName;

  @override
  String toString() {
    return '$id, $fullName';
  }
}
