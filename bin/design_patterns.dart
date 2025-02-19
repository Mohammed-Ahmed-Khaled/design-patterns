class User {
  final String firstName;
  final String lastName;
  final int? age;
  final String? phone;

  User({
    required this.firstName,
    required this.lastName,
    this.age,
    this.phone,
  });

  @override
  String toString() {
    return 'User: { First Name: $firstName, Last Name: $lastName, Age: ${age ?? "Not provided"}, Phone: ${phone ?? "Not provided"} }';
  }
}

class UserBuilder {
  String? _firstName;
  String? _lastName;
  int? _age;
  String? _phone;

  UserBuilder setFirstName(String firstName) {
    _firstName = firstName;
    return this;
  }

  UserBuilder setLastName(String lastName) {
    _lastName = lastName;
    return this;
  }

  UserBuilder setAge(int age) {
    _age = age;
    return this;
  }

  UserBuilder setPhone(String phone) {
    _phone = phone;
    return this;
  }

  User build() {
    if (_firstName == null || _lastName == null) {
      throw Exception("First name and last name are required");
    }
    return User(
      firstName: _firstName!,
      lastName: _lastName!,
      age: _age,
      phone: _phone,
    );
  }
}

void main() {
  User user = UserBuilder()
      .setFirstName("Mohammed")
      .setLastName("Khaled")
      .setAge(25)
      .setPhone("01111111111")
      .build();

  print(user);
}
