import 'dart:convert';

class StudentModel {
  final String name;
  final String lastName;
  final String email;
  final String phone;
  final String address;
  final String city;

  StudentModel({
    required this.name,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.address,
    required this.city,
  });

  StudentModel copyWith({
    String? name,
    String? lastName,
    String? email,
    String? phone,
    String? address,
    String? city,
  }) {
    return StudentModel(
      name: name ?? this.name,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      city: city ?? this.city,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'lastName': lastName,
      'email': email,
      'phone': phone,
      'address': address,
      'city': city,
    };
  }

  factory StudentModel.fromMap(Map<String, dynamic> map) {
    return StudentModel(
      name: map['name'] as String,
      lastName: map['lastName'] as String,
      email: map['email'] as String,
      phone: map['phone'] as String,
      address: map['address'] as String,
      city: map['city'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory StudentModel.fromJson(String source) =>
      StudentModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'StudentModel(name: $name, lastName: $lastName, email: $email, phone: $phone, address: $address, city: $city)';
  }

  @override
  bool operator ==(covariant StudentModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.lastName == lastName &&
        other.email == email &&
        other.phone == phone &&
        other.address == address &&
        other.city == city;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        lastName.hashCode ^
        email.hashCode ^
        phone.hashCode ^
        address.hashCode ^
        city.hashCode;
  }
}
