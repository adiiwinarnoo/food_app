part of 'widget.dart';

class CustomTabBar extends StatelessWidget {
  final int? selectedIndex;
  final List<String> title;
  final Function(int)? onTap;

  const CustomTabBar(
      {super.key, required this.title, this.selectedIndex, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 48),
            height: 1,
            color: "F2F2F2".toColor(),
          ),
          Row(
            children: title
                .map((titles) => Padding(
                      padding: EdgeInsets.only(left: defaultMargin),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: (){
                              if (onTap != null){
                                onTap!(title.indexOf(titles));
                              }
                            },
                            child: Text(
                              titles,
                              style: (title.indexOf(titles) == selectedIndex
                                  ? blackFontText16
                                  : greyText),
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 3,
                            margin: EdgeInsets.only(top: 13),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.5),
                              color: (title.indexOf(titles) == selectedIndex)
                                  ? "020202".toColor()
                                  : Colors.transparent,
                            ),
                          )
                        ],
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
