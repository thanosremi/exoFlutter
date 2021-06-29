import 'package:flutter/material.dart';

class Personne{
  final int? id;
  final String nom;
  final String prenom;
  final int age;
  final String ville;
  final String numTel;
  final String passions;
  final String facebook;
  final String twitter;
  final String insta;

  Personne({
    this.id,
    required this.nom,
    required this.prenom,
    required this.age,
    required this.ville,
    required this.numTel,
    required this.passions,
    required this.facebook,
    required this.twitter,
    required this.insta,
  });

  Map<String, dynamic> toMap(){
    return{
        'id' : id,
        'nom' : nom,
        'prenom' : prenom,
        'age' : age,
        'ville' : ville,
        'numTel' : numTel,
        'passions' : passions,
        'facebook' : facebook,
        'twitter' : twitter,
        'insta' : insta,
    };
  }

}