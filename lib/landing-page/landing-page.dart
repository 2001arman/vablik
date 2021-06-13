import 'package:vablik/landing-page/dot-indicator.dart';
import 'package:vablik/landing-page/slide-list.dart';
import 'package:vablik/landing-page/slide.dart';
import 'package:vablik/Pertanyaan/question_1.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _pageSekarang = 0;
  final PageController _pageController = PageController(initialPage: 0);

  // @override
  // void initState() {
  //   super.initState();
  //   Timer.periodic(Duration(seconds: 5), (Timer timer) {
  //     if (_pageSekarang < 2) {
  //       _pageSekarang++;
  //     } else {
  //       _pageSekarang = 0;
  //     }

  //     _pageController.animateToPage(
  //       _pageSekarang,
  //       duration: Duration(milliseconds: 300),
  //       curve: Curves.easeIn,
  //     );
  //   });
  // }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChange(int index) {
    setState(() {
      _pageSekarang = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: _pageController,
                itemCount: slideData.length,
                onPageChanged: _onPageChange,
                itemBuilder: (context, i) => Slide(index: i)),
          ),
          SizedBox(height: 20),
          Container(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < slideData.length; i++)
                  if (i == _pageSekarang) SlideDots(true) else SlideDots(false)
              ],
            ),
          ),
          SizedBox(height: 40),
          if (_pageSekarang == 2) buttonMulai(),
          if (_pageSekarang < 2)
            InkWell(
              onTap: () {
                _pageController.jumpToPage(2);
              },
              child: Container(
                width: 80,
                padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromRGBO(63, 61, 82, 1), width: 2),
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Skip",
                  style: TextStyle(
                      color: Color.fromRGBO(63, 61, 82, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          SizedBox(height: 50)
        ],
      ),
    );
  }
}

class buttonMulai extends StatelessWidget {
  const buttonMulai({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
          return Question1();
        }));
      },
      child: Container(
        width: 80,
        padding: EdgeInsets.fromLTRB(0, 4, 0, 4),
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromRGBO(63, 61, 82, 1), width: 2),
            borderRadius: BorderRadius.circular(20)),
        child: Text(
          "Mulai",
          style: TextStyle(
              color: Color.fromRGBO(63, 61, 82, 1),
              fontSize: 16,
              fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
