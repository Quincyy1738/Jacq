import 'package:flutter/material.dart';

class SisigPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Sisig',
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
                  'lib/assets/sisig.jpg', // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(height: 20), // Add space between image and text
          Text(
            'Sisig',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              'Sisig is a popular Filipino dish made from parts of pig`s head and liver, usually seasoned with calamansi, onions, and chili peppers. It originated from the culinary capital of the Philippines, Pampanga, and has become a favorite appetizer or pulutan (beer match) among Filipinos. This Sisig recipe is easy to make and perfect for sharing with friends and family. Enjoy it sizzling hot straight from the grill!\n',
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
          Text('• 1 lb pig\'s head (ears, cheeks, and jowls), boiled and chopped'),
          Text('• 1/2 cup pig\'s liver, boiled and chopped'),
          Text('• 1 large onion, minced'),
          Text('• 4 cloves garlic, minced'),
          Text('• 2-3 pieces green chili peppers (siling haba), minced'),
          Text('• 2 pieces red chili peppers (siling labuyo), minced (optional)'),
          Text('• 3 tablespoons calamansi juice'),
          Text('• 3 tablespoons soy sauce'),
          Text('• 1 teaspoon ground black pepper'),
          Text('• 1 tablespoon mayonnaise'),
          Text('• Salt to taste'),
          Text('• Cooking oil'),
          Text('• Chopped green onions and sliced calamansi, for garnish'),
          Text('• Sizzling plate (optional)'),
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
            '1. Heat a skillet or grill over medium-high heat. Add cooking oil and sauté the minced garlic and onions until fragrant.\n',
          ),
          Text(
            '2. Add the chopped pig\'s head and liver. Cook until slightly crispy and browned.\n',
          ),
          Text(
            '3. Add the minced green chili peppers and red chili peppers (if using). Stir well to combine.\n',
          ),
          Text(
            '4. Season with soy sauce, calamansi juice, ground black pepper, and salt to taste. Mix well.\n',
          ),
          Text(
            '5. Add the mayonnaise and stir until everything is well-coated.\n',
          ),
          Text(
            '6. Transfer the sisig to a sizzling plate (if using) or a serving dish. Garnish with chopped green onions and sliced calamansi.\n',
          ),
          Text(
            '7. Serve hot and enjoy your delicious Sisig!\n',
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
