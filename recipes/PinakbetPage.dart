import 'package:flutter/material.dart';

class PinakbetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Pinakbet',
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
                      'lib/assets/pinakbet.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Pinakbet',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Pinakbet is a traditional Filipino vegetable dish made with mixed vegetables and flavored with shrimp paste (bagoong). It typically includes eggplant, bitter melon (ampalaya), squash, string beans, tomatoes, and sometimes okra and winged beans. Pinakbet is known for its savory and slightly bitter taste, and it is often served as a main dish or as a side dish to complement grilled or fried meat. This Pinakbet recipe is easy to make and bursting with flavors that will delight your taste buds.\n',
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
                  Text('• 2 tbsp cooking oil'),
                  Text('• 4 cloves garlic, minced'),
                  Text('• 1 onion, chopped'),
                  Text('• 2 tomatoes, chopped'),
                  Text('• 1 small bitter melon (ampalaya), sliced'),
                  Text('• 1 medium eggplant, sliced'),
                  Text('• 1 cup squash, cubed'),
                  Text('• 1 cup okra'),
                  Text('• 1 cup string beans, cut into 2-inch pieces'),
                  Text('• 1 cup winged beans (sigarilyas), sliced (optional)'),
                  Text('• 1 cup water or vegetable broth'),
                  Text('• 2 tbsp shrimp paste (bagoong)'),
                  Text('• Salt and pepper to taste'),
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
                    '1. Heat cooking oil in a pan over medium heat.\n',
                  ),
                  Text(
                    '2. Saute minced garlic until golden brown.\n',
                  ),
                  Text(
                    '3. Add chopped onion and cook until translucent.\n',
                  ),
                  Text(
                    '4. Stir in chopped tomatoes and cook until softened.\n',
                  ),
                  Text(
                    '5. Add bitter melon (ampalaya), eggplant, squash, okra, string beans, and winged beans (if using). Mix well.\n',
                  ),
                  Text(
                    '6. Pour water or vegetable broth into the pan. Cover and simmer for 10-15 minutes or until the vegetables are tender.\n',
                  ),
                  Text(
                    '7. Stir in shrimp paste (bagoong) and cook for another 2-3 minutes.\n',
                  ),
                  Text(
                    '8. Season with salt and pepper to taste.\n',
                  ),
                  Text(
                    '9. Serve hot with steamed rice.\n',
                  ),
                  Text(
                    '10. Enjoy your delicious Pinakbet!\n',
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
