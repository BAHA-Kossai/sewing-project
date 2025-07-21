import "package:flutter/material.dart";

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()),
  );
}

////// constant definitions
const Color drBrown = Color(0xFF521C0D);
const Color drOrange = Color(0xFFD5451B);
const Color clOrange = Color(0xFFFF9B45);
const Color bgWhite = Color(0xFFF4E7E1);

///// Golobal vars

//class Home page represent the 1st main page
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //state variables
  int nb_customers = 0;
  List<String> most_close_dead_line_name = ['name1', 'name2', 'name3'];
  @override
  Widget build(BuildContext context) {
    //device properties
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      /// -------------- ///
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: drOrange,
        title: Text(
          'Sewing',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            fontSize: 40,
          ),
        ),
        centerTitle: true,
        elevation: 4.0,
      ),
      drawer: Drawer(),
      body: Container(
        child: Column(
          children: [
            // Hero section
            Container(
              height: 0.5 * screenHeight,
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 0.1 * screenHeight,
                        width: 0.8 * screenWidth,
                        child: Text(
                          '$nb_customers customer',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: clOrange,
                          borderRadius: BorderRadius.circular(13),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 215, 215, 215),
                              spreadRadius: 2, // How much the shadow spreads
                              blurRadius: 10, // Softness of the shadow
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 0.2 * screenHeight,
                    // color: Colors.blue,
                    margin: EdgeInsets.all(10),
                    // padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Upcoming :',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 30,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              color: drOrange,
                              height: 4,
                              width: 150,
                              margin: EdgeInsets.only(top: 5),
                            ),
                          ],
                        ),
                        Container(
                          height: 120,
                          child: ListView.builder(
                            itemCount: most_close_dead_line_name.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                dense: true,
                                contentPadding: EdgeInsets.zero,

                                title: Text(
                                  most_close_dead_line_name[index],
                                  style: TextStyle(fontSize: 20),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () => {},
                        child: Text(
                          'Add Customer +',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(drBrown),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //options Section
            Container(
              height: 0.4 * screenHeight,
              child: ListView(
                children: [
                  Column(
                    children: [
                      ///// <---- stoped here
                      Row(
                        children: [
                          ElevatedButton(onPressed: onPressed, child: child),
                          ElevatedButton(onPressed: onPressed, child: child),
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(onPressed: onPressed, child: child),
                          ElevatedButton(onPressed: onPressed, child: child),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
