import 'package:flutter/material.dart';

class ChickenTinolaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Chicken Tinola',
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
                      'lib/assets/chicken tinola.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Chicken Tinola',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Chicken Tinola is a traditional Filipino ginger-based soup dish with chicken, papaya or chayote, and chili leaves (malunggay or spinach). It is known for its comforting and rejuvenating properties and is often served with rice.\n',
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
                        '45 mins',
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
                  Text('• 1 kg chicken, cut into serving pieces'),
                  Text('• 1 onion, chopped'),
                  Text('• 3 cloves garlic, minced'),
                  Text('• 1 thumb-sized ginger, julienned'),
                  Text('• 2 tablespoons cooking oil'),
                  Text('• 1 liter water or chicken broth'),
                  Text('• 2 medium-sized green papayas or chayote, wedged'),
                  Text('• 2 cups chili leaves (malunggay or spinach)'),
                  Text('• Fish sauce (patis), to taste'),
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
                    '1. Heat cooking oil in a pot over medium heat. Saute garlic, onion, and ginger until aromatic.\n',
                  ),
                  Text(
                    '2. Add chicken pieces and cook until lightly browned.\n',
                  ),
                  Text(
                    '3. Pour water or chicken broth into the pot. Bring to a boil, then simmer for about 20 minutes or until the chicken is tender.\n',
                  ),
                  Text(
                    '4. Add green papayas or chayote wedges and cook for another 5-7 minutes or until tender.\n',
                  ),
                  Text(
                    '5. Season with fish sauce (patis), salt, and pepper according to taste.\n',
                  ),
                  Text(
                    '6. Add chili leaves (malunggay or spinach) and cook for an additional 2 minutes.\n',
                  ),
                  Text(
                    '7. Remove from heat and serve hot.\n',
                  ),
                  Text(
                    '8. Enjoy your comforting Chicken Tinola!\n',
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
