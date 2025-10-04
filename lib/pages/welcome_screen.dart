import 'package:flutter/material.dart';
import 'package:innobeez/pages/home.dart';
import 'package:innobeez/widgets/navbar.dart';


class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        alignment: Alignment.bottomRight,
        child: SafeArea(
          child: Column(
          
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
            
              SizedBox(height: 20),

              Center(child: Padding(padding: EdgeInsets.all(30), child: Image.asset("C:/Users/vohra/Downloads/innobeez/lib/assets/plus.jpg", height: 150, width: 150,),)),
              SizedBox(height: 50,),
              Center(
                child: Text("", 
                style: TextStyle(
                  color: const Color.fromARGB(255, 77, 133, 247),
                  fontSize: 50,
                  fontWeight: FontWeight.bold

                ),),
                
              ),Center(
                child: Text("Let's Redesign the rural healthcare ecosystem",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color.fromARGB(255, 59, 57, 57),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  
                
                ),),
              ),TextButton(
                
                onPressed: () {
                  // Navigate to the next screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Navbar()),
                  );
                },
                child: Icon(  Icons.arrow_forward_ios, color: const Color.fromARGB(255, 0, 0, 0),size: 30,),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}