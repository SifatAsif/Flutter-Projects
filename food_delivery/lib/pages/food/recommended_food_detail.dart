import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                child: Center(
                  child: BigText(
                    size: Dimensions.font26,
                    text: 'Chinese Side',
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/image/food0.png',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  child: ExpandableTextWidget(
                    text:
                        'class RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass RecommendedFoodDetail extends StatelessWidgetclass ',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: Dimensions.height10,
              bottom: Dimensions.height10,
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.remove,
                  iconSize: Dimensions.iconSize24,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                ),
                BigText(
                  text: '\$12.88' + ' X' + ' 0',
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                  icon: Icons.add,
                  iconSize: Dimensions.iconSize24,
                  backgroundColor: AppColors.mainColor,
                  iconColor: Colors.white,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: Dimensions.height20,
              bottom: Dimensions.height20,
              left: Dimensions.width20,
              right: Dimensions.width20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.favorite,
                  iconSize: Dimensions.iconSize24,
                  backgroundColor: Colors.white,
                  iconColor: AppColors.mainColor,
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(Dimensions.radius20),
                    ),
                  ),
                  child: BigText(
                    text: '\$ 28 | Add to cart',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
