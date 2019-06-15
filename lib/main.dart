import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  var _sliderValue1 = 70.0;
  var _sliderValue2 = 60.0;
  var _sliderValue3 = 70.0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 0.12),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(left:0, top:15),
          child: Align(
            alignment: Alignment.topLeft,
            child: (
              Text(
               'xingfutang',
               style: const TextStyle(
                 color: Color(0xfff19528),
                 fontWeight: FontWeight.w400,
                 fontFamily: "Oswald",
                 fontSize: 18.0
               ),
              )
            ),
          ),
        ),
        actions: <Widget>[
          Container(
            child: Image.asset('assets/actions.png')
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
                'assets/background.png',
              fit: BoxFit.cover,
            ),
          ),

          // Main Body

          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '10.99 \$',
                      style: TextStyle(
                        color: const Color(0xfff19528),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Oswald",
                        fontSize: 43.0,
                        fontStyle: FontStyle.normal
                      ),
                    ),

                    Text(
                      'Price may very depends on ingredientes',
                      style: TextStyle(
                          color: const Color(0xffefefef),
                          fontWeight: FontWeight.w300,
                          fontFamily: "Oswald-Extra",
                          fontSize: 7.0,
                          fontStyle: FontStyle.normal
                      ),

                    ),
                    SizedBox (height: 2.0,),

                    Container(
                      width: 115,
                      height: 0.8,
                      color: Color(0xfff19528),
                    )
                  ],
                )
              ),

              SizedBox(height: 20.0,),

              Stack(

                children: <Widget>[

                  Positioned(
                    right: 50,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,

                        children: <Widget>[
                          Text(
                            "ORANGE",
                              style: const TextStyle(
                                  color:  const Color.fromRGBO(255, 255, 255, 0.12),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Oswald",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 64.0
                              )
                          ),

                          Text(
                              "juice",
                              style: const TextStyle(
                                  color:  const Color.fromRGBO(255, 255, 255, 0.12),
                                  fontWeight: FontWeight.w100,
                                  fontFamily: "Oswald",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 48.0
                              )
                          ),

                          SizedBox(
                            height: 50,
                          ),

                          Container(
                            width: 151,
                            height: 119,
                            child: Text(

                              "Fusce at nisi eget dolor rhoncus facilisis. Mauris ante nisl, consectetur et luctus et, porta ut dolor. Curabitur ultriciesultrices nulla. Morbi blandit nec est vitaedictum.Etiam vel consectetur diam Maecenas vitae egestas dolor. Fuscetempor magna at tortor aliquot finib",
                              style: const TextStyle(
                                color:  const Color.fromRGBO(245, 245, 245, 0.91),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                                fontStyle:  FontStyle.normal,
                                fontSize: 8.0,

                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),

                          InkWell(
                              onTap: () {


                              },
                              child: Container(
                                height: 42,
                                width: 131,
                                child: Center(
                                  child: Text(
                                    "ADD TO CART",
                                    style: const TextStyle(
                                        color:  const Color(0xff0c0a0b),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Oswald",
                                        fontStyle:  FontStyle.normal,
                                        fontSize: 16.0

                                    ),
                                ),

                              ),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(215, 214, 214, 1),
                                borderRadius: BorderRadius.all(Radius.circular(25.0))
                              ),
                            )
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {


                            },
                            child: Container(
                              height: 42,
                              width: 131,
                              child: Center(
                                child: Text(
                                  "BUY NOW",
                                  style: const TextStyle(
                                      color:  const Color(0xff0c0a0b),
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Oswald",
                                      fontStyle:  FontStyle.normal,
                                      fontSize: 16.0

                                  ),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(243, 173, 37, 1),
                                  borderRadius: BorderRadius.all(Radius.circular(25.0))
                              ),
                            )
                        )




                        ],
                      ),

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left:30.0, top: 50, bottom: 45),
                    child: Container(
                      width: 195.5,
                      height: 355,
                      child: Image.asset(
                        "assets/juice.png",
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      )
                    ),
                  )

                ],

              ),

              SizedBox(
                height: 20.0,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Column(
                  children: <Widget>[
                    /// Slider 1
                    Padding(
                      padding: const EdgeInsets.only(right: 55.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text("Gram",
                              style: const TextStyle(
                                  color:  const Color(0xffffffff),
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Oswald",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 5.0
                              )
                          )
                        ],

                      ),
                    ),
                    Row(
                      children: <Widget>[

                        Container(
                          width: 30,
                          height: 30,
                          child: Image.asset('assets/slider1.png'),
                        ),

                        Container(
                          width: 320,
                          child: Slider(
                              activeColor: Color.fromRGBO(249, 165, 28, 1),
                              inactiveColor: Color.fromRGBO(112, 112, 112, 1),
                              min: 0.0,
                              max: 100,
                              value: _sliderValue1,
                              onChanged: (newValue) {
                                setState(() {
                                  _sliderValue1 = newValue;
                                });
                              }
                          ),
                        )


                      ],
                    ),

                    /// Slider 2
                    Padding(
                      padding: const EdgeInsets.only(right: 55.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text("Cup",
                              style: const TextStyle(
                                  color:  const Color(0xffffffff),
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Oswald",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 5.0
                              )
                          )
                        ],

                      ),
                    ),
                    Row(
                      children: <Widget>[

                        Container(
                          width: 30,
                          height: 30,
                          child: Image.asset('assets/slider3.png'),
                        ),

                        Container(
                          width: 320,
                          child: Slider(
                              activeColor: Color.fromRGBO(249, 165, 28, 1),
                              inactiveColor: Color.fromRGBO(112, 112, 112, 1),
                              min: 0.0,
                              max: 100,
                              value: _sliderValue2,
                              onChanged: (newValue) {
                                setState(() {
                                  _sliderValue2 = newValue;
                                });
                              }
                          ),
                        )


                      ],
                    ),

                    /// Slider 3
                    Padding(
                      padding: const EdgeInsets.only(right: 55.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text("No.",
                              style: const TextStyle(
                                  color:  const Color(0xffffffff),
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Oswald",
                                  fontStyle:  FontStyle.normal,
                                  fontSize: 5.0
                              )
                          )
                        ],

                      ),
                    ),
                    Row(
                      children: <Widget>[

                        Container(
                          width: 30,
                          height: 30,
                          child: Image.asset('assets/slider2.png'),
                        ),

                        Container(
                          width: 320,
                          child: Slider(
                              activeColor: Color.fromRGBO(249, 165, 28, 1),
                              inactiveColor: Color.fromRGBO(112, 112, 112, 1),
                              min: 0.0,
                              max: 100,
                              value: _sliderValue3,
                              onChanged: (newValue) {
                                setState(() {
                                  _sliderValue3 = newValue;
                                });
                              }
                          ),
                        )


                      ],
                    ),
                  ],
                ),
              )

            ],
          )
        ],
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
