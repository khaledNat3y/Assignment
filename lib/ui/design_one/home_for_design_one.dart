import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeForDesignOne extends StatefulWidget {
  static const String routeName = "homeForDesignOne";
  HomeForDesignOne({super.key});

  @override
  State<HomeForDesignOne> createState() => _HomeForDesignOneState();
}

class _HomeForDesignOneState extends State<HomeForDesignOne> {
  int activeIndex = 0;
  int currentTabIndex = 0;
  int carIndex = 0;
  final urlImages = [
    "assets/design_one_images/Frame 24.png",
    "assets/design_one_images/Frame 24.png",
    "assets/design_one_images/Frame 24.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/design_one_images/logo.png", fit: BoxFit.cover,),
        actions: [
          Image.asset("assets/design_one_images/bell-02.png",fit: BoxFit.cover,)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTabIndex,
        // showUnselectedLabels: false,
        // showSelectedLabels: false,
        selectedItemColor: Color(0xff027A48),
        unselectedItemColor: Color(0xff667085),
        onTap: (newTabIndex){
          currentTabIndex = newTabIndex;
          setState(() {});
        },
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.grid_view),label: "Page"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month),label: "List",),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Settings"),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(15),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Row(
                children: [
                  Text("Hello,",style: TextStyle(fontSize: 24),),
                  Text("Sara Rose",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Color(0xff371B34)),)
                ],
              ),
              const SizedBox(height: 10,),
              Container(child: const Text("How are you feeling today ?",style: TextStyle(fontSize: 20,),)),
              const SizedBox(height: 20,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: const Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/design_one_images/Frame 10.png"),
                          radius: 30,
                        ),
                        Text("Love")
                      ],
                    ),
                  ),
                  Container(
                    child: const Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/design_one_images/Frame 10 (1).png"),
                          radius: 30,
                        ),
                        Text("Cool")
                      ],
                    ),
                  ),
                  Container(
                    child: const Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/design_one_images/Frame 8.png"),
                          radius: 30,
                        ),
                        Text("Happy")
                      ],
                    ),
                  ),
                  Container(
                    child: const Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/design_one_images/Frame 12.png"),
                          radius: 30,
                        ),
                        Text("Sad")
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Feature",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                  Row(
                    children: [
                      Text("See more",style: TextStyle(color: Color(0xff027A48)),),
                      InkWell(
                        child: Icon(Icons.chevron_right,color: Color(0xff027A48),),
                      )
                    ]
                  ),
                ],
              ),
              CarouselSlider.builder(
                itemCount: urlImages.length,
                itemBuilder: (context,index,realIndex) {
                  final urlImage = urlImages[index];
                  return buildImage(urlImage,index);
                },
                options: CarouselOptions(height: 170,
                    onPageChanged: (index,reason){
                      activeIndex = index;
                      setState(() {});
                    }),),

              SizedBox(height: 12,),
              Center(child: buildIndicator()),
              const SizedBox(height: 30,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Exercise",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                  Row(
                      children: [
                        InkWell(
                            child: Text("See more",
                              style: TextStyle(color: Color(0xff027A48)),)),
                        Icon(Icons.chevron_right,color: Color(0xff027A48),)
                      ]
                  ),
                ],
              ),
              Row(
                children: [
                  exercise("assets/design_one_images/Frame 31.png"),
                  exercise("assets/design_one_images/Frame 33 (1).png"),
                ],
              ),
              Row(
                children: [
                  exercise("assets/design_one_images/Frame 35.png"),
                  exercise("assets/design_one_images/Frame 35 (1).png"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
      effect: ExpandingDotsEffect(
        dotWidth: 5,
        dotHeight: 5,
        activeDotColor: Color(0xff98A2B3),
      ),
      activeIndex: activeIndex,
      count: urlImages.length,
    );
  }
  Widget exercise(String path) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Image.asset(path),
      ),
    );
  }
}
Widget buildImage(String urlImage, int index) {
  return Container(
    padding: EdgeInsets.all(10),
    child: Image(image: AssetImage(urlImage,),fit: BoxFit.cover,),
  );
}


// CarouselSlider.builder(
// itemCount: urlImages.length,
// itemBuilder: (context,index,realIndex) {
// final urlImage = urlImages[index];
// return buildImage(urlImage,index);
// },
// options: CarouselOptions(height: 170,autoPlay: true,
// onPageChanged: (index,reason){
// activeIndex = index;
// setState(() {});
// }),),
