import 'package:flutter/material.dart';

void main() {
  runApp(const ProfilWidget());
}

class Profile {
  String firstName;
  String lastName;
  int? age;
  double height;
  Gender gender;
  List<String> hobbies;
  String favoriteProgrammingLanguage;
  String secret;

  Profile(
      {this.firstName = "",
      this.lastName = "",
      this.age,
      this.height = 0.0,
      this.gender = Gender.male,
      this.hobbies = const [],
      this.favoriteProgrammingLanguage = "",
      this.secret = ""});
}

enum Gender { male, female }

class ProfilWidget extends StatefulWidget {
  const ProfilWidget({super.key});

  @override
  ProfilWidgetState createState() => ProfilWidgetState();
}

class ProfilWidgetState extends State<ProfilWidget> {
  Profile profile =
      Profile(firstName: "YourFirstName", lastName: "YourLastName");

  late TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Fuckin'profile page"),
            centerTitle: true,
            elevation: 3,
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  height: 400,
                  child: Card(
                    color: Colors.white70,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.pink,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text(
                                      profile.firstName,
                                      style: const TextStyle(fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  if (profile.age != null) ...[
                                    Text(profile.age.toString()),
                                    const Text(" y/o")
                                  ]
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              if (profile.gender == "male") ...[
                                Icon(Icons.male),
                                Text("Man")
                              ] else if (profile.gender == "female") ...[
                                Icon(Icons.female)
                              ] else
                                Icon(Icons.transgender)
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.height),
                              Text(profile.height.toString()),
                              Text(" cm")
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.sports_football),
                              if (profile.hobbies != null)
                                Text(profile.hobbies.join(", "))
                            ],
                          ),
                          Row(children: [
                            Icon(Icons.code),
                            Text(profile.favoriteProgrammingLanguage)
                          ]),
                          Row(
                            children: [
                              Icon(Icons.security_rounded),
                              Text(profile.secret)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    iconSize: 20,
                                    style: IconButton.styleFrom(
                                        backgroundColor: Colors.white70,
                                        padding: EdgeInsets.only(
                                            left: 20, right: 20),
                                        elevation: 3,
                                        shadowColor: Colors.black),
                                    icon: Icon(Icons.access_time_filled),
                                  ),
                                  Container(
                                    width: 10,
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    iconSize: 20,
                                    style: IconButton.styleFrom(
                                        backgroundColor: Colors.white70,
                                        padding: EdgeInsets.only(
                                            left: 20, right: 20),
                                        elevation: 3,
                                        shadowColor: Colors.black),
                                    icon: Icon(Icons.camera_alt),
                                  )
                                ],
                              ),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.white70,
                                    padding:
                                        EdgeInsets.only(left: 20, right: 20),
                                    elevation: 3,
                                    shadowColor: Colors.black),
                                child: Text("Hide my secret!"),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                TextField(
                  controller: textEditingController,
                  onChanged: ((value) => setState(() {
                        profile.firstName = value;
                      })),
                ),
                TextField(
                  controller: textEditingController,
                  onChanged: ((value) => setState(() {
                        profile.lastName = value;
                      })),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Select your age:"),
                    DropdownButton<int>(
                      items: List.generate(
                        100,
                        (index) => DropdownMenuItem<int>(
                          value: index,
                          child: Text(index.toString()),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          profile.age = value;
                        });
                      },
                      hint: Text(profile.age.toString()),
                    )
                  ],
                ),
                TextField(
                  controller: textEditingController,
                  onChanged: ((value) => setState(() {
                    profile.secret = value;
                  })),
                  obscureText: true,
                )
              ],
            ),
          ),
        )
    );
  }
}
