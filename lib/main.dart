import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

const Color _kAppColor = Color(0xFFFDDE6F);
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Loading Widgets",style: TextStyle(fontSize: 15),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 2
                ), 
                itemCount: load.length,
                itemBuilder: ((context, index) {
                  return Container(
                    padding: const EdgeInsets.all(20),
                    color: Colors.green.withOpacity(0.5),
                    child: load[index]['animation']
                  );
                })
              )
            )
          ],
        ),
      ),
    );
  }
}

List<Map> load = [
  {
    'animation' : LoadingAnimationWidget.waveDots(
      color: Colors.black,
      size: 100,
    ),
  },
  {
    'animation' : LoadingAnimationWidget.inkDrop(
      color: Colors.black,
      size: 100,
    ),
  },
  {
    'animation' : LoadingAnimationWidget.twistingDots(
      leftDotColor: const Color(0xFF1A1A3F),
      rightDotColor: const Color(0xFFEA3799),
      size: 100,
    ),
  },
  {
    'animation' : LoadingAnimationWidget.threeRotatingDots(
      color: Colors.black,
      size: 100,
    ),
  },
  {
    'animation' : LoadingAnimationWidget.staggeredDotsWave(
      color: Colors.black,
      size: 100,
    ),
  },
  {
    'animation' : LoadingAnimationWidget.fourRotatingDots(
      color: Colors.black,
      size: 100,
    ),
  },
  {
    'animation' : LoadingAnimationWidget.fallingDot(
      color: Colors.black,
      size: 100,
    ),
  },
  {
    'animation' : LoadingAnimationWidget.prograssiveDots(
      color: Colors.black,
      size: 100,
    ),
  },
  {
    'animation' : LoadingAnimationWidget.discreteCircle(
      color: Colors.black,
      size: 100,
      secondRingColor: Colors.black,
      thirdRingColor: Colors.purple),
  },
  {
    'animation' : LoadingAnimationWidget.threeArchedCircle(
      color: Colors.black,
      size: 100,
    ),
  },
  {
    'animation' : LoadingAnimationWidget.bouncingBall(
      color: Colors.black,
      size: 100,
    ),
  },
  {
    'animation' : LoadingAnimationWidget.flickr(
      leftDotColor: const Color(0xFF0063DC),
      rightDotColor: const Color(0xFFFF0084),
      size: 100,
    ),
  },
  {
    'animation' : LoadingAnimationWidget.hexagonDots(
      color: Colors.black,
      size: 100,
    ),
  },
  {
    'animation' : LoadingAnimationWidget.beat(
      color: Colors.black,
      size: 100,
    ),
  },
  {
    'animation' : LoadingAnimationWidget.twoRotatingArc(
      color: Colors.black,
      size: 100,
    ),
  },
  {
    'animation' : LoadingAnimationWidget.horizontalRotatingDots(
      color: Colors.black,
      size: 100,
    ),
  },
  {
    'animation' : LoadingAnimationWidget.newtonCradle(
      color: Colors.black,
      size: 2 * 100,
    ),
  },
  {
    'animation' : LoadingAnimationWidget.stretchedDots(
      color: Colors.black,
      size: 100,
    ),
  },
  {
    'animation' : LoadingAnimationWidget.halfTriangleDot(
      color: Colors.black,
      size: 100,
    ),
  },
  {
    'animation' : LoadingAnimationWidget.dotsTriangle(
      color: Colors.black,
      size: 100,
    ),
  },
];