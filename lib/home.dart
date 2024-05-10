import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:app_cablage/loginPage.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {
  FirebaseAuth instance = FirebaseAuth.instance;//server auth database
  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((User? user){
      if(user == null){
        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
      }else{
        //print('c"est lutilisateur');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Logique pour l'action valide
              },
              child: Text('Valide'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logique pour l'action non valide
              },
              child: Text('Non valide'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey.shade400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}