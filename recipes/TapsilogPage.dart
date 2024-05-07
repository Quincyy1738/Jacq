import 'package:flutter/material.dart';

class TapsilogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Tapsilog',
          style: TextStyle(
            color: Colors.black.withOpacity(.7),
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black.withOpacity(.7),
          ),
          onPressed: () => Navigator.maybePop(context),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0), // Add padding around the body
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width * 3 / 4, // 4:3 aspect ratio
                    color: Colors.grey, // Placeholder color while image loads
                  ),
                  Positioned.fill(
                    child: Image.asset(
                      'lib/assets/tapsilog.webp', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Tapsilog (Filipino Breakfast Combo)',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Tapsilog is a classic Filipino breakfast dish, combining the flavors of marinated beef (Tapa), fried rice (Sinangag), and fried egg (Itlog). It\'s a hearty and delicious meal to start your day!\n',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20), // Add space between description and labels
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        'Prep',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '15 mins',
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Cook Time',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '20 mins',
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Total Time',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '35 mins',
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between labels and ingredients
              Text(
                'Ingredients:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10), // Add space between ingredients title and list
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('• 500g beef sirloin, thinly sliced'),
                  Text('• 1/4 cup soy sauce'),
                  Text('• 2 tablespoons vinegar'),
                  Text('• 4 cloves garlic, minced'),
                  Text('• 2 tablespoons brown sugar'),
                  Text('• 4 cups cooked rice, cooled and dry'),
                  Text('• 4 eggs'),
                  Text('• Salt and pepper to taste'),
                  Text('• Cooking oil for frying'),
                ],
              ),
              SizedBox(height: 20), // Add space between ingredients and instructions
              Text(
                'Instructions:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10), // Add space between instructions title and text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '1. In a bowl, combine soy sauce, vinegar, minced garlic, and brown sugar. Mix well until sugar is dissolved. Marinate the sliced beef in this mixture for at least 1 hour, or overnight for best results.\n',
                  ),
                  Text(
                    '2. Heat cooking oil in a skillet over medium heat. Fry the marinated beef slices until cooked through and slightly caramelized, about 3-4 minutes per side. Remove from heat and set aside.\n',
                  ),
                  Text(
                    '3. In the same skillet, fry the eggs according to your preference (sunny-side-up or over easy).\n',
                  ),
                  Text(
                    '4. In another skillet or wok, heat some oil over medium heat. Add the cooked rice and stir-fry until heated through and slightly crispy.\n',
                  ),
                  Text(
                    '5. Serve the fried rice alongside the cooked beef and eggs. Season with salt and pepper to taste.\n',
                  ),
                  Text(
                    '6. Enjoy your delicious Tapsilog breakfast!\n',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
