

class User {
  int? iduser;
  String? nom;
  String? prenom;
  String? username;
  String? email;
  String? password;
  String? role;
  String? status;
 


  User({this.iduser, this.nom, this.prenom,this.username,this.email,this.password,this.role,this.status});

  User.fromJson(Map<String, dynamic> json) {
    iduser = int.parse(json['iduser']);
    nom = json['nom'];
    prenom = json['prenom'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
    role = json['role'];
    status = json['status'];
  }

  Map <String,dynamic> toJson(){
   return {
    "iduser":iduser.toString(),
    "nom":nom,
    "prenom":prenom,
    "username":username,
    "email":email,
    "password":password,
    "role":role,
    "status":status,
       
 
};
}
}








