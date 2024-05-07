import 'package:flutter/material.dart';

class AfridataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Afridata',
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
                      'lib/assets/afridata.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Afridata (African Inspired Dish)',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Afridata is a delicious African-inspired dish that combines the flavors of various traditional African ingredients. It\'s a flavorful and hearty meal that brings together the rich culinary heritage of Africa!\n',
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
                        '20 mins',
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
                        '30 mins',
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
                        '50 mins',
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
                  Text('• 500g chicken, cut into pieces'),
                  Text('• 2 cups rice'),
                  Text('• 1 onion, finely chopped'),
                  Text('• 2 tomatoes, diced'),
                  Text('• 1 bell pepper, chopped'),
                  Text('• 2 cloves garlic, minced'),
                  Text('• 1 tablespoon ginger, grated'),
                  Text('• 2 tablespoons curry powder'),
                  Text('• 1 cup coconut milk'),
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
                    '1. In a large skillet or pot, heat cooking oil over medium heat. Add chopped onions, minced garlic, and grated ginger. Saute until fragrant.\n',
                  ),
                  Text(
                    '2. Add chicken pieces to the skillet and cook until browned on all sides.\n',
                  ),
                  Text(
                    '3. Stir in diced tomatoes, chopped bell pepper, and curry powder. Cook for another 5 minutes.\n',
                  ),
                  Text(
                    '4. Add rice to the skillet and stir to combine with the chicken and vegetables.\n',
                  ),
                  Text(
                    '5. Pour in coconut milk and season with salt and pepper. Bring to a simmer.\n',
                  ),
                  Text(
                    '6. Cover the skillet and let the Afridata cook for about 20-25 minutes, or until the rice is cooked and the chicken is tender.\n',
                  ),
                  Text(
                    '7. Once done, remove from heat and let it sit for a few minutes before serving.\n',
                  ),
                  Text(
                    '8. Serve hot and enjoy your flavorful Afridata!\n',
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
