class User {
    String? name;
    int? age;
    double? height;
    int? id;

    User({ required this.name, required this.age, required this.height, this.id });

    static User fromJson(Map<dynamic, dynamic> userJson) {
        return User(
            id: userJson['id'],
            name: userJson['name'],
            age: userJson['age'],
            height: userJson['height']);
    }

    Map toJson() {
        return {'id': this.id, 'name': this.name, 'age': this.age, 'height': this.height };
    }

    String toString() {
        return 'User(id : ${this.id} ,name: ${this.name}, age: ${this.age}, height: ${this.height})';
    }
}
