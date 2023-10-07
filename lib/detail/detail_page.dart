import 'package:flutter/material.dart';
import 'package:project_1/screens/dashboard_page.dart';

void main() {
  runApp(DetailApp());
}

class DetailApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Detailatas(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Detailatas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(left: 10, right: 10),
          children: [
            Container(
              width: 390,
              height: 46,
              decoration: ShapeDecoration(
                color: Color(0xFF435334),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => DashboardScreen(),
                        ),
                      );
                    },
                  ),
                  Text(
                    'Kembali',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontFamily: 'Inder',
                      fontWeight: FontWeight.w400,
                      height: 0,
                      letterSpacing: -0.09,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.only(
                top: 15,
              ),
              width: 358,
              height: 592,
              decoration: ShapeDecoration(
                color: Color(0xFF435334),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: 259,
                    height: 163,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Image(
                        image: AssetImage("images/sedan/evo lancer.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    'Mitsubishi Lancer',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Times New Roman',
                      fontWeight: FontWeight.w400,
                      height: 0,
                      letterSpacing: 0.60,
                    ),
                  ),
                  Text(
                    'Sedan',
                    style: TextStyle(
                      color: Color(0xFFBCBCBC),
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Kanit',
                      fontWeight: FontWeight.w400,
                      height: 0,
                      letterSpacing: 0.30,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Detail',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'Kanit',
                          fontWeight: FontWeight.w600,
                          height: 0,
                          letterSpacing: 0.44,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 20, left: 30),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '4 Penumpang',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Kanit',
                          fontWeight: FontWeight.w600,
                          height: 0,
                          letterSpacing: 0.44,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15, left: 30),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Tahun 2018',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Kanit',
                          fontWeight: FontWeight.w600,
                          height: 0,
                          letterSpacing: 0.44,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15, left: 30),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Max 2 Koper',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Kanit',
                          fontWeight: FontWeight.w600,
                          height: 0,
                          letterSpacing: 0.44,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 25, left: 30),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Detail Lainnya',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'Kanit',
                          fontWeight: FontWeight.w600,
                          height: 0,
                          letterSpacing: 0.44,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 252,
              height: 43,
              decoration: ShapeDecoration(
                color: Color(0xFF9EB384),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Lanjut Ke Detail Pembayaran',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Impact',
                      fontWeight: FontWeight.w400,
                      height: 0,
                      letterSpacing: 0.32,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
