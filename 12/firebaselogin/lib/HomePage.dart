import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  bool isSignedIn=false;
  FirebaseUser user;

  checkAuthentication() async{
    _auth.onAuthStateChanged.listen((user) async{
      if(user==null){
        Navigator.pushReplacementNamed(context, "/SignInPage");
      }

    });
  }

  getUser() async{
    FirebaseUser firebaseUser = await _auth.currentUser();
    //ISSUE: https://github.com/flutter//flutter/issues/19746
    await firebaseUser?.reload();
    firebaseUser = await _auth.currentUser();

    if(firebaseUser != null){
      setState(() {
       this.user = firebaseUser;
       this.isSignedIn =true; 
      });
    }
  }

  signOut() async{
    _auth.signOut();
  }

  @override

  void initState(){
    super.initState();
    this.checkAuthentication();
    this.getUser();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: Center(
          child: !!isSignedIn
          ? CircularProgressIndicator()
          :Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(50.0),
                child: Image(image: 
                AssetImage("assets/logo.png"),
                width: 100.0,
                height: 100.0,
                ),
              ),
              Container(
                padding: EdgeInsets.all(50.0),
                child: Text("Hello,${user.displayName},you are logged in as ${user.email}",
                style:TextStyle(fontSize: 20.0)
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: RaisedButton(
                  color: Colors.blue,
                  padding: EdgeInsets.fromLTRB(100,20,100,20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  onPressed: signOut,
                  child: Text('SignOut',
                  style: TextStyle(fontSize: 20.0,color: Colors.white),
                  ),
                ),
              )
            ],
          )
        ),
      ),
      
      
    );
  }
}