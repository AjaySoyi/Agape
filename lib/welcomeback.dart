import 'package:agapenew/forgotpassword.dart';
import 'package:agapenew/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WelcomeBack extends StatefulWidget {
  const WelcomeBack({super.key});

  @override
  State<WelcomeBack> createState() => _WelcomeBackState();
}

class _WelcomeBackState extends State<WelcomeBack> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/welcomeback.png"), fit: BoxFit.cover),
        ),
        child: Padding(
          padding:const EdgeInsets.all(20.0),
          child: Column(
            children: [SizedBox(
              height: 190,
            ),
           const Text('Welcome Back',
           style: TextStyle(fontWeight: FontWeight.w700,fontSize:40 ),
           textAlign: TextAlign.center,),
           const Text('Login to your account',
           style: TextStyle(fontWeight: FontWeight.normal,fontSize:20 ),
           textAlign: TextAlign.center,),
           SizedBox(
            height: 100,
           ),
           Container(
            width: double.infinity,
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                
                 const Text('Username/E-Mail',
                 style: TextStyle(fontWeight: FontWeight.normal,fontSize:20 ),
                 textAlign: TextAlign.left,),
                 TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter username',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))
                  ),
                 ),
                 SizedBox(
                  height:20,
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
                  height: 20,
                 ),

                  SizedBox(
                    

                    
                    width: double.infinity,
                    child: GestureDetector(
                    child: Text('forgot your password?',textAlign: TextAlign.center,),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgotPasssword()));}
                     ),
                     
                     
                    
                  ),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: ElevatedButton(onPressed: ()
                       {Navigator.push(context, MaterialPageRoute(builder:(context)=> const WelcomeBack()));},
                       child: const Text("Login"),
                       style:ElevatedButton.styleFrom(primary: Colors.deepOrange),),
                  ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children:[
                  
                  Text(('Didn\'t have an account')),
                  TextButton(onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUp()));}
                  
                ,child: Text('signup'))
                ])

               ],
             ),
           )

           
          ],
          ), 
      ),
      ),
    );
  }
}