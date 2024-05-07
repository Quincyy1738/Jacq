import 'package:flutter/material.dart';

class ChickenAdoboPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Chicken Adobo',
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
                      'lib/assets/chicken adobo.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Chicken Adobo',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Chicken Adobo is a classic Filipino dish made with chicken simmered in a tangy and savory sauce of vinegar, soy sauce, garlic, and spices. It is often served with steamed rice and is a beloved comfort food in the Philippines.\n',
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
                        '40 mins',
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
                  Text('• 1 kg chicken pieces (legs, thighs, or breast)'),
                  Text('• 1/2 cup soy sauce'),
                  Text('• 1/2 cup vinegar (white or cane)'),
                  Text('• 1 head garlic, minced'),
                  Text('• 1 onion, chopped'),
                  Text('• 3 bay leaves'),
                  Text('• 1 teaspoon whole peppercorns'),
                  Text('• 1 cup water'),
                  Text('• 2 tablespoons cooking oil'),
                  Text('• Salt and pepper, to taste'),
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
                    '1. In a large bowl, combine soy sauce, vinegar, minced garlic, chopped onion, bay leaves, and whole peppercorns. Mix well.\n',
                  ),
                  Text(
                    '2. Add chicken pieces to the marinade and toss until evenly coated. Marinate for at least 30 minutes, or overnight in the refrigerator for best results.\n',
                  ),
                  Text(
                    '3. Heat cooking oil in a large skillet or pot over medium heat. Remove chicken from marinade (reserve marinade) and fry until lightly browned on all sides. Remove chicken and set aside.\n',
                  ),
                  Text(
                    '4. In the same skillet or pot, sauté the remaining garlic and onion until softened.\n',
                  ),
                  Text(
                    '5. Return the chicken pieces to the skillet or pot. Add the reserved marinade and water. Bring to a boil, then lower the heat and simmer, covered, for about 20-25 minutes or until the chicken is tender and cooked through.\n',
                  ),
                  Text(
                    '6. Season with salt and pepper to taste. Serve hot with steamed rice.\n',
                  ),
                  Text(
                    '7. Enjoy your delicious Chicken Adobo!\n',
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
