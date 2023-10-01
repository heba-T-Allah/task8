import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(children: [MyBody(),
          Align(
          alignment: FractionalOffset.bottomCenter,
          child: MaterialButton(onPressed: () => {}, child: Container(height: 3,width: 100,color: Colors.black,)),
        )],),
      )
    );
  }
}
class MyBody extends StatefulWidget {
  const MyBody({super.key});

  @override
  State<MyBody> createState() => _MyBodyState();
}

class _MyBodyState extends State<MyBody> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String? userName;
  String? password;

  @override
  Widget build(BuildContext context) {
    return  ListView(children: [
        const SizedBox(height: 50),
        Center(
          // child: Icon(Icons.diamond_outlined,),
            child: SizedBox.fromSize(
              size: const Size.fromRadius(40),
              child: const FittedBox(
                child: Icon(Icons.diamond_outlined),
              ),
            )),
        const Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Center(
              child: Text(
                "SHRINE",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              )),
        ),
        const SizedBox(height: 80),
        Padding(
          padding: const EdgeInsets.only(
              top: 25.0, right: 25, left: 25, bottom: 15),
          child: TextField(
            controller: _userNameController,
            decoration: const InputDecoration(
              filled: true,
              contentPadding: EdgeInsets.all(20),
              hintText: "User name",
              fillColor: Color(0xfff1f3f4),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 25, left: 25),
          child: TextField(
            controller: _passwordController,
            decoration: const InputDecoration(
              filled: true,
              hintText: "Password",
              contentPadding: EdgeInsets.all(20),
              fillColor: Color(0xfff1f3f4),
            ),
            obscureText: true,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: OverflowBar(
            alignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  _userNameController.clear();
                  _passwordController.clear();
                },
                child: const Text("CANCEL"),
              ),
              Container(
                  width: 90,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      color: const Color(0xfff2f2f2)),
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        userName = _userNameController.text;
                        password = _passwordController.text;
                        print(
                            "Your UserName is $userName and your password is $password");
                      });
                    },
                    textColor: Colors.blue,
                    child: const Text("NEXT"),
                  )),
            ],
          ),
        ),

      ]);
  }
}
