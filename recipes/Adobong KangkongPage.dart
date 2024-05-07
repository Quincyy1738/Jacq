import 'package:flutter/material.dart';

class AdobongKangkongPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Adobong Kangkong',
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
                      'lib/assets/adobong kangkong.JPG', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Adobong Kangkong (Filipino Water Spinach Stew)',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Adobong Kangkong is a classic Filipino dish made with fresh water spinach (Kangkong) stewed in a flavorful mixture of vinegar, soy sauce, garlic, and spices. It\'s a simple yet delicious vegetable dish that pairs well with steamed rice!\n',
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
                        '10 mins',
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
                        '20 mins',
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
                  Text('• 1 bunch kangkong (water spinach), washed and cut into 2-inch lengths'),
                  Text('• 2 tablespoons soy sauce'),
                  Text('• 2 tablespoons vinegar'),
                  Text('• 4 cloves garlic, minced'),
                  Text('• 1 onion, chopped'),
                  Text('• 1 tomato, chopped'),
                  Text('• 1 teaspoon sugar'),
                  Text('• Salt and pepper to taste'),
                  Text('• Cooking oil'),
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
                    '1. In a skillet, heat cooking oil over medium heat. Saute minced garlic, chopped onion, and chopped tomato until softened.\n',
                  ),
                  Text(
                    '2. Add soy sauce, vinegar, sugar, salt, and pepper to the skillet. Stir to combine.\n',
                  ),
                  Text(
                    '3. Add the cut kangkong to the skillet. Stir well to coat the kangkong with the sauce mixture.\n',
                  ),
                  Text(
                    '4. Cover the skillet and let the kangkong cook for about 3-5 minutes, or until wilted and tender.\n',
                  ),
                  Text(
                    '5. Once the kangkong is cooked, remove from heat and transfer to a serving dish.\n',
                  ),
                  Text(
                    '6. Serve hot and enjoy your flavorful Adobong Kangkong!\n',
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
