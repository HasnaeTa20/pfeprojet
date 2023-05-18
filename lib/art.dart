class art {
  int? id;
  int? userid;
  String? nom;
  String? prenom;

  art({this.id, this.userid, this.nom, this.prenom});

  art.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userid = json['userid'];
    nom = json['nom'];
    prenom = json['prenom'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userid'] = this.userid;
    data['nom'] = this.nom;
    data['prenom'] = this.prenom;
    return data;
  }
}