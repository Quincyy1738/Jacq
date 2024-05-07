import 'package:flutter/material.dart';

class TosilogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Tosilog',
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
                      'lib/assets/tosilog.webp', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Tosilog (Filipino Breakfast Combo)',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Tosilog is a classic Filipino breakfast dish that combines tocino (sweet cured pork), sinangag (garlic fried rice), and itlog (fried egg). This hearty and flavorful meal is a popular choice for breakfast or brunch in the Philippines. Enjoy Tosilog with a side of sliced tomatoes or atchara (pickled papaya) for a delightful breakfast experience!\n',
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
                        '10 mins',
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
                        '30 mins',
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
                  Text('• 500g tocino (Filipino sweet cured pork)'),
                  Text('• 4 cups cooked rice, cooled and dry'),
                  Text('• 4 eggs'),
                  Text('• Cooking oil for frying'),
                  Text('• Salt and pepper to taste'),
                  Text('• Optional garnish: sliced tomatoes, atchara (pickled papaya)'),
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
                    '1. In a skillet, heat cooking oil over medium heat. Fry the tocino until caramelized and cooked through, about 3-4 minutes per side. Remove from skillet and set aside.\n',
                  ),
                  Text(
                    '2. In the same skillet, fry the eggs according to your preference (sunny-side-up or over easy).\n',
                  ),
                  Text(
                    '3. In another skillet or wok, heat some oil over medium heat. Add the cooked rice and stir-fry until heated through and slightly crispy.\n',
                  ),
                  Text(
                    '4. Serve the fried rice alongside the cooked tocino and eggs. Season with salt and pepper to taste.\n',
                  ),
                  Text(
                    '5. Garnish with sliced tomatoes or atchara (pickled papaya), if desired.\n',
                  ),
                  Text(
                    '6. Enjoy your delicious Tosilog breakfast!\n',
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
