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
            Container(height: 200, color: Colors.red),
            //options Section
            Container(color: Colors.amber),
          ],
        ),
      ),
    );
  }
}
