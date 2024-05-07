import 'package:flutter/material.dart';

class TortangTalongPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Tortang Talong',
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
                      'lib/assets/tortang talong.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Tortang Talong',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Tortang Talong is a Filipino eggplant omelette dish wherein grilled eggplants are dipped in egg mixture and then fried until golden brown. It is a simple yet delicious dish that is often served as a main course or as a side dish in Filipino households. This Tortang Talong recipe is easy to make and can be customized according to your preference. Enjoy it with rice and your favorite dipping sauce!\n',
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
                  Text('• 4 large eggplants'),
                  Text('• 4 eggs'),
                  Text('• 1/4 cup milk'),
                  Text('• Salt and pepper to taste'),
                  Text('• Cooking oil'),
                  Text('• Optional toppings: sliced tomatoes, minced onions, chopped parsley'),
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
                    '1. Preheat oven to 375°F (190°C). Place the eggplants on a baking sheet and roast in the oven for 20-25 minutes or until the skins are charred and the flesh is soft.\n',
                  ),
                  Text(
                    '2. Remove the eggplants from the oven and let them cool slightly. Peel off the skin and flatten the flesh using a fork or spoon.\n',
                  ),
                  Text(
                    '3. In a shallow bowl, beat the eggs and milk together. Season with salt and pepper to taste.\n',
                  ),
                  Text(
                    '4. Heat cooking oil in a skillet over medium heat. Dip each flattened eggplant in the egg mixture, making sure it is well-coated.\n',
                  ),
                  Text(
                    '5. Fry the eggplant in the hot oil until golden brown on both sides, about 2-3 minutes per side.\n',
                  ),
                  Text(
                    '6. Remove the fried eggplants from the skillet and drain on paper towels to remove excess oil.\n',
                  ),
                  Text(
                    '7. Serve the Tortang Talong hot with rice and your favorite dipping sauce. Enjoy!\n',
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
