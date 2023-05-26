import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_application/api.dart';
import 'package:flutter_application/user.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UserController extends GetxController{
  //step 1 create instance
  var users = <User>[].obs;
    var searchList = <User>[].obs;

  
  TextEditingController nomtext=TextEditingController();
  TextEditingController prenomtext=TextEditingController();

  TextEditingController editnomtext=TextEditingController();
  TextEditingController editprenomtext=TextEditingController();


  //step 2 create methode


  addUser() async {
    Uri url1=Uri.parse(API.addArtiste);
   
  //   //step 3 create data or assing data
   final userdata = User(
     
      nom:nomtext.text,
      prenom:prenomtext.text,
      
  
    );
    //step 4 post data to api
   try{
    var res= await http.post(url1,
    body:(userdata.toJson()));
    if(res.statusCode==200){
      var result = jsonDecode(res.body);
      
      Get.snackbar("post" , "succefully");
       Aclear();
    
      await getUser();
    }
    }catch(e){
    Get.snackbar("error", "$e");
   }

    }

    getUser()async{
      Uri url2 = Uri.parse(API.getArtiste);
      try{
        var result = await http.get(url2);
        if(result.statusCode==200){
        var data= List<User>.from(
          jsonDecode(result.body).map((e)=>User.fromJson(e))).toList();
        if(data!= null){
          users.value = data;
          // searchList.value=data;
         
        }
      }
    }
    catch(e){
      Get.snackbar("error", "$e");

    }
     update();
 }
 updateUser( id)async{

  Uri url3=Uri.parse("${API.upArtiste}/$id");
  final data = User(
    iduser:id,
   role: editnomtext.text,
   status: editprenomtext.text,
   
  );
 try{
    var resultat = await http.post(url3,
    body:(data.toJson()));
      

     if(resultat.statusCode==200){

        // var res= jsonDecode(resultat.body); 
      //  eclear();
        Get.back();
        var result = jsonDecode(resultat.body);
        await getUser();

      //  var rslt=jsonDecode(resultat.body);

       Get.snackbar("success", "update"); } 
       
       }catch(e){
      Get.snackbar("error", "failed updating");
       }
   
 update();


 }
 deleteUser(id)async{
  Uri url4=Uri.parse("${API.deArtiste}/$id");
  try{
  var res =await http.post(url4,body: {"id":id,});
  if(res.statusCode==200){
  

    await getUser();
    Get.snackbar("delete", "success");
        }

  }
  catch(e){
    Get.snackbar("error", "failed deleting");
    }
  update();

 }
 
  onsortColum(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      if (ascending) {
        searchList.sort(((a, b) =>a.nom!.compareTo(b.nom!) ));
        
      } else {
      
       searchList.sort(((a, b) => b.nom!.compareTo(a.nom!)));
      }
       
    }
    update();
  }

  @override
  void initState() {
  users;
  }

void onTextChanged(String text){
    searchList.clear();
    if(text.isEmpty){
      users.forEach((element) {
        searchList.add(element);
      });
    }
    else{
      users.forEach((element) {
        if(element.nom!.toLowerCase().contains(text) || element.prenom!.toLowerCase().contains(text))
          {
            searchList.add(element);
          }
      });
    }

  
   eclear(){
    editnomtext.clear();
    editprenomtext.clear();
  
  } 



}

  void Aclear() {
      nomtext.clear();
    prenomtext.clear();
  }

  void Annuler() {
      Aclear();
    getUser();
      
  }

  void cancel() {
     Get.back();
  getUser();
  }
        @override
  void onInit() {
    getUser();
    super.onInit();
  }
}







