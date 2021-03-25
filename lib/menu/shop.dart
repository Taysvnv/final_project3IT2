import 'package:flutter/material.dart';

import 'detailPage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Container(
                margin: EdgeInsets.only(top: 60),
                child: ListTile(
                  leading: Image.asset('assets/icons/logo.png'),
                  title: Text('ຮ້ານອາຫານຈານຂຽວ', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold) ,),
                  subtitle: Text('Green Plate Restaurant', style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
              decoration: BoxDecoration(
                  color: Color(0xFF5CB238)
              ),
            ),
            ListTile(
              title: Text('ເມນູ'),
              onTap: () {

              },
            ),
            ListTile(
              title: Text('ອອກຈາກລະບົບ'),
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
          ],
        ),
      ),
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Home'),
        ),
        body: ListView(
        children: <Widget>[
          SizedBox(height: 30.0),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // IconButton(
                //   onPressed: () {},
                //   icon: Icon(Icons.menu),
                //   color: Colors.black,
                // ),
                Container(
                  height: 45.0,
                  width: 45.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.0),
                      image: DecorationImage(
                          image: AssetImage('assets/images/logo.jpg'),
                          fit: BoxFit.cover)),
                )
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('ຮ້ານອາຫານ ຈານຂຽວ',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF5B8842),
                        fontSize: 30.0)),
                Text('Green Plate restaurant',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF5B8842),
                        fontSize: 25.0)),
                SizedBox(height: 20.0),
                Text('ເມນູເເນະນຳ',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17.0))
              ],
            ),
          ),
          SizedBox(height: 7.0),
          Container(
            height: 270.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildListItem('assets/images/plate6.png', 'ສະເຕັກງົວ (Beef Steak)', '25.000 ກີບ'),
                _buildListItem('assets/images/plate4.png', 'ເຂົ້າຜັດລວມມິດ (Mixed Fried Rice)', '25.000 ກີບ'),
                _buildListItem('assets/images/plate3.png', 'ສະເຕັກປາເຊວມ່ອນ (Salmon Steak)', '25.000 ກີບ'),
              ],
            ),
          ),
          SizedBox(height: 7.0),

          Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text('ເມນູຍອດນິຍົມ',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17.0))
          ),
          Container(
            height: 270.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildListItem('assets/images/plate2.png', 'ສະເຕັກຫມູ (Pork Steak)', '25.000 ກີບ'),
                _buildListItem('assets/images/plate5.png', 'ສະເຕັກປາທູນ່າ (Tuna Steak)', '25.000 ກີບ'),
              ],
            ),
          ),
          SizedBox(height: 7.0),
          Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text('ເມນູໃຫມ່ ( ຍຳສະລັດລວມ )',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25.0))
          ),
          SizedBox(height: 7.0),
          Padding(
            padding: EdgeInsets.only(left: 0.0, right: 0.0),
            child: Container(
              height: 200.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white, Color(0xFFACBEA3)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
                  borderRadius: BorderRadius.circular(0.0),
                  image: DecorationImage(
                      image: AssetImage('assets/images/plate1.png'),
                      fit: BoxFit.contain)),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 50.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0)
            ),
            color: Color(0xFF5AC035)
        ),
        padding: EdgeInsets.only(left: 40.0, right: 40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.bookmark_border, color: Colors.white),
            Icon(Icons.search, color: Colors.white),
            Icon(Icons.shopping_basket, color: Colors.white),
            Icon(Icons.phone, color: Colors.white)
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(String imgPath, String foodName, String price) {
    return InkWell(
        onTap: () {
          Navigator.of(context).push((MaterialPageRoute(
              builder: (context) => DetailsPage(heroTag: imgPath, foodName: foodName, foodPrice: price)
          )));
        },
        child: Padding(
            padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
            child: Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 6.0,
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5.0)
                    ]),
                child: Stack(
                  children: <Widget>[
                    Container(
                        height: 175.0,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.white, Color(0xFFACBEA3)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight
                            ),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0)
                            )
                        )
                    ),
                    Hero(
                        tag: imgPath,
                        child: Container(
                          height: 175.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain
                              ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0)
                              )
                          ),
                        )
                    ),
                    Positioned(
                        top: 160.0,
                        right: 20.0,
                        child: Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.circular(15.0),
                            child: Container(
                              height: 30.0,
                              width: 30.0,
                              child: Center(
                                  child: Icon(Icons.favorite, color: Colors.red, size: 17.0)
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white
                              ),
                            )
                        )
                    ),
                    Positioned(
                        top: 190.0,
                        left: 10.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(foodName,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    fontSize: 14.0)),
                            SizedBox(height: 3.0),
                            Container(
                                width: 175.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          '4.9',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              color: Colors.grey,
                                              fontSize: 12.0),
                                        ),
                                        SizedBox(width: 3.0),
                                        Icon(Icons.star,
                                            color: Colors.green, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.green, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.green, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.green, size: 14.0),
                                        Icon(Icons.star,
                                            color: Colors.green, size: 14.0),
                                      ],
                                    ),
                                    Text(price,
                                        style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            fontSize: 16.0)),
                                  ],
                                )
                            )
                          ],
                        )
                    )
                  ],
                )
            )
        )
    );
  }
}
