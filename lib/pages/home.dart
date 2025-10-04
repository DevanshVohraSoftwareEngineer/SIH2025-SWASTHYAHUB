import 'package:flutter/material.dart';
import 'package:innobeez/homepage/doctor.dart';
import 'package:innobeez/homepage/labtest.dart';
import 'package:innobeez/homepage/medicine.dart';
import 'package:innobeez/homepage/pharmacy.dart';
import 'package:innobeez/pages/getstarted.dart';
import 'package:innobeez/pages/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(189, 209, 216, 1),

      //appbar
      body: SafeArea(
        child: Column(
          children: [
             Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hello,', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                        Text("DEVANSH", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                    ],
                  ),
                  //profile picture
                  Container(
                    
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(189, 209, 216, 1),
                      borderRadius: BorderRadius.circular(12),
                      
                    ),
                    padding: EdgeInsets.all(1),
                    child: TextButton(style: TextButton.styleFrom(backgroundColor: Color.fromRGBO(189, 209, 216, 1)),onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                    }, child: ClipRRect(borderRadius: BorderRadius.circular(12), child: Image.asset('C:/Users/vohra/Downloads/innobeez/lib/assets/selfie.jpg', fit: BoxFit.cover, height: 50, width: 50, ))),),

                ])

              ),
              
            ),
            SizedBox(height: 25,),


            //profile picture(how do you feel?)
            Padding(
              padding: const EdgeInsets.all(2),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey, width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    
                    //animation or image
                    Container(decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.grey[300],
                    )
                      ,child: ClipRRect(child: Image.asset('C:/Users/vohra/Downloads/innobeez/lib/assets/doc.jpg', height: 150, width: 150,), borderRadius: BorderRadius.circular(40),),),
                  
                    //how do you feel
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('HOW CAN I HELP YOU', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                          Text('fill out your medical card right now',textAlign: TextAlign.center, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black, decoration: TextDecoration.underline),),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.grey[900],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: TextButton(
                                  child: Text('Get Started', style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold),),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Getstarted()));
                                  },
                                ),
                              ),
                            ),
                          ),SizedBox(height: 10,),
                          Row(
                            children: [
                              Expanded(child: Text("24/7 Doctor Appointment, Consultancy, lab tests/Diagnosis, Ai Symptom Tracking", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),textAlign: TextAlign.center,)),
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                ),
              ),
            ), SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Colors.grey[100],
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25,),
            //horizontal listview
            Expanded(
              child: Container(
                height: 100,
                child: ListView(
                  
                  scrollDirection: Axis.vertical,
                  children: [
                    TextButton(onPressed: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Doctor()))
                    }, child: Container(
                      width: 450,
                      height: 150,

                      margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          color: Colors.blue[300],
                          borderRadius: BorderRadius.circular(20),
                        
                        ),
                        child: Center(child: TextButton(child: Text('Doctor', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),), onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Doctor()));
                        },)),
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextButton(onPressed: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Medicine()))
                    }, child: Container(
                      width: 450,
                      height: 150,
                      margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          color: Colors.green[300],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(child: TextButton(child: Text('Medicine', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),), onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Medicine()));
                        },)),
                      ),
                    ),SizedBox(height: 10,),
                    TextButton(onPressed: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Pharmacy()))
                    }, child: Container(
                      width: 450,
                      height: 150,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          color: Colors.purple[300],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(child: TextButton(child: Text('Pharmacy', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),), onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Pharmacy()));
                        },)),
                      ),
                    ),SizedBox(height: 10,),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LabTest()));
                    }, 
                      child: Container(
                        width: 450,
                        height: 150,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                          color: Colors.orange[300],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(child: TextButton(child: Text('Lab Test', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),), onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LabTest()));
                        },)),
                      ),
                    ),SizedBox(height: 10,),
                  ],
                ),
              ),
            )
            
          ],
        ),
      ),
    );
  }
}