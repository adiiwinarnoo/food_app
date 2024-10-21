part of 'widget.dart';

class FoodListItem extends StatelessWidget {
  final FoodModels foodModels;
  final double itemWidth;

  const FoodListItem(
      {super.key, required this.foodModels, required this.itemWidth});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          margin: EdgeInsets.only(right: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                  image: NetworkImage(foodModels.imagePath),
                  fit: BoxFit.cover)),
        ),
        SizedBox(
          width: itemWidth - 182,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                foodModels.name,
                style: blackFontText16,
                maxLines: 1,
                overflow: TextOverflow.clip,
              ),
              Text(
                NumberFormat.currency(
                        symbol: 'Rp. ', decimalDigits: 0, locale: 'id-ID')
                    .format(foodModels.price),
                style: greyText,
              )
            ],
          ),
        ),
        RatingStarsPage(rate: foodModels.rate)
      ],
    );
  }
}
