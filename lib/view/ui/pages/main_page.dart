part of 'pages.dart';

class MainPage extends StatefulWidget {
  static String idKey = "MainPageKey";
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedPage = 0;
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(child: Container(color: "FAFAFC".toColor(),)),
          SafeArea(child: PageView(
            controller: pageController,
            onPageChanged: (index){
              setState(() {
                selectedPage = index;
              });
            },
            children: [
              Center(child: FoodPage(),),
              Center(child: Text("Order"),),
              Center(child: Text("Profile"),),
            ],
          )),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomBottomNavbar(selectedIndex: selectedPage,onTapBottom: (index){
              setState(() {
                selectedPage = index;
              });
              pageController.jumpToPage(selectedPage);
            },),
          )
        ],
      ),
    );
  }
}
