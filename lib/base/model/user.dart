class User {
  String? firstName;
  String? lastName;
  String? email;
  String? phone;
  String? street;
  String? state;
  String? country;
  double? longitude;
  int? id;
  String? gender;
  String? dateOfBirth;
  String? job;
  String? city;
  String? zipcode;
  double? latitude;
  String? profilePicture;

  User(
      {this.firstName,
      this.lastName,
      this.email,
      this.phone,
      this.street,
      this.state,
      this.country,
      this.longitude,
      this.id,
      this.gender,
      this.dateOfBirth,
      this.job,
      this.city,
      this.zipcode,
      this.latitude,
      this.profilePicture});

  User.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    phone = json['phone'];
    street = json['street'];
    state = json['state'];
    country = json['country'];
    longitude = json['longitude'];
    id = json['id'];
    gender = json['gender'];
    dateOfBirth = json['date_of_birth'];
    job = json['job'];
    city = json['city'];
    zipcode = json['zipcode'];
    latitude = json['latitude'];
    profilePicture = json['profile_picture'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['email'] = email;
    data['phone'] = phone;
    data['street'] = street;
    data['state'] = state;
    data['country'] = country;
    data['longitude'] = longitude;
    data['id'] = id;
    data['gender'] = gender;
    data['date_of_birth'] = dateOfBirth;
    data['job'] = job;
    data['city'] = city;
    data['zipcode'] = zipcode;
    data['latitude'] = latitude;
    data['profile_picture'] = profilePicture;
    return data;
  }
}
