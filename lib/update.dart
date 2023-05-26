// ignore_for_file: prefer_const_constructors

// import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:flutter_application/user.dart';

import 'package:flutter_application/usercontroller.dart';

import 'package:get/get.dart';

class UpdateUseer extends StatelessWidget {
    UpdateUseer({
  super.key,required this.user
  });
    User user;

  @override
  Widget build(BuildContext context) {
      final contoller = Get.find<UserController>();

      
      
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
       children: [
         Text("Modifier",
         style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color:Color.fromARGB(255, 23, 69, 128),),),
           
              const SizedBox(height: 30,),
              
              TextFormField(
                controller:contoller.editnomtext,
                decoration: InputDecoration(
                
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Color.fromARGB(255, 20, 60, 92),),
                                    hintText: "nom..."
                                    ),
                                    
                                    ),

                                     const SizedBox(height: 30,),
                                    TextFormField(
                                      controller: contoller.editprenomtext,
                decoration: InputDecoration(
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    color: Color.fromARGB(255, 20, 60, 92),),
                                    hintText: "prenom..."
                                    )),
                                     const SizedBox(height: 30,),
                                     Center(
                                       child: Row(children:[
                                       
                                                                         Padding(
                                                                           padding: const EdgeInsets.only(left: 700),
                                                                           child: InkWell(
                                                                                                                   onTap: ()async{
                                                                                                                     
                                                                                                                     contoller.updateUser(user.iduser!);
                                                                                                                   },
                                                                                                                   child: Container(
                                                                                                                     decoration: BoxDecoration(color:Color.fromARGB(255, 65, 255, 7),
                                                                                                                     borderRadius: BorderRadius.circular(12)),
                                                                                                                     alignment: Alignment.center,
                                                                                                                     height: 50,
                                                                                                                     width: 100,
                                                                                                                     child: const Text("modifier",
                                                                                                                     style: TextStyle(
                                                                                             color: Colors.white,
                                                                                             fontSize: 20,
                                                                                             fontFamily:'Andalus',
                                                                                           ),
                                                                                                                     ),
                                                                                                                   ),
                                                                             ),
                                                                         ),
                                                                         
                                       const SizedBox(width: 30,),
                                      Padding(
                                        padding: const EdgeInsets.only(right: 20),
                                        child: InkWell(
                                            onTap: ()async{
                                              
                                              contoller.cancel();
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(color:Color.fromARGB(255, 230, 7, 255),
                                              borderRadius: BorderRadius.circular(12)),
                                              alignment: Alignment.center,
                                              height: 50,
                                              width: 100,
                                              child: const Text("annuler",
                                              style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20,
                                                          fontFamily:'Andalus',
                                                        ),),
                                            ),
                                                                             ),
                                      ),
                                     ]),
                                     )
            ]),
    );
     

   
  }
}









        
             
    
    // return Scaffold(
    //   body: Column(children: [
    //     Container(
    //       height: MediaQuery.of(context).size.height/2.5,
    //       width: double.infinity,
    //       color: Colors.grey.shade300,
    //       child: Column(children: [
    //         const SizedBox(height: 12,),
            
    //         TextFormField(
    //           controller:contoller.editnomtext,
    //           decoration: InputDecoration(
              
    //                             prefixIcon: const Icon(
    //                               Icons.person,
    //                               color: Color.fromARGB(255, 20, 60, 92),),
    //                               hintText: "nom..."
    //                               ),
                                  
    //                               ),
    //                               TextFormField(
    //                                 controller: contoller.editprenomtext,
    //           decoration: InputDecoration(
    //                             prefixIcon: const Icon(
    //                               Icons.person,
    //                               color: Color.fromARGB(255, 20, 60, 92),),
    //                               hintText: "prenom..."
    //                               )),
    //                               InkWell(
    //                                 onTap: ()async{
                                      
    //                                   contoller.updateUser(user.id!);
    //                                 },
    //                                 child: Container(
    //                                   decoration: BoxDecoration(color:Colors.amber,
    //                                   borderRadius: BorderRadius.circular(12)),
    //                                   alignment: Alignment.center,
    //                                   height: 50,
    //                                   width: 200,
    //                                   child: const Text("update"),
    //                                 ),
    //                               )
    //       ]),)
    //   ],),

    // );  
      
                    
  