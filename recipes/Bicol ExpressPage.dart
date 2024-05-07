import 'package:flutter/material.dart';

class BicolExpressPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Bicol Express',
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
                      'lib/assets/bicol express.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Bicol Express (Spicy Pork Coconut Stew)',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Bicol Express is a traditional Filipino dish originating from the Bicol region. It`s made with pork cooked in coconut milk and chili peppers, resulting in a rich and spicy stew that`s perfect with rice!\n',
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
                        '40 mins',
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
                        '55 mins',
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
                  Text('• 500g pork belly or shoulder, thinly sliced'),
                  Text('• 2 cups coconut milk'),
                  Text('• 4 cloves garlic, minced'),
                  Text('• 1 onion, chopped'),
                  Text('• 5-6 pieces Thai chili peppers (adjust to taste)'),
                  Text('• 2 tablespoons shrimp paste (bagoong alamang)'),
                  Text('• 1 tablespoon cooking oil'),
                  Text('• Salt and pepper, to taste'),
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
                    '1. In a skillet or pot, heat cooking oil over medium heat. Saute garlic and onion until fragrant.\n',
                  ),
                  Text(
                    '2. Add pork slices and cook until lightly browned.\n',
                  ),
                  Text(
                    '3. Stir in shrimp paste (bagoong alamang) and cook for another minute.\n',
                  ),
                  Text(
                    '4. Pour coconut milk into the pot. Add Thai chili peppers. Stir to combine.\n',
                  ),
                  Text(
                    '5. Bring to a simmer and cook uncovered for about 30 minutes or until pork is tender and the sauce has thickened.\n',
                  ),
                  Text(
                    '6. Season with salt and pepper to taste.\n',
                  ),
                  Text(
                    '7. Serve hot, garnished with chopped green onions.\n',
                  ),
                  Text(
                    '8. Enjoy your spicy and flavorful Bicol Express!\n',
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
