import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        slivers: <Widget>[
          SliverAppBar(
            stretch: true,
            onStretchTrigger: () {
              // Function callback for stretch
              return Future<void>.value();
            },
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const <StretchMode>[
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
                StretchMode.fadeTitle,
              ],
              centerTitle: true,
              background: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/casa.jpg'),
                    fit: BoxFit.cover,
                  ),
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.0, 0.5),
                        end: Alignment.center,
                        colors: <Color>[
                          Color(0x60000000),
                          Color(0x00000000),
                        ],
                      ),
                    ),
                  ),
                  btn_header(),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              content_sliver(context),
            ]),
          ),
        ],
      ),
    );
  }

  Widget btn_header() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //brn_desing(Icons.exit_to_app_sharp, Colors.black,Colors.white),
          Spacer(),
          brn_desing(Icons.h_plus_mobiledata_sharp, Colors.black, Colors.white),
        ],
      ),
    );
  }

  Widget content_sliver(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 24, right: 24, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          data_header(),
          Container(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              "Informacion de la propiedad: ",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          data_detail(context),
          Text(
            "¡Excelentes espacios que ofrecen bienestar! Sitios de trabajos ergonómicos con altos estándares de calidad que se ajustan a su presupuesto y necesidades, brindando un clima organizacional armónico y equilibrado orientado a la comodidad de sus empleados. Ubicado en el centro de negocios, en donde se encuentran las grandes y pequeñas organizaciones que forman parte del motor económico de la ciudad con alta afluencia peatonal, cerca del metro, locomoción, estacionamientos públicos, que facilitan el acceso a empleados, proveedores y visitantes.",
            style: TextStyle(
              color: Colors.black54,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }

  Widget data_header() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                new String.fromCharCodes(new Runes('\u0024')) + "2000 ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                "Concepcion, Chile",
                style: TextStyle(fontSize: 13, color: Colors.black45),
              ),
            ],
          ),
          Spacer(),
          card_desing("20 horas atras", 144, 60),
        ],
      ),
    );
  }

  Widget data_detail(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        children: [
          Expanded(
            child: ListView(
              children: [
                card_item("1418", "metros"),
                card_item("4", "habitaciones"),
                card_item("2", "baños"),
                card_item("1", "estacionamiento"),
                card_item("1", "cocina"),
              ],
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }

  Widget card_item(String text_card, String text) {
    return Container(
      child: Column(
        children: [
          card_desing(text_card, 78, 60),
          Text(
            text,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget brn_desing(IconData icon_name, Color color, Color color_background) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: color_background,
        borderRadius: BorderRadius.circular(18.0),
        border: Border.all(color: Colors.black12),
      ),
      child: CupertinoButton(
        child: Icon(
          icon_name,
          color: color,
          size: 20,
        ),
        onPressed: () => print("hellop"),
      ),
    );
  }

  Widget card_desing(String text, double width_data, double heigth_data) {
    return Container(
      height: heigth_data,
      width: width_data,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.0),
        border: Border.all(color: Colors.black12),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold,),
      ),
    );
  }
}
