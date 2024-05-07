import 'package:flutter/material.dart';

class LaPazBatchoyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'La Paz Batchoy',
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
                      'lib/assets/lapaz batchoy.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'La Paz Batchoy',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'La Paz Batchoy is a popular Filipino noodle soup that originated from La Paz district in Iloilo City. It features egg noodles, pork offal, and pork cracklings in a flavorful broth. It is often garnished with green onions, garlic, and sometimes topped with a raw egg.\n',
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
                        '1 hr 20 mins',
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
                  Text('• 500g egg noodles (miki or bihon)'),
                  Text('• 250g pork belly, sliced thinly'),
                  Text('• 250g pork liver, sliced thinly'),
                  Text('• 4 cups pork broth'),
                  Text('• 1/2 cup pork cracklings (chicharon), crushed'),
                  Text('• 4 cloves garlic, minced'),
                  Text('• 1 small onion, chopped'),
                  Text('• 2 tablespoons cooking oil'),
                  Text('• Fish sauce (patis) and ground black pepper, to taste'),
                  Text('• Hard-boiled eggs (optional)'),
                  Text('• Chopped green onions (for garnish)'),
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
                    '1. In a pot, heat cooking oil over medium heat. Saute garlic and onion until fragrant.\n',
                  ),
                  Text(
                    '2. Add the sliced pork belly and cook until lightly browned.\n',
                  ),
                  Text(
                    '3. Add the sliced pork liver and cook until no longer pink.\n',
                  ),
                  Text(
                    '4. Pour in the pork broth and bring to a simmer. Season with fish sauce and ground black pepper to taste.\n',
                  ),
                  Text(
                    '5. Add the egg noodles to the pot and cook until tender.\n',
                  ),
                  Text(
                    '6. Divide the cooked noodles and broth into serving bowls.\n',
                  ),
                  Text(
                    '7. Top each bowl with crushed pork cracklings, chopped green onions, and optional hard-boiled egg.\n',
                  ),
                  Text(
                    '8. Serve hot and enjoy your delicious La Paz Batchoy!\n',
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
