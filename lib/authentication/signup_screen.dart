import 'package:drivers_app/authentication/car_info_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController nametextEditingController=TextEditingController();
  TextEditingController emailtextEditingController=TextEditingController();
  TextEditingController phonetextEditingController=TextEditingController();
  TextEditingController passwordtextEditingController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(

            children: [

              const SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("images/logo1.jpg"),
              ),

              const SizedBox(height: 10,),

          const Text(
                "Register as a Mechanic",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),

              TextField(
                controller: nametextEditingController,
                style:const TextStyle(
                  color: Colors.grey,
                ),
                decoration: const InputDecoration(
                  labelText: "Name",
                  hintText: "Name",

                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
              ),

              TextField(
                controller: emailtextEditingController,
                keyboardType: TextInputType.emailAddress,
                style:const TextStyle(
                  color: Colors.grey,
                ),
                decoration: const InputDecoration(
                  labelText: "Email",
                  hintText: "Email",

                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
              ),

              TextField(
                controller: phonetextEditingController,
                keyboardType: TextInputType.phone,
                style:const TextStyle(
                  color: Colors.grey,
                ),
                decoration: const InputDecoration(
                  labelText: "Phone",
                  hintText: "Phone",

                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
              ),

              TextField(
                controller: passwordtextEditingController,
                keyboardType: TextInputType.text,
                obscureText: true,//to make password in dotted form
                style:const TextStyle(
                  color: Colors.grey,
                ),
                decoration: const InputDecoration(
                  labelText: "Password",
                  hintText: "Password",

                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color:Colors.grey),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
              ),

              const SizedBox(height: 20,),

              //When the driver click on create account we would send to it carinfo screen
              ElevatedButton(
                  onPressed: ()
                  {
                    Navigator.push(context,MaterialPageRoute(builder: (c)=>CarInfoScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreenAccent,
                  ),

                  child: const Text(
                    "Create Account",
                    style: TextStyle(
                      color:Colors.black54,
                      fontSize: 18.0,

                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
