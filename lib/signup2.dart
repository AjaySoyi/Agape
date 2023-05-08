import 'package:agapenew/loginscreen.dart';
import 'package:agapenew/welcomeback.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignUp2 extends StatefulWidget {
  const SignUp2({super.key});

  @override
  State<SignUp2> createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/login1.png"), fit: BoxFit.cover),
        ),

        child: Padding(
        padding:  const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 90,
            ),

           const Text('Welcome',
           style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold),
            textAlign:TextAlign.start,),

            const Text('Hello there,sign up to continue!',
           style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color: Colors.black38),
            textAlign:TextAlign.start,),

            SizedBox(
              height: 50,
            ),

            const Text('Name',
                 style: TextStyle(fontWeight: FontWeight.normal,fontSize:20 ),
                 textAlign: TextAlign.left,),
                 TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your name',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))
                  ),
                 ),

                 
            SizedBox(
              height: 30,
            ),

            const Text('Email address',
                 style: TextStyle(fontWeight: FontWeight.normal,fontSize:20 ),
                 textAlign: TextAlign.left,),
                 TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter email address',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))
                  ),
                 ),

                       
            SizedBox(
              height: 30,
            ),

            const Text('Password',
                 style: TextStyle(fontWeight: FontWeight.normal,fontSize:20 ),
                 textAlign: TextAlign.left,),
                 TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))
                  ),
                 ),

                 SizedBox(
              height: 30,
            ),
             const Text('  By creating an account you agree to our',
                       style: TextStyle(fontWeight: FontWeight.normal,fontSize:20,color: Colors.black38 ),
                       textAlign: TextAlign.left,),
                       const Text('  Terms & conditions',
                 style: TextStyle(fontWeight: FontWeight.normal,fontSize:20,color: Colors.deepOrange ),
                 textAlign: TextAlign.left,),

                 SizedBox(
                  height: 20,
                 ),

                     Container(
                      width: double.infinity,
                       child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   
                     
                                  SizedBox(
                                    width:300 ,
                                    height:40,
                                    child: ElevatedButton(onPressed: ()
                                          {Navigator.push(context, MaterialPageRoute(builder:(context)=> const WelcomeBack()));},
                                          child: const Text("      Sign in         ",
                                          style: TextStyle(color: Colors.white,fontSize: 20),),
                                          style:ElevatedButton.styleFrom(
                                            primary: Colors.deepOrange,
                                            shape:RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(30)),),
                                          ),
                                  ),
                                 ],
                               ),
                     ),

                      Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children:[
                    
                  
                  Text(('Already have an account?'),style: TextStyle(fontSize: 18),),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));} ,
                      child: Text('Login'))
                ])


          


                 
                 



          ],
        ),

      
        ),

      ) ,
      
    );
  }
}