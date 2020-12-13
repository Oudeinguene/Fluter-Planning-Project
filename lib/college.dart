import 'package:flutter/material.dart';
import 'package:ouds_app/ClassCollege.dart';
import 'package:ouds_app/login.dart';

void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: college(),
    )
);

class  college extends StatefulWidget {
  @override


  _State createState() => _State();
}

class _State extends State<college> {
  @override
  List<ClassCollege> colleges = [
    ClassCollege(nom: 'Collège Aimé Césaire', adresse: '1 Rue de Vendée 91940 Ulis'),
    ClassCollege(nom: 'Collège Alain Fournier', adresse: '14 Rue Alain Fournier 91400 Orsay'),
    ClassCollege(nom: 'Collège Albert Camus', adresse: '17 Rue du Peuple la Lance 91290 Norville'),
    ClassCollege(nom: 'Collège Alexandre Fleming', adresse: '10 Rue Alexandre Fleming 91400 Orsay'),
    ClassCollege(nom: 'Collège Alphonse Daudet', adresse: '11 Rue de la Citadelle 91210 Draveil'),
    ClassCollege(nom: 'Collège André Dunoyer de Segonzac', adresse: 'Place Jules Ferry 91800 Boussy-Saint-Antoine'),
    ClassCollege(nom: 'Collège André Maurois', adresse: '8 Rue de Mauregard 91360 Épinay-sur-Orge'),
    ClassCollege(nom: 'Collège Bellevue', adresse: '102 Rue du Vieux Château 91560 Crosne'),
    ClassCollege(nom: 'Collège Beth Rivkah', adresse: '43-49 Rue Raymond Poincaré 91330 Yerres'),
    ClassCollege(nom: 'Collège Charles Péguy', adresse: '9 Rue de Viry 91390 Morsang-sur-Orge'),
    ClassCollege(nom: 'Collège César Franck', adresse: '13 Rue Cesar Franck 91120 Palaiseau'),
    ClassCollege(nom: 'Collège Chantemerle', adresse: '9 Boulevard Georges Michel 91100 Corbeil-Essonnes')
  ];
  Widget collegeTemplate(ClassCollege) {
    return Card(
        color: Color.fromRGBO(143, 148, 251, 1),
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                ClassCollege.nom,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 6.0),
              Text(
                ClassCollege.adresse,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 2.0),
              FlatButton.icon (
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => login()),);},

                  label: Text ('Chosir'),
                  icon: Icon(Icons.check),
                  )
            ],
          ),
        )
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Veuillez sélectionner votre collège'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(143, 148, 251, 1),
      ),
      body: SingleChildScrollView(
        child: Column(
            children: colleges.map((ClassCollege) => collegeTemplate(ClassCollege)).toList(),
          /*child : GestureDetector(
          onTap: (){
            setState(() {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => login()));})*/
    ))
    );


  }
}
