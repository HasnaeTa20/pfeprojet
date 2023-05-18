// // ignore_for_file: prefer_const_constructors

// import 'dart:convert';


// import 'package:flutter/material.dart';
// import 'package:flutter_application/api.dart';
// import 'package:flutter_application/user.dart';
// import 'package:flutter_application/usercontroller.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;

// class CreationArt extends StatefulWidget {
//   const CreationArt({super.key});

//   @override
//   State<CreationArt> createState() => _CreationArtState();
// }

// class _CreationArtState extends State<CreationArt> {
//   var formKey=GlobalKey<FormState>();
//   var nom=TextEditingController();
//   var prenom=TextEditingController();
//     final contr =  Get.put(UserController());

//   //  bool isUpdating = true;
//   //    List<User> selectedEmployees=[];
//     // User selectedEmployee;





   


//   registerAndSave()async
//     {
//       User user = User (
        
//         nom.text.trim(),//nom value go to the nom attribute
//         prenom.text.trim(),
//         1,
      
//       );
//       try{
//         var res= await http.post(
//           Uri.parse(API.addArtiste),
//           body:user.toJson(),
//         );
//         if(res.statusCode==200){
//           var result = jsonDecode(res.body);
//           if(result['success']==true){
//             Fluttertoast.showToast(msg: "save succès.");
//             //  getAll();

//             setState(() {
             
//               nom.clear();
//               prenom.clear();
              

//             });
//           }
//           else{
//             Fluttertoast.showToast(msg: "Erreur,Réessayez.");
//           }
//         }
//       }
//       catch(e)
//       {
//         // ignore: avoid_print
//         print(e.toString());
//         Fluttertoast.showToast(msg: e.toString());
//       }
            
//     }
//       // List <User>  user=[]; 
//       //  var users = <User>[];
//       // List <dynamic>list=[];
//   //  Future  getAll()async {
//   //     try{
//   //       var res = await http.get(Uri.parse(API.getArtiste));
//   //        if(res.statusCode==200){
//   //         // var red = json.decode(res.body);
//   //       var data= List<User>.from(jsonDecode(res.body).map((e)=>User.fromJson(e))).toList();
//   //      setState(() {
//   //        users=data;
//   //      });
//   //       print("lenght:${users.length}");
//   //     }
//   //   }catch(e){
//   //     print(e);

//   //   }




  
//     // var res= await http.get(Uri.parse(API.getArtiste));

//     // if(res.statusCode==200){
//     //   var red = json.decode(res.body);

//     //   setState(() {
//     //     user.addAll(red);
//     //     // list.addAll(red);
//     //   });
//     //   print(user);
//     //   print("lenght:${user.length}");
//     // }

//     // }   
// // updateArt()async{
// //   var response=await API.updateArtiste(nom.text, prenom.text);
// //   if(response!= null){
// //    list.clear();
// //     for(var i in response){
// //       setState(() {
// //         list.add(User.fromJson(i));
// //       });
// //     }
// //   }
// //   else{
// //     setState(() {
// //       isUpdating=true;
// //     });
// //   }
// // }

//   //   updateArt(User user) {
//   //     setState(() {
//   //       isUpdating=true;
//   //     });
  
//   //   API.updateArtiste(
//   //            nom.text,prenom.text)
//   //       .then((result) {
//   //     if ('success' == result) {
//   //      getAll();
//   //       setState(() {
//   //         isUpdating = false;
//   //       });
//   //       clearValues();
//   //     }
//   //   });
//   // }
//      setValues(User user) {
//     nom.text = user.nom;
//     prenom.text = user.prenom;
//     // setState(() {
//     //   isUpdating = true;
//     // });
//   }
     
//       clearValues() {
//    nom.text = '';
//    prenom.text = '';
//   }


//      SingleChildScrollView dataBody() {
//        final user= contr.users;
//       return SingleChildScrollView(
//          scrollDirection: Axis.vertical,
//       child: SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: DataTable(
//           columns: const [
//             DataColumn(
//                 label: Text("Nom"),),
//                 DataColumn(
//                 label: Text("Prenom"),
//                 ),
//                 ],
          
//           rows: user
//             .map((useer)=>
//              DataRow(cells:
//                  [
//                   DataCell(
//                     // Text("${useer["nom"]}"),
//                      Text(useer.nom),
//                      onTap: () {
//                         // print("Tapped " + employee.firstName);
//                         setValues(useer);
//                         // _selectedEmployee = employee;
//                       },
//                     ),
//                   DataCell(
//                     // Text("${useer["prenom"]}"),
//                       Text(useer.prenom),
//                      onTap: () {
//                         // print("Tapped " + employee.firstName);
//                         setValues(useer);
//                         // _selectedEmployee = employee;
//                       },
//                     ),
//                  ]
//                  ),
//                  )
//                  .toList(),
             
//               ),
//               ),
   
//       );

//    }
       
     













//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           actions: <Widget>[
    
//           IconButton(
//             icon: Icon(Icons.refresh),
//             onPressed: () {
//               // getAll();
//             },
//           ),
//           ]
//       ),
      
//       body:
//       Column(
//         key: formKey,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Padding(
//             padding: EdgeInsets.all(20.0),
//             child: TextField(
              
//               controller: nom,
//               decoration: InputDecoration.collapsed(
//                 hintText: "nom",
//               ),
//             ),
//           ),
//             Padding(
//             padding: EdgeInsets.all(20.0),
//             child: TextField(
            
//               controller: prenom,
//               decoration: InputDecoration.collapsed(
//                 hintText: "prenom",
//               ),
//             ),
//           ),
//           // isUpdating?
//           // Row(
//           //           children: <Widget>[
//           //             TextButton(
//           //               child: Text('UPDATE'),
//           //               onPressed: () {
//           //                 // updateArt();
//           //               },
//           //             ),
//           //            TextButton(
//           //               child: Text('CANCEL'),
//           //               onPressed: () {
//           //                 setState(() {
//           //                   isUpdating=false;
//           //                 });
//           //                 clearValues();
                          
//           //               },
//           //             ),
//           //           ],
//           //         )
//           //         :Container(),
//            Expanded(
//             child: dataBody(),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           registerAndSave();
       
      
      
//         },
//         child: Icon(Icons.add),
//       ),
      
      
      
                    
//    );
//   }
// }











    //         child:
    //         Obx((){
    //           return ListView.builder(
    //  itemCount: contr.users.length,
    //  itemBuilder: (context, index) {
    //    return Column(
    //      children: [
    //        const SizedBox(
    //          height: 10,
    //        ),
    //        Container(
    //            margin: const EdgeInsets.only(left: 20, right: 20),
    //            padding: const EdgeInsets.only(left: 20),
    //            height: 80,
    //            width: MediaQuery.of(context).size.width,
    //            decoration: BoxDecoration(
    //                color: Colors.white,
    //                borderRadius: BorderRadius.circular(20)),
    //            child: Row(
    //              children: [
               
    //                Column(
    //                  crossAxisAlignment: CrossAxisAlignment.start,
    //                  mainAxisAlignment: MainAxisAlignment.center,
    //                  children: [
    //                    Text(
    //                        contr
    //                            .users[index].nom!,
    //                        style: const TextStyle(
    //                            color: Colors.black, fontSize: 18)),
    //                    Text(
    //                        contr.users
    //                            [index].prenom!,
    //                        style: const TextStyle(
    //                            color: Colors.black, fontSize: 18)),
    //                  ],
    //                ),
    //              ],
    //            )
    //            ),
    //        const SizedBox(
    //          height: 10,
    //        )]);
    //           }
      
                
    //           );