import 'package:flutter/cupertino.dart';
import 'package:ouds_app/emploiDutempsEtudiant.dart';
import 'college.dart';
import 'emploiDutempsProf.dart';
import 'FadeAnimation.dart';
import 'package:flutter/material.dart';


class login extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<login> {
  @override
  List <bool> _selections = List.generate(2, (_) => false);
  bool isEnseignant;
  bool isEleve;
  String idEnseignant = "Veuillez entrer votre identifiant d'enseignant";
  String idEtudiant = "Veuillez entrer votre numéro d'étudaint";
  final myControlleridentifiant = TextEditingController();
  final myControllermdp = TextEditingController();

  void dispose() {
    // Clean up the controller when the widget is disposed.
    myControlleridentifiant.dispose();
    myControllermdp.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/background.png'),
                          fit: BoxFit.fill
                      )
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 30,
                        width: 80,
                        height: 200,
                        child: FadeAnimation(1, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/light-1.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        left: 140,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(1.3, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/light-2.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        right: 40,
                        top: 40,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(1.5, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/clock.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        child: FadeAnimation(1.6, Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Center(
                            child: Text("Connexion", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                          ),
                        )),
                      ),
                ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(20.0),
                    child : ToggleButtons (
                      //size : 50.0,
                     /* fillColor: Color.fromRGBO(143, 148, 251, 1),
                      highlightColor: Color.fromRGBO(143, 148, 251, 1),
                      selectedBorderColor: Color.fromRGBO(143, 148, 251, 1),
                      *///selectedColor: Color.fromRGBO(143, 148, 251, 1),
                      children : <Widget>[

                         Text("   Enseignant   ", textScaleFactor: 1.5,)
                        ,

                           // Icons.account_circle_rounded,

                            //Text (child: Text('Enseignant')),
                        Text(
                          ("     Etudiant     ") ,textScaleFactor: 1.5,),

],

                      isSelected : _selections,
                        onPressed: (int index){
                        setState(() {
                          _selections[index] != _selections[index];
                          if(index == 0){
                            isEnseignant = true;
                            isEleve = false;
                            showDialog(
                                barrierDismissible : true,
                                context: context,
                                builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Center(child: Text("Veuillez entrer votre identifiant")),
                                content: Stack(
                                overflow: Overflow.visible,
                                children: <Widget>[
                                Positioned(
                                right: -40.0,
                                top: -40.0,
                                child: InkResponse(
                                onTap: () {
                                Navigator.of(context).pop();
                                },
                               /* child: CircleAvatar(
                                child: Icon(Icons.close),
                                backgroundColor: Colors.red,
                                ),*/
                                ),
                                ),
                                Form(
                                child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                               /*   Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('Identifiant'),

                                  ),*/
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextFormField(),
                                ),

                                Padding (
                                padding: EdgeInsets.all(8.0),
                                child: FlatButton.icon(
                                label: Text ("Se connecter"),
                                  textColor:  Colors.white,
                                  color: Color.fromRGBO(143, 148, 251, 1),
                                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                                icon: Icon(Icons.login),
                                onPressed: () {
                                    Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => emploiDutempsProf()),);},

                                   ),

                                )
                                ],
                                ),
                                ),
                                ],
                                ),
                                );
                                });
                                };
                           // print ("l'enseignant est séléctionné $isEnseignant");
