import 'package:flutter/material.dart';

class PaginaInicio extends StatefulWidget {
  const PaginaInicio({super.key});

  @override
  State<PaginaInicio> createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio> {
  final List<Map<String, dynamic>> _listaImagenes = [
    {"image": 'assets/images/two.jpg', "isSaved": false},
    {"image": 'assets/images/three.jpg', "isSaved": false},
    {"image": 'assets/images/four.jpg', "isSaved": true},
    {"image": 'assets/images/five.jpg', "isSaved": true},
    {"image": 'assets/images/one.jpg', "isSaved": false},
    {"image": 'assets/images/two.jpg', "isSaved": false},
    {"image": 'assets/images/three.jpg', "isSaved": false},
    {"image": 'assets/images/four.jpg', "isSaved": false},
    {"image": 'assets/images/five.jpg', "isSaved": false},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 11, 41, 213),
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.amber),
        title: Text("Muebleria", style: TextStyle(color: Colors.amber)),
        actions: <Widget>[
          Padding(
            padding: EdgeInsetsGeometry.all(10.0),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text("0")),
            ),
          ),
        ],
      ),

      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("images/one.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),

                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,

                      colors: [
                        Colors.black38,
                        Colors.black12,
                        // const Color.fromARGB(255, 160, 126, 126),
                        // Colors.black.withValues(green: 2),
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "Venta de estilo de vida",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            "Compre Ahora",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children:
                      _listaImagenes
                          .map(
                            (item) => Card(
                              color: Colors.transparent,
                              elevation: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(item['image']),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Transform.translate(
                                  offset: Offset(50, -50),
                                  child: Container(
                                   
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(),

                                    child: Center(
                                      child: MaterialButton(
                                        onPressed: () {
                                          setState(() {
                                            item["isSaved"] = !item["isSaved"];
                                          });
                                        },
                                        color: Colors.white,
                                        height: 35,
                                        minWidth: 40,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                        child: Icon(
                                          item["isSaved"]
                                              ? Icons.bookmark
                                              : Icons.bookmark_border,
                                          size: 22,
                                          color:
                                              item["isSaved"]
                                                  ? Colors.amber
                                                  : Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
