import 'package:flutter/material.dart';

class DaingNaBangusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Daing na Bangus',
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
                      'lib/assets/daing na bangus.webp', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Daing na Bangus',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Daing na Bangus is a Filipino dish of milkfish marinated in vinegar, garlic, salt, and pepper, and then fried until crispy. It is commonly served for breakfast with garlic rice, fried eggs, and a side of sliced tomatoes and salted eggs.\n',
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
                  Text('• 2 large bangus (milkfish), cleaned and sliced'),
                  Text('• 1 cup vinegar'),
                  Text('• 6 cloves garlic, minced'),
                  Text('• 1 teaspoon salt'),
                  Text('• 1/2 teaspoon ground black pepper'),
                  Text('• Cooking oil for frying'),
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
                    '1. In a bowl, combine vinegar, minced garlic, salt, and pepper. Mix well.\n',
                  ),
                  Text(
                    '2. Marinate bangus slices in the vinegar mixture for at least 1 hour, turning occasionally to ensure even marination.\n',
                  ),
                  Text(
                    '3. Heat cooking oil in a frying pan over medium heat.\n',
                  ),
                  Text(
                    '4. Fry the marinated bangus slices until golden brown and crispy, about 5-7 minutes per side.\n',
                  ),
                  Text(
                    '5. Remove from the pan and drain excess oil on paper towels.\n',
                  ),
                  Text(
                    '6. Serve hot with garlic rice, fried eggs, and sliced tomatoes and salted eggs on the side.\n',
                  ),
                  Text(
                    '7. Enjoy your delicious Daing na Bangus!\n',
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
