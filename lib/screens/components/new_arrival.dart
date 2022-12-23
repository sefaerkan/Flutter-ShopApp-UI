import 'package:flutter/material.dart';
import 'package:shopping_app/screens/components/product_card.dart';


import 'package:shopping_app/screens/components/section_title.dart';
import 'package:shopping_app/screens/details/details_screen.dart';
import '../../constants.dart';
import '../../models/Product.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitile(
          title: "New Arrival",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demo_product.length,
                  (index) => Padding(
                padding: const EdgeInsets.only(left: defaultPadding),
                child: ProductCard(
                  image: demo_product[index].image,
                  title: demo_product[index].title,
                  price: demo_product[index].price,
                  bgColor: demo_product[index].bgColor,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailsScreen(product: demo_product[index])),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
