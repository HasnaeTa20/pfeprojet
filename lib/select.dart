import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application/api.dart';
import 'package:flutter_application/user.dart';
import 'package:flutter_application/usercontroller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


class TitleSelect extends StatefulWidget {
  const TitleSelect({super.key});

  @override
  State<TitleSelect> createState() => _TitleSelectState();
}

class _TitleSelectState extends State<TitleSelect> {


  String? selectedValue;
// users = <User>[].obs;
   List itemList=[];
  // var value="-1";
  //  final contr = Get.put(UserController());
   

 Future getAllItem()async{
     Uri url = Uri.parse(API.getArtiste);
      
        var result = await http.get(url);
        if(result.statusCode==200){
         var jsonData=json.decode(result.body);
      setState(() {
         itemList=jsonData;
        
      });
         
          }
          print(itemList); 
    }
      void initState(){
    
    getAllItem();
     
  }
 






   
  //   var response= await http.get(url as Uri);
  //   if(response.statusCode==200){
  //     var jsonData=json.decode(response.body);
  //     setState(() {
  //        itemList=jsonData;
        
  //     });
       
      
  //   }
  //   print(itemList);
  // }
  // void initState(){
    
  //   getAllItem();
  // }
  @override
  Widget build(BuildContext context) {
      // final user= contr.users;
      
    return Column(
      children: [
  
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                value: selectedValue,
               
                hint: Text("selectionner"),
            
                items: itemList.map((item) {
                  return DropdownMenuItem(
                    child: Text(item['nom']),
                    value: item['nom'],
                    
                    );
                }).toList(),
                 onChanged: (value){
                  setState(() {
                    selectedValue=value as String?;
                  });
                  
                },
                
                
                 
            
            
               
                
                
                ),
                 
            ),
             
    ],

    );
   
                              

      
      
      
      // Container(
      //   height: 78,
      //   decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(8), color: Colors.grey[200]),
      // ),
    // );
  }
}
