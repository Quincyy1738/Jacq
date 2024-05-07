import 'package:flutter/material.dart';

class LechonKawaliPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Lechon Kawali',
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
                      'lib/assets/lechon kawali.webp', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Lechon Kawali',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Lechon Kawali is a popular Filipino dish of crispy deep-fried pork belly. It is typically served with a dipping sauce made of vinegar, soy sauce, and spices. Lechon Kawali is often enjoyed as a main dish or served as a pulutan (appetizer) during gatherings.\n',
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
                        '1 hr',
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
                        '1 hr 10 mins',
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
                  Text('• 1 kg pork belly, slab or cut into serving pieces'),
                  Text('• 4 cups water'),
                  Text('• 4 cloves garlic, crushed'),
                  Text('• 1 onion, quartered'),
                  Text('• 2 bay leaves (laurel)'),
                  Text('• Salt and pepper, to taste'),
                  Text('• Cooking oil, for deep-frying'),
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
                    '1. In a large pot, combine pork belly, water, garlic, onion, bay leaves, salt, and pepper.\n',
                  ),
                  Text(
                    '2. Bring to a boil over medium heat, then lower the heat and simmer until pork is tender, about 45 minutes to 1 hour. Add more water if needed.\n',
                  ),
                  Text(
                    '3. Remove pork from the pot and drain excess liquid. Refrigerate for at least 1 hour or overnight to dry out the skin.\n',
                  ),
                  Text(
                    '4. Heat cooking oil in a deep fryer or heavy-bottomed pot to 350°F (175°C).\n',
                  ),
                  Text(
                    '5. Carefully lower the pork belly into the hot oil and deep-fry until the skin is golden brown and crispy, about 10-15 minutes.\n',
                  ),
                  Text(
                    '6. Remove the pork from the oil and drain on paper towels to remove excess oil.\n',
                  ),
                  Text(
                    '7. Let it rest for a few minutes before slicing into serving pieces.\n',
                  ),
                  Text(
                    '8. Serve hot with steamed rice and your favorite dipping sauce.\n',
                  ),
                  Text(
                    '9. Enjoy your crispy and delicious Lechon Kawali!\n',
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
