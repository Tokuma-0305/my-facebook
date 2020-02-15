import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'facebook'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final url =
      "https://www.sanwacompany.co.jp/shop/pagefiles/pc/k/karimokucat_lp_01.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            Row(children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Container(
                child: Text(
                  'facebook',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 30,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                height: 40,
                width: 40,
                child: Icon(
                  Icons.search,
                  size: 30,
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.withOpacity(0.4)),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 40,
                width: 40,
                child: Icon(
                  Icons.message,
                  size: 30,
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey.withOpacity(0.4)),
              ),
            ]),
            const SizedBox(
              height: 30,
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://www.sanwacompany.co.jp/shop/pagefiles/pc/k/karimokucat_lp_01.jpg"),
                            fit: BoxFit.cover),
                        shape: BoxShape.circle),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: TextField(
                        enabled: true,
                        maxLengthEnforced: true,
                        style: TextStyle(color: Colors.black),
                        decoration:
                            InputDecoration.collapsed(hintText: "今何してる？")),
                  )
                ]),
            Divider(color: Colors.black),
            Row(children: <Widget>[
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(
                                width: 1,
                                color: Colors.grey.withOpacity(0.4)))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.video_call,
                            color: Colors.red,
                          ),
                          Text(
                            "ライブ動画",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ])),
              ),
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(
                                width: 1,
                                color: Colors.grey.withOpacity(0.4)))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.picture_in_picture,
                            color: Colors.lightGreen,
                          ),
                          Text(
                            "写真",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ])),
              ),
              Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(
                                width: 1,
                                color: Colors.grey.withOpacity(0.4)))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.red,
                          ),
                          Text(
                            "チェックイン",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ])),
              ),
            ]),
            Divider(thickness: 10, color: Colors.grey.withOpacity(0.6)),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: <Widget>[
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                    height: 200,
                    width: 100,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Colors.red,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      // TODO(Tokuma): Add Image Url
                                      "https://www.sanwacompany.co.jp/shop/pagefiles/pc/k/karimokucat_lp_01.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              padding:
                                  EdgeInsets.only(bottom: 5, right: 5, left: 5),
                              child: Text(
                                "ストーリーズに追加",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: 50,
                              width: 50,
                              margin: EdgeInsets.only(top: 5, left: 5),
                              child: Icon(
                                Icons.add,
                                color: Colors.blue,
                                size: 35,
                              ),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                            )),
                      ],
                      fit: StackFit.expand,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 10,
              color: Colors.grey.withOpacity(0.6),
            ),
            Post(url, url),
            Post(url, url),
            Post(url, url),
            Post(url, url),
            Post(url, url),
            Post(url, url),
          ],
        ),
      ),
    ));
  }
}

class Post extends StatelessWidget {
  @required
  final String authorUrl;
  @required
  final String contentUrl;

  Post(this.authorUrl, this.contentUrl);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(
          height: 8,
        ),
        Row(
          children: <Widget>[
            const SizedBox(
              width: 8,
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(authorUrl),
                      fit: BoxFit.cover),
                  shape: BoxShape.circle),
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "yosinari tokuma",
                  textAlign: TextAlign.start,
                ),
                Text(
                  "19時20分",
                  textAlign: TextAlign.start,
                )
              ],
            ),
            const Spacer(),
            Icon(Icons.more_horiz),
            const SizedBox(
              width: 8,
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text("ウニウニ！　ウニオス！ タイに行ってきやした！"),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          height: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                     contentUrl),
                  fit: BoxFit.cover)),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Icon(Icons.thumb_up), Text(" いいね！")],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Icon(Icons.comment), Text(" コメントする")],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Icon(Icons.message), Text(" 送信")],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Divider(
          color: Colors.grey,
          thickness: 10,
        )
      ],
    );
  }
}
