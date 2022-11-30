import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('Simple Login Page'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Form(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      autocorrect: true,
                      autofillHints: [AutofillHints.email],
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: "Enter mail account",
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {},
                      validator: (value) {
                        return value!.isEmpty ? 'Try again' : null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: "Enter password",
                        prefixIcon: Icon(
                          Icons.password,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {},
                      validator: (value) {
                        return value!.isEmpty ? 'Try again' : null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        hintText: 'Active contact',
                        prefixIcon: Icon(Icons.contact_phone,color: Colors.black,),
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value){
                      },
                      validator: (value){
                        return value!.isEmpty ? 'Try again':null;
                      },
                    ),
                  ),
                  SizedBox(height: 10,),
                  MaterialButton(onPressed: (){

                  },child: Text('Register'),color: Colors.green.shade300,)
                ],
              )),
            )
          ],
        ));
  }
}
