part of 'pages.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - 2 * defaultMargin;

    return ListView(
      children: [
        Column(
          children: [
            ////HEADER
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              color: Colors.white,
              height: 100,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Food Market',
                        style: blackFontText22,
                      ),
                      Text(
                        'Lets get some foods',
                        style: greyText,
                      )
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://cdn130.picsart.com/235833305097212.png'),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
            ),
            ////LIST OF FOOD
            Container(
              height: 260,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: mockFood
                        .map((e) => Padding(
                              padding: EdgeInsets.only(
                                  left:
                                      (e == mockFood.first) ? defaultMargin : 0,
                                  right: defaultMargin),
                              child: FoodCardPage(foodModels: e),
                            ))
                        .toList(),
                  )
                ],
              ),
            ),
            ////LIST OF FOOD(TABS)
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  CustomTabBar(
                    title: ['New Taste', 'Popular', 'Recomendded'],
                    selectedIndex: selectedIndex,
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                  SizedBox(height: 16),
                  Builder(builder: (_) {
                    List<FoodModels> foods = (selectedIndex == 0)
                        ? mockFood
                        : (selectedIndex == 1)
                            ? [mockFood[5]]
                            : [mockFood[4]];
                    return Column(
                      children: foods
                          .map((e) => Padding(
                            padding: EdgeInsets.fromLTRB(defaultMargin, 0, defaultMargin, 15),
                            child: FoodListItem(
                                foodModels: e, itemWidth: listItemWidth),
                          ))
                          .toList(),
                    );
                  })
                ],
              ),
            ),
            SizedBox(
              height: 80,
            )
          ],
        )
      ],
    );
  }
}
