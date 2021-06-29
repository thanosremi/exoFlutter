import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:hnapp/personne.dart';

class DataBDD{

    Future creationBDD() async{
      try{
        print(await getDatabasesPath());
          openDatabase(
            join(await getDatabasesPath(), 'mesAmis.db'),
            onCreate: (db, version){
            return db.execute('CREATE TABLE ami(id INTEGER PRIMARY KEY AUTOINCREMENT, nom TEXT, prenom TEXT, age INTEGER, dateNaissance TEXT, ville TEXT, numTel TEXT, passions TEXT, facebook TEXT, twitter TEXT, insta TEXT)');
          },
          version: 1,
        );
      }catch(error){
        print(error.toString());
        return null;
      }
    }


  Future<List<Personne>> recupBDD() async{     
        final database = openDatabase(
            join(await getDatabasesPath(), 'mesAmis.db'),
          version: 1,
        );
        
        final db = await database;
        final List<Map<String, dynamic>> maps = await db.query('ami');

        return List.generate(maps.length, (i){
          return Personne(
            id: maps[i]['id'],
            nom: maps[i]['nom'],
            prenom: maps[i]['prenom'],
            age: maps[i]['age'],
            ville: maps[i]['ville'],
            numTel: maps[i]['numTel'],
            passions: maps[i]['passions'],
            facebook: maps[i]['facebook'],
            twitter: maps[i]['twitter'],
            insta: maps[i]['insta'],
            );
        });
    }


        Future<void> insertBDD(Personne p) async{
      try{
        final database = openDatabase(
            join(await getDatabasesPath(), 'mesAmis.db'),
          version: 1,
        );
        
        final db = await database;
        await db.insert(
          'ami', 
          p.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace,          
          );
      }catch(error){
        print(error.toString());
        return null;
      }
    }

}