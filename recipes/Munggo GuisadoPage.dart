import 'package:flutter/material.dart';

class MunggoGuisadoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Munggo Guisado',
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
                      'lib/assets/munggo guisado.jpeg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Munggo Guisado',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Munggo Guisado is a Filipino dish made from mung beans cooked with pork, shrimp, and various vegetables. It is a hearty and nutritious dish commonly served during Fridays or as comfort food during rainy days. Munggo Guisado is best enjoyed with steamed rice and is sure to warm your heart and soul!\n',
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
                  Text('• 1 cup mung beans (munggo), washed and drained'),
                  Text('• 2 tablespoons cooking oil'),
                  Text('• 1 onion, chopped'),
                  Text('• 3 cloves garlic, minced'),
                  Text('• 200g pork belly, sliced into small pieces'),
                  Text('• 100g shrimp, peeled and deveined'),
                  Text('• 2 tomatoes, chopped'),
                  Text('• 1 cup spinach leaves'),
                  Text('• 4 cups water or pork broth'),
                  Text('• Fish sauce (patis) to taste'),
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
                    '1. In a pot, heat cooking oil over medium heat. Sauté the chopped onion and minced garlic until fragrant.\n',
                  ),
                  Text(
                    '2. Add the sliced pork belly and cook until browned.\n',
                  ),
                  Text(
                    '3. Stir in the washed and drained mung beans and cook for a few minutes.\n',
                  ),
                  Text(
                    '4. Pour in water or pork broth and bring to a boil. Lower the heat and let it simmer until the mung beans are soft and starting to break apart, about 45 minutes to 1 hour.\n',
                  ),
                  Text(
                    '5. Once the mung beans are cooked, add the chopped tomatoes and shrimp. Cook until the shrimp turn pink.\n',
                  ),
                  Text(
                    '6. Season with fish sauce (patis), salt, and pepper to taste.\n',
                  ),
                  Text(
                    '7. Add the spinach leaves and cook until wilted.\n',
                  ),
                  Text(
                    '8. Adjust seasoning if needed.\n',
                  ),
                  Text(
                    '9. Serve hot with steamed rice.\n',
                  ),
                  Text(
                    '10. Enjoy your delicious Munggo Guisado!\n',
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
