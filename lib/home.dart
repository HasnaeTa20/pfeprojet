// ignore_for_file: prefer_const_constructors

// import 'dart:convert';


import 'package:flutter/material.dart';
import 'package:flutter_application/select.dart';
import 'package:flutter_application/update.dart';
import 'package:flutter_application/user.dart';

import 'package:flutter_application/usercontroller.dart';

import 'package:get/get.dart';


class CreationArt extends StatefulWidget {
  

 CreationArt({super.key});

  @override
  State<CreationArt> createState() => _CreationArtState();
}

class _CreationArtState extends State<CreationArt> {
  var formKey=GlobalKey<FormState>();
  final contr = Get.put(UserController());
 
  bool sort = true;

  var isObscure=true.obs;
  TextEditingController controller = TextEditingController(); 






  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
      body:Stack(children: <Widget> [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              
              // FloatingActionButton(onPressed: (){ setValues();
              // },child:(Icon(Icons.add)),
             
              // ),
              // FloatingActionButton(onPressed: ()async{await contr.updateUser(select);},child:(Icon(Icons.edit))),
              
              TextButton(onPressed: ()async{await contr.addUser();}, child: Text('Enregistrer')),
              TextButton(onPressed: ()async{contr.Annuler();}, child: Text('Annuler')),

               








              

            ],),
          
