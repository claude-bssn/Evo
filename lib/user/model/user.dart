class UserData {
  int id;
  String lastName;
  String phone;
  String email;
  String address;
  String zipCode;
  String city;
  String birth;
  String comment;

  UserData({
    this.id,
    this.lastName,
    this.phone,
    this.email,
    this.address,
    this.zipCode,
    this.city,
    this.birth,
    this.comment,
  });

  factory UserData.fromJson(Map<String, Object> data) {
    return UserData(
        id: data['id'] as int,
        lastName: data['last_name'],
        phone: data['phone'],
        email: data['email'],
        address: data['adress'],
        zipCode: data['zip_code'],
        city: data['city'],
        birth: data['birth'],
        comment: data['comment']);
  }

  @override
  String toString() {
    return 'id: $id'
        'lastName: $lastName'
        'phone: $phone'
        'email: $email'
        'address: $address'
        'zipCode: $zipCode'
        'city: $city'
        'birth: $birth'
        'comment: $comment';
  }
}
