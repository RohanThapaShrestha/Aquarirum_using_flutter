import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    List images = ["g.png", "f.png"];
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Column(children: [
          Container(
            width: w,
            height: h * 0.3,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/bgloginpage.jpg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: w,
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.5))
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: const Icon(
                          Icons.password,
                          color: Colors.blue,
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Colors.white)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Colors.white))),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            width: 140,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage('assets/11.jpg'), fit: BoxFit.cover)),
            child: Center(
                child: Text(
              "Sign up",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
          ),
          const SizedBox(
            height: 80,
          ),
          RichText(
              text: TextSpan(
            text: "Sign up using ",
            style: TextStyle(color: Colors.grey[500], fontSize: 15),
          )),
          Wrap(
              children: List<Widget>.generate(
            2,
            (index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                    radius: 29,
                    backgroundColor: Colors.grey[500],
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25,
                      // ignore: prefer_interpolation_to_compose_strings
                      backgroundImage: AssetImage("assets/" + images[index]),
                    )),
              );
            },
          ))
        ]));
  }
}