            Column(
      
        key: formKey,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          
        
          Padding(
            padding: EdgeInsets.all(20.0),
            child: 
          
              TextFormField(
              
              validator:(val)=> val  == "" ?"s'il vous plaît ecrire votre nom ":null,
              controller: contr.nomtext ,
              decoration: InputDecoration.collapsed(
                hintText: "nom",
              ),
            ),
          ),
            Padding(
            padding: EdgeInsets.all(20.0),
            child: TextFormField(
              validator:(val)=> val  == "" ?"s'il vous plaît ecrire votre nom ":null,
            
              controller:contr.prenomtext,
              decoration: InputDecoration.collapsed(
                hintText: "prenom",
              ),
            ),
          ),
           TitleSelect(),
         TextField(
                          controller: controller,
                          decoration: InputDecoration(
                              hintText: "Enter something to filter"),
                          onChanged: (value) {
                            setState(() {
                            //  contr.users = contr.users!.where((element) =>element.nom!.contains(value)) .toList();
                            });}),
          
           Expanded(
          
             child: Obx(() {
            final user= contr.users;
           
         
      
      return SingleChildScrollView(
        
         scrollDirection: Axis.vertical,
         
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        
        child:
           Padding(
             padding:  EdgeInsets.fromLTRB(50, 50, 50, 100),
             child: DataTable(   
               columnSpacing: 150,
                    //  horizontalMargin: 12,
                    
                     border:  TableBorder(
                     top: BorderSide(width: 2, color: Color.fromARGB(255, 128, 165, 210)),
                     bottom: BorderSide(width: 2, color:Color.fromARGB(255, 128, 165, 210)),
                     verticalInside: BorderSide(width: 2,color: Color.fromARGB(255, 128, 165, 210)),
                     right: BorderSide(width:2, color: Color.fromARGB(255, 128, 165, 210)),
                     left: BorderSide(width:2, color: Color.fromARGB(255, 128, 165, 210)),
                     ),
              
                     columns:  [
              DataColumn(
                  label: Text("Nom",
                  style: TextStyle(
                     color: Color.fromARGB(255, 10, 41, 96),
                      fontSize: 20,
                      fontFamily:'Andalus',
                  ),
                  textAlign: TextAlign.center,
                  ),
                   onSort: (int columnIndex,bool ascending){
                    setState(() {

                               sort = sort;
                              });
                            contr.onsortColum(columnIndex, ascending);

                   }
                  ),
                  DataColumn(
                  label: Text("Prenom",
                  style:TextStyle(
                    color: Color.fromARGB(255, 10, 41, 96),
                      fontSize: 20,
                      fontFamily:'Andalus',
           
                  ) ,
                    textAlign: TextAlign.center,
                  
                  ),
           
                  ),
                   DataColumn(
                  label: Text('',
                 
                  ),
                  
                  ),
                    DataColumn(
                  label: Text(''),
                  ),
                  
                  ],
               
           
                     rows: user
              .map((user)  =>
               DataRow(cells:
                   [
                    
                    DataCell(
                     
                       Text(user.nom!),
                      //  onTap: () {
                        //  contr.editnomtext.text=user.nom!;
                        //  contr.editprenomtext.text=user.prenom!;
                          // contr.showvalues(user);
                          // select=user.id;
                         
                        // Get.to(()=>UpdateUseer());
                        // contr.editnomtext.text=user.nom!;
                        //  contr.editnomtext.text=user.prenom!;
           
                    //  },
                     
                      ),
                    DataCell(
                     
                        Text(user.prenom!),
                        //  onTap: () {
                          //  contr.editprenomtext.text=user.prenom!;
                          //  contr.editnomtext.text=user.nom!;
                          // contr.showvalues(user);
                          // select=user.id;
                          // print("$select");
           
                        //    Get.to(()=>UpdateUseer());
                        // contr.editnomtext.text=user.prenom!;
                        //  contr.editnomtext.text=user.nom!;
                         
                    //  },
                        
                       
                      ),
                   
                        DataCell(
                          CircleAvatar(
                  radius: 20,
                  backgroundColor:  Color.fromARGB(255, 160, 248, 149),
                      child:  IconButton(icon: Icon(Icons.edit,color: Colors.green
                        //  backgroundColor: const Color.fromARGB(255, 233, 163, 158),
                          ),
                         onPressed: () async{  
                          showDialog(context: context, builder: (context)=>Dialog(child:UpdateUseer(user: user,) ,));
                          // Get.to(()=>UpdateUseer(user: user,));
                          contr.editnomtext.text=user.nom!;
                          contr.editprenomtext.text=user.prenom!;
                          contr.update();
                         },
                      ),),
                      ),
                         DataCell(
                               CircleAvatar(
                        radius: 20,
                         backgroundColor: const Color.fromARGB(255, 233, 163, 158),
                       child: IconButton(icon: Icon(Icons.delete,color: Colors.red,),
                         onPressed: () async{  contr.deleteUser(user.id.toString());
                          contr.update();
                         },
                      ),),
                      ),
                      
                      
                   ]
                   ),
                   )
                   .toList(),
               
                 ),
           )));
        }
              
             ),  ),
            //  FloatingActionButton(onPressed: ()async{await contoller.updateUser(select);},child:(Icon(Icons.edit))),






















    //         }) 
           
         
        ],
      ),
     

     
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async{
      //     // registerAndSave();
      //     await contr.addUser();
       
      
      
      //   },
      //   child: Icon(Icons.add),
      // ),
      
      
      
                    
    ],
    
    )
    ) ;
  }
}














 



  
   



     
  //     clearValues() {
  //       controller.nom.text='';
  //       controller.prenom.text='';
  
  
  // }










    //  SingleChildScrollView dataBody() {
  
    //      final user= contr.users;
      
    //   return SingleChildScrollView(
    //      scrollDirection: Axis.vertical,
    //   child: SingleChildScrollView(
    //     scrollDirection: Axis.horizontal,
    //     child:
    //        DataTable(
    //       columns: const [
    //         DataColumn(
    //             label: Text("Nom"),),
    //             DataColumn(
    //             label: Text("Prenom"),
    //             ),
    //             ],
             

    //       rows: user
    //         .map((user)  =>
    //          DataRow(cells:
    //              [
    //               DataCell(
                   
    //                  Text(user.nom!),
                   
    //                 ),
    //               DataCell(
                   
    //                   Text(user.prenom!),
                     
    //                 ),
    //              ]
    //              ),
    //              )
    //              .toList(),
             
    //   )));
    //     }
              
     
   