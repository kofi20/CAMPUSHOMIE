import 'package:flutter/material.dart';

import 'Home/HomePage.dart';

class Events extends StatefulWidget {
  const Events({Key? key}) : super(key: key);

  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  int currentPage = 0;
  PageController _pageController = new PageController(
    initialPage: 0,
    keepPage: true,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F7F1),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/apix3.png'))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 500,
                child: PageView(
                  controller: _pageController,
                  children: [
                    onEventsPage("AI ......"),
                    onEventsPage("INTELLIGENT SYSTEMS"),
                    onEventsPage("MACHINE LEARNING"),
                    onEventsPage("CAMPUSHOMIE"),
                  ],
                  onPageChanged: (value) => {setCurrentPage(value)},
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(4, (index) => getIndicator(index))),
            ],
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: InkWell(
                onTap: changePage,
                child: Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.only(bottom: 30),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                          colors: [Color(0xFF19F005), Color(0xFFF7052E)],
                          stops: [0, 1],
                          begin: Alignment.topCenter)),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              )),
        ],
      ),
    );
  }

  setCurrentPage(int value) {
    currentPage = value;
    setState(() {});
  }

  AnimatedContainer getIndicator(int pageNo) {
    return AnimatedContainer(
        duration: Duration(milliseconds: 100),
        height: 10,
        width: (currentPage == pageNo) ? 20 : 10,
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: (currentPage == pageNo) ? Colors.black : Colors.grey));
  }

  Column onEventsPage(String title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(50),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 30,
                fontFamily: 'roboto',
                fontWeight: FontWeight.w500),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          child: Text(
            "\"Intelligence is the efficiency with which you acquire new skills at tasks you didn\'t previously prepare for, he said\"",
            style: TextStyle(
                fontSize: 16,
                color: Colors.deepOrangeAccent.shade400,
                fontStyle: FontStyle.italic),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }

  void changePage() {
    print(currentPage);
    if (currentPage == 3) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      _pageController.animateToPage(currentPage + 1,
          duration: Duration(milliseconds: 200), curve: Curves.linear);
    }
  }
}
