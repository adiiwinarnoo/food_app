part of 'widget.dart';

class CustomBottomNavbar extends StatelessWidget {
  final int selectedIndex;
  final Function(int index)? onTapBottom;
  const CustomBottomNavbar({super.key,required this.selectedIndex,this.onTapBottom});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 70,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: (){
              if(onTapBottom!= null){
                onTapBottom!(0);
              }
            },
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/ic_home' + (selectedIndex == 0 ? '.png' : '_normal.png')
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              if(onTapBottom!= null){
                onTapBottom!(1);
              }
            },
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/ic_order' + (selectedIndex == 1 ? '.png' : '_normal.png')
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              if(onTapBottom!= null){
                onTapBottom!(2);
              }
            },
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/ic_profile' + (selectedIndex == 2 ? '.png' : '_normal.png')
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
