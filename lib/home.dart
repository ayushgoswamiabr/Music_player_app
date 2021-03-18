import 'package:flutter/material.dart';
import 'music_playing_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Music Player"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ProfileScreen()));
              },
            ),
            PopupMenuButton<String>(
              itemBuilder: (BuildContext context) {
                return {'Logout', 'Settings'}.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Recently Played',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 210.0,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 5, 10, 5),
                  child: ListView.builder(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 15,
                    itemBuilder: (BuildContext context, int index) => Card(
                      child: Container(
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            RaisedButton(
                              padding: EdgeInsets.all(5),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            MusicScreen()));
                              },
                              color: Colors.red,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18)),
                              child: Container(
                                color: Colors.red,
                                height: 160,
                                width: 160,
                                child: Image(
                                  image: NetworkImage(
                                      "https://www.kindpng.com/picc/m/116-1160576_google-play-music-png-google-play-music-icon.png"),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text("Recently Played"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                'Weekly Suggestions',
                style: TextStyle(fontSize: 18),
              ),
              Card(
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MusicScreen()));
                  },
                  title: Text('Shuffle Songs'),
                  // subtitle: Text(
                  //     'https://flevix.com/wp-content/uploads/2019/12/Quarter-Circle-Loading-Image-1.gif'),
                ),
              ),
              Card(
                child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  MusicScreen()));
                    },
                    title: Text('Motivation $int'),
                    subtitle: Text('this is a description of the motivation')),
              ),
              Card(
                child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  MusicScreen()));
                    },
                    title: Text('Motivation $int'),
                    subtitle: Text('this is a description of the motivation')),
              ),
              Card(
                child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  MusicScreen()));
                    },
                    title: Text('Motivation $int'),
                    subtitle: Text('this is a description of the motivation')),
              ),
              Card(
                child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  MusicScreen()));
                    },
                    title: Text('Motivation $int'),
                    subtitle: Text('this is a description of the motivation')),
              ),
              SizedBox(
                height: 200.0,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 5, 10, 5),
                  child: ListView.builder(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 15,
                    itemBuilder: (BuildContext context, int index) => Card(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              color: Colors.grey,
                              height: 160,
                              width: 160,
                              child: Image(
                                image: NetworkImage(
                                    "https://assets1.risnews.com/styles/content_sm/s3/2018-04/shopping-cart.png?itok=LUk_XbaE"),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text("Shop"),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
