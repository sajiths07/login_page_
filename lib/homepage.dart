import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showAddress = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade900,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Image.asset(
                "8d51.webp",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
              ),
            ),
            buildDrawerItem('Home'),
            buildDrawerItem('About'),
            buildDrawerItem('Services'),
            buildDrawerItem('Products'),
            buildDrawerItem('Works'),
            ListTile(
              title: GestureDetector(
                onTap: () {
                  setState(() {
                    showAddress = !showAddress;
                  });
                },
                child: Text(
                  'Contact Info',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              subtitle: showAddress
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8),
                        Text(
                          '',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  : SizedBox.shrink(),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "capcutbg.jpg",
                fit: BoxFit.cover,
              ),
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.account_circle,
                ),
                onPressed: () {},
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ListTile(
                  subtitle: Container(
                    child: Text(
                      '\n make your movments.',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  leading: Container(
                    child: Image.asset(
                      'med2.jpg',
                      width: 250.0,
                      height: 50.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'capcut@gmail.com',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(width: 16.0),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.facebook,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'cpacut@ind',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(width: 20.0),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.phone,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'xxxxxxxxxx',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDrawerItem(String title) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(color: Colors.grey),
      ),
      onTap: () {},
    );
  }

  Widget buildImageSlider(List<String> imagePaths, bool autoPlay) {
    return CarouselSlider(
      items: imagePaths.map((imagePath) {
        return Image.asset(
          imagePath,
          fit: BoxFit.cover,
        );
      }).toList(),
      options: CarouselOptions(
        autoPlay: autoPlay,
        enlargeCenterPage: true,
        aspectRatio: 12.0,
        height: 200.0,
      ),
    );
  }
}
