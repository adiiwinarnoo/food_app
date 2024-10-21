part of 'pages.dart';

class FoodDetailsPage extends StatefulWidget {
  final Function onBackButtonPressed;
  final TransactionModel transactionModel;

  const FoodDetailsPage(
      {super.key,
      required this.onBackButtonPressed,
      required this.transactionModel});

  static String idKey = "FoodDetailsPage";

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  int quantity = 0;
  @override
  Widget build(BuildContext context) {
    quantity = widget.transactionModel.quantity!;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: mainColor,
          ),
          SafeArea(
            child: Container(
              color: Colors.white,
            ),
          ),
          SafeArea(
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                          NetworkImage(widget.transactionModel.food.imagePath),
                      fit: BoxFit.cover)),
            ),
          ),
          SafeArea(
              child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    height: 100,
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          if (widget.onBackButtonPressed != null) {
                            widget.onBackButtonPressed();
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.black12,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/back_arrow_white.png'))),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 180),
                    padding: EdgeInsets.symmetric(vertical: 26, horizontal: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width - 144,
                                    child: Text(
                                      widget.transactionModel.food.name,
                                      style: blackFontText16,
                                    )),
                                SizedBox(
                                  height: 10,
                                ),
                                RatingStarsPage(
                                    rate: widget.transactionModel.food.rate)
                              ],
                            ),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      quantity = max(1, quantity - 1);
                                      widget.transactionModel.quantity = quantity;
                                    });
                                  },
                                  child: Container(
                                    width: 26,
                                    height: 26,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(width: 1),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/btn_min.png'))),
                                  ),
                                ),
                                SizedBox(
                                  width: 35,
                                  child: Text(
                                    widget.transactionModel.quantity.toString(),
                                    textAlign: TextAlign.center,
                                    style: blackFontText14,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      quantity = min(999, quantity + 1);
                                      widget.transactionModel.quantity = quantity;
                                    });
                                  },
                                  child: Container(
                                    width: 26,
                                    height: 26,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(width: 1),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/btn_add.png'))),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 15, 0, 16),
                          child: Text(
                            widget.transactionModel.food.description,
                            style: greyText,
                          ),
                        ),
                        Text(
                          "Ingredients",
                          style: blackFontText16,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          widget.transactionModel.food.ingredients,
                          style: greyText,
                        ),
                        SizedBox(height: 35),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Total Price :",
                                  style: greyText,
                                ),
                                Text(
                                  NumberFormat.currency(
                                          locale: "id-ID",
                                          symbol: "Rp. ",
                                          decimalDigits: 0)
                                      .format(quantity *
                                          widget.transactionModel.food.price),
                                  style: blackFontText22.copyWith(fontSize: 24),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 163,
                              height: 45,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text("Order Now",style: blackFontText16.copyWith(fontSize: 18),),
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: mainColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(8))),
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
