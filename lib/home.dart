

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui12/pacges/pref_servise.dart';
import 'package:ui12/pacges/user_model.dart';

import 'account.dart';
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  String myname ="";
final usernamecontroller = TextEditingController();
final passwordcontroller = TextEditingController();
void dologin (){
  String email = usernamecontroller.text.toString().trim();
  String password = passwordcontroller.text.toString().trim();
  User user = User(email: email,password: password);

  Prefs.storeUser(user);

    Prefs.loadUser().then((user) => {
      print(user!.email),
      print(user.password),
    });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
         children: [

           Container(
             margin: EdgeInsets.only(right: 15,left: 15,top: 45,),
             child: Image(

               fit: BoxFit.cover,
               image: AssetImage("assets/images/images.png"),
             ),
           ),
           SizedBox(height: 10,),
           Text("Welcome to back!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
           SizedBox(height: 5,),
           Text("Log in to your existant account of AKT",style: TextStyle(fontSize: 15,color: Colors.black54),),
           SizedBox(height: 10,),
           Container(
             margin: EdgeInsets.only(left: 15,right: 15),
             padding:EdgeInsets.only(left: 15,right: 15),
             height: 50,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(25),
               color: Colors.grey[200]
             ),
             child: TextField(
               controller: usernamecontroller,
               decoration: InputDecoration(
                 hintText: "baxtiyor@pdp.uz",
                 border: InputBorder.none,
                 fillColor: Colors.blue,
                 icon: Icon(Icons.account_box_outlined),
               ),
             ),
             ),
           SizedBox(height: 5,),
           Container(
             margin: EdgeInsets.only(left: 15,right: 15),
             padding:EdgeInsets.only(left: 15,right: 15),
             height: 50,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(25),
                 color: Colors.grey[200]
             ),
             child: TextField(
               controller: passwordcontroller,
               decoration: InputDecoration(
                 hintText: "password",
                 border: InputBorder.none,
                 fillColor: Colors.blue,
                 icon: Icon(Icons.lock),
               ),
             ),
           ),
           SizedBox(height: 5,),
           Container(
             padding: EdgeInsets.only(left:150 ),
             child: Text("Forgot password?",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold )),
           ),
           SizedBox(height: 5,),
           Container(
             width: double.infinity,
             margin: EdgeInsets.only(left: 45,right: 45),
             height: 50,

             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(25),
               color: Colors.blue,
             ),
             child: FlatButton(onPressed: (){dologin();

             }, child: Text("LOG IN",style: TextStyle(color: Colors.white),),)

             ),
           SizedBox(height: 5,),
           Text("Or connect using",style: TextStyle(color: Colors.grey),),
           SizedBox(height: 5,),
           Row(
             children: [
               Container(
                 width: 150,
                 margin: EdgeInsets.only(left: 45),
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(15),
                    color: Colors.indigoAccent
                  ),
                 child: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.facebook,color: Colors.white), label: Text("Facebook",style: TextStyle(color: Colors.white),)),
               ),
               SizedBox(width: 15,),
               Container(
                 width: 150,
                 margin: EdgeInsets.only(right: 15),
                 decoration: BoxDecoration(

                     borderRadius: BorderRadius.circular(15),
                     color: Colors.redAccent
                 ),
                 child: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.g_mobiledata_rounded,color: Colors.white), label: Text("Google",style: TextStyle(color: Colors.white),)),
               ),
             ],
           ),
           SizedBox(height: 15,),
           Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 const Text('Does not have account?',style: TextStyle(color: Colors.black45),),
                 TextButton(
                   child: const Text(
                     'Sign in',
                     style: TextStyle(fontSize: 20),
                   ),
                   onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => account()),);
                   },
                 )])

],

        ),
      ),
    );
  }
}