/*
                            showCupertinoDialog(context: context, builder: (_) =>
                                AlertDialog(
                                  title: Text ('Bonjour professeur, veuillez entrer vos identifiants.',),
                                  backgroundColor: Color.fromRGBO(143, 148, 251, 1),

                                  titleTextStyle: TextStyle(color: Colors.white) ,

                                ),

                            );

*/

                            if  (index == 1){
                          isEleve = true;
                          isEnseignant = false ;
                          showDialog(
                              barrierDismissible : true,
                              context: context,
                              builder: (BuildContext context) {
                              return AlertDialog(
                              title: Center(child: Text("Veuillez entrer vos informations")),
                              content: Stack(
                              overflow: Overflow.visible,
                              children: <Widget>[
                              Positioned(
                              right: -40.0,
                              top: -40.0,
                              child: InkResponse(
                              onTap: () {
                              Navigator.of(context).pop();
                              },
                             /* child: CircleAvatar(
                              child: Icon(Icons.close),
                              backgroundColor: Colors.red,
                              ),*/
                              ),
                              ),
                              Form(
                              child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                                              padding: EdgeInsets.all(10.0),
                                                              child: Text('Nom'),

                                                            ),
                              Padding(
                              padding: EdgeInsets.all(8.0),
                              child: TextFormField(),
                              ),
                              Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Prénom'),

                              ),
                              Padding(
                              padding: EdgeInsets.all(8.0),
                              child: TextFormField(),
                              ),

                              Padding (
                              padding: EdgeInsets.all(8.0),
                              child: FlatButton.icon(
                              label: Text ("Se connecter"),
                              textColor:  Colors.white,
                              color: Color.fromRGBO(143, 148, 251, 1),
                              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                              icon: Icon(Icons.login),
                              onPressed: () {
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context) => emploiDutempsEtudiant()),);},

                              ),

                              )
                              ],
                              ),
                              ),
                              ],
                              ),
                              );
                              });
                              };
                          print ("l'élève est sélectionné $isEleve $isEnseignant");
                        /*  showCupertinoDialog(context: context, builder: (_) =>
                              AlertDialog(
                                backgroundColor: Color.fromRGBO(143, 148, 251, 1),
                                titleTextStyle: TextStyle(color: Colors.white) ,
                                title: Center(child: Text("Salut ! Entre ton numéro d'étudiant."),


                               // title: Text (),
                                 // centerTitle: true,



                                //titlePadding: Alignment.center(0.0,0.0),

                              ),
                              ),
                            barrierDismissible : true,
                          );

*/
                        });
                        },
                      //selectedColor: Colors.green,

                      //borderColor: Colors.amberAccent,
                      renderBorder: true,


                      color: Colors.grey,

                      selectedColor: Colors.red,

                      fillColor: Colors.lightBlueAccent,),

                    ),
               Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(1.8, Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10)
                              )
                            ]
                        ),
                        /*  child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[100]))
                              ),

                              child: TextField(
                                controller: myControlleridentifiant,
                                decoration: InputDecoration(

                                    border: InputBorder.none,
                                    hintText: "Identifiant",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                controller: myControllermdp,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Mot de passe",
                                    hintStyle: TextStyle(color: Colors.grey[400])

                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                      SizedBox(height: 30,),
                      FadeAnimation(2, Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(143, 148, 251, 1),
                                  Color.fromRGBO(143, 148, 251, .6),
                                ]
                            )
                        ),*/
                        child: Center(
                          child: FlatButton(
                            onPressed: (){
                            /*  if (isEleve || isEnseignant) {

                                  if (isEnseignant){idEnseignant = myControlleridentifiant.text;
                                          showCupertinoDialog(context: context, builder: (_) =>
                                          AlertDialog(
                                          backgroundColor: Color.fromRGBO(143, 148, 251, 1),
                                          titleTextStyle: TextStyle(color: Colors.white) ,
                                          title: Center(child: Text("Bonjour $idEnseignant !")))
                                          );
                                   }

                                  else {idEtudiant = myControlleridentifiant.text;
                                          showCupertinoDialog(context: context, builder: (_) =>
                                          AlertDialog(
                                          backgroundColor: Color.fromRGBO(143, 148, 251, 1),
                                          titleTextStyle: TextStyle(color: Colors.white) ,
                                          title: Center(child: Text("Salut $idEtudiant !")))
                                          );
                                  };
                              }*/
                             /* if (isEleve== null || isEnseignant==null){showCupertinoDialog(context: context, builder: (_) =>
                                AlertDialog(
                                backgroundColor: Color.fromRGBO(143, 148, 251, 1),
                                titleTextStyle: TextStyle(color: Colors.white) ,
                                title: Center(child: Text("Veuillez sélectionner un profil pour vous identifier"))),
                                barrierDismissible : true,

                                );
                                }
                              else if (myControlleridentifiant.text == "") {
                                showCupertinoDialog(
                                    context: context, builder: (_) =>
                                    AlertDialog(
                                        backgroundColor: Color.fromRGBO(
                                            143, 148, 251, 1),
                                        titleTextStyle: TextStyle(
                                            color: Colors.white),
                                        title: Center(child: Text(
                                            "Veuillez entrer vos identifiants pour vous connecter."))),
                                  barrierDismissible : true,
                                );
                              }
                              else if (isEnseignant) {
                                idEnseignant = myControlleridentifiant.text;
                                showCupertinoDialog(
                                    context: context, builder: (_) =>
                                    AlertDialog(
                                        backgroundColor: Color.fromRGBO(
                                            143, 148, 251, 1),
                                        titleTextStyle: TextStyle(
                                            color: Colors.white),
                                        title: Center(child: Text(
                                            "Bonjour $idEnseignant !"))),
                                  barrierDismissible : true,

                                );
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => emploiDutempsProf()),);}

                              else if (isEleve){
                                idEtudiant = myControlleridentifiant.text;
                                showCupertinoDialog(
                                    context: context, builder: (_) =>
                                    AlertDialog(
                                        backgroundColor: Color.fromRGBO(
                                            143, 148, 251, 1),
                                        titleTextStyle: TextStyle(
                                            color: Colors.white),
                                        title: Center(
                                            child: Text("Salut $idEtudiant !"))),
                                  barrierDismissible : true,
                                );*/
                                  Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => college()),);}


                          ,

                            child: Text("Sélectionner un autre collège", style: TextStyle(color: Color.fromRGBO(143, 148, 251, .6), fontWeight: FontWeight.bold),),

                          ),

                          ),
                        ),
                      ),
                      SizedBox(height: 70,),
                      FadeAnimation(1.5, Text("Identifiant oublié ?", style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),)),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}