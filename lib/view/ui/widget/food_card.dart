part of 'widget.dart';

class FoodCardPage extends StatelessWidget {
  final FoodModels foodModels;

  const FoodCardPage({super.key, required this.foodModels});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(spreadRadius: 3, blurRadius: 15, color: Colors.black12)
          ]),
      child: Column(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                image: DecorationImage(
                    image: NetworkImage(foodModels.imagePath),
                    fit: BoxFit.cover)),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 12, 12, 5),
            width: 200,
            child: Text(
              foodModels.name,
              style: blackFontText16,
              maxLines: 1,
              overflow: TextOverflow.clip,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: RatingStarsPage(rate: foodModels.rate),
          )
        ],
      ),
    );
  }
}
