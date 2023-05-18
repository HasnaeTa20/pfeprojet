// class User {
//   //step 1 create data types variabale
 
//   String? nom,prenom;
//    int? id;
// //step 2 create constructor
//  User({
//   this.nom,
//   this.prenom,
//   this.id}
//  );
//  //step 3 create from json methode

//  factory User.fromJson(Map <String, dynamic> json) {
//   return User(
//   // int.parse(json['id']),
//   // json['nom'],
//   // json['prenom'],
  
//   nom:json["nom"],
//   prenom:json["prenom"],
//   id:json["id"]
//   );
//  }


//   Map <String,dynamic> toJson(){
//    return {
//   // "id":id.toString(),
 
//            "nom":nom,
//           "prenom":prenom,
//           "id":id
 
// };

//   } 
 
// }






class User {
  int? id;
  String? nom;
  String? prenom;

  User({this.id, this.nom, this.prenom});

  User.fromJson(Map<String, dynamic> json) {
    id = int.parse(json['id']);
    nom = json['nom'];
    prenom = json['prenom'];
  }

  // Map<String, dynamic> toJson() {
  //   // final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data["id"] = this.id;
  //   data["nom"] = this.nom;
  //   data["prenom"] = this.prenom;
  //   return data;
  // }
  Map <String,dynamic> toJson(){
   return {
    "id":id.toString(),
           "nom":nom,
          "prenom":prenom,
         // "id":id
 
};
}
}