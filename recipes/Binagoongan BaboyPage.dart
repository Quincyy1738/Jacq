import 'package:flutter/material.dart';

class BinagoonganBaboyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Binagoongan Baboy',
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
                  'lib/assets/binagoongan baboy.jpg', // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(height: 20), // Add space between image and text
          Text(
            'Binagoongan Baboy (Pork in Shrimp Paste)',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Binagoongan Baboy is a Filipino pork dish cooked with shrimp paste, tomatoes, and chili peppers. It`s a savory and slightly tangy dish that pairs well with steamed rice!\n',
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
                  '45 mins',
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
                  '1 hr',
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
            Text('• 500g pork belly or shoulder, diced'),
            Text('• 3 tablespoons shrimp paste (bagoong alamang)'),
            Text('• 2 tomatoes, diced'),
            Text('• 1 onion, diced'),
            Text('• 4 cloves garlic, minced'),
            Text('• 2-3 chili peppers (siling labuyo), chopped'),
            Text('• 1/4 cup vinegar'),
            Text('• 1/4 cup water'),
            Text('• 1 tablespoon sugar'),
            Text('• Cooking oil'),
            Text('• Salt and pepper, to taste'),
            Text('• Green onions, chopped, for garnish (optional)'),
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
              '1. Heat cooking oil in a pan over medium heat. Add the diced pork and cook until lightly browned.\n',
            ),
            Text(
              '2. Add minced garlic and cook until fragrant.\n',
            ),
            Text(
              '3. Stir in shrimp paste (bagoong alamang) and cook for 2-3 minutes.\n',
            ),
            Text(
              '4. Add diced tomatoes, onions, and chili peppers. Cook until the vegetables are soft.\n',
            ),
            Text(
              '5. Pour in vinegar and water. Add sugar, salt, and pepper. Stir to combine.\n',
            ),
            Text(
              '6. Simmer uncovered for about 30-40 minutes or until the pork is tender and the sauce has thickened.\n',
            ),
            Text(
              '7. Adjust seasoning according to taste.\n',
            ),
            Text(
              '8. Serve hot with steamed rice. Garnish with chopped green onions, if desired.\n',
            ),
            Text(
              '9. Enjoy your delicious Binagoongan Baboy!\n',
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
