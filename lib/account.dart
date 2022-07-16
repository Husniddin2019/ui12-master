import 'package:flutter/material.dart';
class account extends StatefulWidget {
  const account({Key? key}) : super(key: key);

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(


        child: Column(
          children: [
            SizedBox(height: 50,),
            Text("Let's get Started!",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Text("Create you new account PDP",style: TextStyle(fontSize: 15,color: Colors.black54),),
            SizedBox(height: 10,),
            // name
            Container(
              margin: EdgeInsets.only(left: 15,right: 15),
              padding:EdgeInsets.only(left: 15,right: 15),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[200]
              ),
              child: TextField(
                //controller: usernamecontroller,
                decoration: InputDecoration(
                  hintText: "new you email",
                  border: InputBorder.none,
                  fillColor: Colors.blue,
                  icon: Icon(Icons.account_box_outlined),
                ),
              ),
            ),
            SizedBox(height: 5,),
            // email
            Container(
              margin: EdgeInsets.only(left: 15,right: 15),
              padding:EdgeInsets.only(left: 15,right: 15),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[200]
              ),
              child: TextField(
                //controller: passwordcontroller,
                decoration: InputDecoration(
                  hintText: "mail",
                  border: InputBorder.none,
                  fillColor: Colors.blue,
                  icon: Icon(Icons.message_sharp),
                ),
              ),
            ),
            SizedBox(height: 5,),
            //phone
            Container(
              margin: EdgeInsets.only(left: 15,right: 15),
              padding:EdgeInsets.only(left: 15,right: 15),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[200]
              ),
              child: TextField(
                //controller: passwordcontroller,
                decoration: InputDecoration(
                  hintText: "phone",
                  border: InputBorder.none,
                  fillColor: Colors.blue,
                  icon: Icon(Icons.phone),
                ),
              ),
            ),
            SizedBox(height: 5,),
            //password
            Container(
              margin: EdgeInsets.only(left: 15,right: 15),
              padding:EdgeInsets.only(left: 15,right: 15),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[200]
              ),
              child: TextField(
                //controller: passwordcontroller,
                decoration: InputDecoration(
                  hintText: "password",
                  border: InputBorder.none,
                  fillColor: Colors.blue,
                  icon: Icon(Icons.lock_clock_outlined),
                ),
              ),
            ),
            SizedBox(height: 5,),
            //comfirm
            Container(
              margin: EdgeInsets.only(left: 15,right: 15),
              padding:EdgeInsets.only(left: 15,right: 15),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[200]
              ),
              child: TextField(
                //controller: passwordcontroller,
                decoration: InputDecoration(
                  hintText: "Confirm passworm",
                  border: InputBorder.none,
                  fillColor: Colors.blue,
                  icon: Icon(Icons.lock),
                ),
              ),
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
                child: FlatButton(onPressed: (){

                }, child: Text("CREATE",style: TextStyle(color: Colors.white),),)

            ),
            SizedBox(height: 15,),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                   Text('Does not have account?',style: TextStyle(color: Colors.black45),),
                  TextButton(
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => account()),);
                    },
                  )])
          ],

        ),
      ),
    );
  }
}
