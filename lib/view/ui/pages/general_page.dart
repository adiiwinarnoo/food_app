part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  final String title;
  final String subTitle;
  final void Function()? onBackPressed;
  final Widget? child;
  final Color backColor;

  GeneralPage({super.key,required this.title, required this.subTitle,
    this.onBackPressed,this.child,required this.backColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          SafeArea(
            child: Container(
              color: backColor ?? Colors.white,
            ),
          ),
          SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                      width: double.infinity,
                      height: 120,
                      color: Colors.white,
                      child: Row(
                        children: [
                          onBackPressed != null ? GestureDetector(
                            onTap: onBackPressed,
                            child: Container(
                              width: defaultMargin,
                              height: defaultMargin,
                              margin: EdgeInsets.only(right: defaultMargin),
                              decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/back_arrow.png'))
                              ),
                            )
                          ) : SizedBox(),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  title,
                                  style: GoogleFonts.poppins(
                                    fontSize: defaultMargin,fontWeight: FontWeight.w500
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  subTitle,
                                  style: GoogleFonts.poppins(
                                      fontSize: defaultMargin,
                                      color: "8D92A3".toColor(), fontWeight: FontWeight.w300
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    child ?? SizedBox()
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

