import 'package:flutter/material.dart';
import 'package:hnapp/interBDD.dart';
import 'package:hnapp/personne.dart';


class MemoTech extends StatelessWidget {
  const MemoTech({ Key? key, }) : super(key: key);

  // final DataBDD? db;

  @override
  Widget build(BuildContext context) {   
    // return new Scaffold(  
    //       body: FutureBuilder<List<Personne>>(
    //         future: db?.recupBDD(),
    //         builder: (BuildContext context, AsyncSnapshot<List<Personne>> snapshot){
    //           if (snapshot.hasData) {
    //             return ListView.builder(
    //               itemCount: snapshot.data?.length,
    //               itemBuilder: (BuildContext context, int index) {
    //         return new GestureDetector( //You need to make my child interactive
    //           onTap: () => print(snapshot.data?[index].nom),
    //           child: new Card( //I am the clickable child
    //             child: new Column(
    //               children: <Widget>[
    //                 //new Image.network(video[index]),
    //                 new Padding(padding: new EdgeInsets.all(3.0)),
    //                 new Text(snapshot.data![index].nom.toString(),
    //                   style: new TextStyle(fontWeight: FontWeight.bold,
    //                       color: Colors.white),
    //                 ),


    //               ],
    //             ),),
    //         );
    //       }
    //             );
    //           }
    //         }
    //         )

    // );
    return Container(
      child: Column(children: [
        Align(
          alignment: Alignment.center,
          child: TextButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), minimumSize: MaterialStateProperty.all<Size>(Size(180.0,80.0),),),
            onPressed: () async{
              //await DataBDD().signIn();
              var p1 = Personne(nom: 'Dupont', prenom: 'Jacques', age: 30, ville: 'Paris', numTel: '0135687546', passions: 'Boxe', facebook: 'test', twitter: 'test2', insta: 'test3');
              var p2 = Personne(nom: 'Londa', prenom: 'Paul', age: 45, ville: 'Lyon', numTel: '0135687546', passions: 'lecture', facebook: 'testB', twitter: 'testB2', insta: 'testB3');
              var p3 = Personne(nom: 'Mero', prenom: 'Martin', age: 32, ville: 'Marseilles', numTel: '0135567854', passions: 'Cinema', facebook: 'testC', twitter: 'testC2', insta: 'testC3');

              await DataBDD().insertBDD(p3);

              List<Personne> pe = await DataBDD().recupBDD();

              for (var items in pe) {
                print('Nom:' + items.nom);
              }
              print(pe[0].nom);
            },
            child: Text("Ajouter", style: TextStyle(color: Colors.white),),
        ),),

      
      ],),
      

    );
  }
}