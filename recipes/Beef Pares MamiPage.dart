import 'package:flutter/material.dart';

class BeefParesMamiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Beef Pares Mami',
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
                      'lib/assets/beef pares mami.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Beef Pares Mami (Filipino Beef Noodle Soup)',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Beef Pares Mami is a popular Filipino noodle soup dish consisting of beef stew (pares) served with egg noodles (mami). It\'s flavorful, comforting, and perfect for any meal of the day!\n',
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
                        '30 mins',
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
                        '1 hr 30 mins',
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
                  Text('• 1 kg beef brisket or shank, cut into serving pieces'),
                  Text('• 8 cups water'),
                  Text('• 4 cloves garlic, minced'),
                  Text('• 1 onion, chopped'),
                  Text('• 1 thumb-sized ginger, sliced'),
                  Text('• 1/2 cup soy sauce'),
                  Text('• 1/4 cup brown sugar'),
                  Text('• Salt and pepper, to taste'),
                  Text('• Cooking oil'),
                  Text('• 500g egg noodles (mami)'),
                  Text('• 4 hard-boiled eggs, halved'),
                  Text('• Green onions, chopped, for garnish'),
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
                    '1. In a pot, heat cooking oil over medium heat. Saute garlic, onion, and ginger until aromatic.\n',
                  ),
                  Text(
                    '2. Add beef pieces and cook until browned.\n',
                  ),
                  Text(
                    '3. Pour soy sauce and water into the pot. Add brown sugar, salt, and pepper. Stir to combine.\n',
                  ),
                  Text(
                    '4. Bring to a boil, then reduce heat to low. Cover and simmer for about 1 to 1.5 hours or until beef is tender.\n',
                  ),
                  Text(
                    '5. Meanwhile, cook egg noodles (mami) according to package instructions. Drain and set aside.\n',
                  ),
                  Text(
                    '6. Once the beef is tender, adjust seasoning with more salt and pepper if needed.\n',
                  ),
                  Text(
                    '7. To serve, place cooked egg noodles in bowls. Ladle beef stew over the noodles. Top with halved hard-boiled eggs and chopped green onions.\n',
                  ),
                  Text(
                    '8. Enjoy your delicious Beef Pares Mami!\n',
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
