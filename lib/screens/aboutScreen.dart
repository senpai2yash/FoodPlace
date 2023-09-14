// ignore: file_names
import 'package:flutter/material.dart';
import '../const/colors.dart';
import '../utils/helper.dart';
import '../widgets/customNavBar.dart';

class AboutScreen extends StatelessWidget {
  static const routeName = "/aboutScreen";

  const AboutScreen({super.key});
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_rounded,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "About Us",
                          style: Helper.getTheme(context).headlineSmall,
                        ),
                      ),
                      Image.asset(
                        Helper.getAssetName("cart.png", "virtual"),
                      ),
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "About FoodPlace",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: AppColor.orange
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Welcome to FoodPlace, your ultimate destination for delicious dining experiences!",
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Who We Are",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColor.orange
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "At FoodPlace, we're passionate about bringing people together through the love of food. Our team of culinary experts, food enthusiasts, and technology wizards has crafted this app to make your dining adventures more enjoyable and convenient.",
                          ),
                          SizedBox(height: 20),
                          Text(
                            "What We Do",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColor.orange
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "FoodPlace is your trusted companion for discovering the best restaurants, cafes, and eateries around you. Whether you're craving a mouthwatering burger, a gourmet coffee, or a sweet dessert, we've got you covered. Explore a world of culinary delights with our easy-to-use app.",
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Key Features",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColor.orange
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Restaurant Finder: Find nearby restaurants and explore their menus, opening hours, and reviews.",
                          ),
                          Text(
                            "Customized Recommendations: Receive personalized restaurant recommendations based on your preferences.",
                          ),
                          Text(
                            "Order with Ease: Order your favorite dishes for dine-in, takeout, or delivery.",
                          ),
                          Text(
                            "Exclusive Offers: Enjoy special discounts and promotions at select restaurants.",
                          ),
                          Text(
                            "Foodie Community: Connect with fellow foodies, share your dining experiences, and discover hidden gems.",
                          ),
                          Text(
                            "User-Friendly Interface: Our app is designed with you in mind, making it simple and enjoyable to use.",
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Join the Foodie Community",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColor.orange
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Follow us on social media for food inspiration, restaurant spotlights, and more:",
                          ),
                          Text(
                            "Facebook: facebook.com/FoodPlace",
                          ),
                          Text(
                            "Instagram: instagram.com/FoodPlace",
                          ),
                          Text(
                            "Twitter: twitter.com/FoodPlace",
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Thank You for Choosing FoodPlace",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color:AppColor.orange
                            ),
                          ),
                       ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Positioned widget remains here
          Positioned(
            bottom: 0,
            left: 0,
            child: CustomNavBar(
              menu: true,
            ),
          ),
        ],
      ),
    );
  }
}
