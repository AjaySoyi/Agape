import 'package:agapenew/signup2.dart';
import 'package:agapenew/welcomeback.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold( body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/login1.png"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
             
              children: [
                SizedBox(
                  height:122,
                ),
                const Text(
                  'Sign Up',
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.start,
                ),
                const Text(
                  'it\'s easier to sign up now',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                  
                ),
                //TextFormField(),
                //TextFormField(),
                SizedBox(
                  height:170,
                ),
                Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  
                      
                    SizedBox(
                      height: 50,
                      width: 270,
                      child: ElevatedButton(onPressed: ()
                       {Navigator.push(context, MaterialPageRoute(builder:(context)=> const WelcomeBack()));},
                       child: const Text("      Continue with google      ",
                       style: TextStyle(color: Colors.white,fontSize: 20),),
                       style:ElevatedButton.styleFrom(primary: Colors.deepOrange,shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                       ),
                    ),

                     SizedBox(
                      height: 10,
                     ),

                     OutlinedButton(style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        width:1,
                        color: Colors.black87),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),),
                        
                     onPressed: () {Navigator.push(context, MaterialPageRoute(builder:(context)=> const SignUp2()));}, 
                     child: const Text('   I will use email or phone instead   ',
                     style: TextStyle(color: Colors.black87),))
                  ],
                ),

                SizedBox(
                      height: 170,
                    ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children:[
                    
                  
                  Text(('Already have an account?'),style: TextStyle(fontSize: 18),),
                  TextButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUp()));}
                  
                ,child: Text('Sign up'))
                ])
                
              ]),
        ),
      ),

    );
  }
}
