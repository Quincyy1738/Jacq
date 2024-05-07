import 'package:flutter/material.dart';

class MenudoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Menudo',
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
                      'lib/assets/menudo1.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Menudo',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Menudo is a classic Filipino stew made with pork, liver, potatoes, carrots, and bell peppers in a rich tomato sauce. It is a hearty and flavorful dish that is often served during special occasions and gatherings. Menudo is best enjoyed with steamed rice and is sure to satisfy your cravings for Filipino comfort food!\n',
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
                  Text('• 500g pork shoulder, diced'),
                  Text('• 200g pork liver, diced'),
                  Text('• 2 tablespoons cooking oil'),
                  Text('• 1 onion, chopped'),
                  Text('• 3 cloves garlic, minced'),
                  Text('• 2 potatoes, diced'),
                  Text('• 1 carrot, diced'),
                  Text('• 1 red bell pepper, diced'),
                  Text('• 1 green bell pepper, diced'),
                  Text('• 1 cup tomato sauce'),
                  Text('• 1 cup water or pork broth'),
                  Text('• 2 tablespoons soy sauce'),
                  Text('• 1 tablespoon vinegar'),
                  Text('• 1 tablespoon sugar'),
                  Text('• Salt and pepper to taste'),
                  Text('• Green peas (optional, for garnish)'),
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
                    '1. In a large pot or skillet, heat cooking oil over medium heat. Add the diced pork shoulder and cook until browned on all sides. Remove the pork from the pot and set aside.\n',
                  ),
                  Text(
                    '2. In the same pot, sauté the chopped onion and minced garlic until fragrant.\n',
                  ),
                  Text(
                    '3. Add the diced pork liver to the pot and cook until browned.\n',
                  ),
                  Text(
                    '4. Return the browned pork shoulder to the pot. Add the diced potatoes, carrots, and bell peppers. Stir to combine.\n',
                  ),
                  Text(
                    '5. Pour in the tomato sauce and water or pork broth. Add soy sauce, vinegar, sugar, salt, and pepper. Stir well to combine all ingredients.\n',
                  ),
                  Text(
                    '6. Bring the mixture to a boil, then reduce the heat to low. Cover the pot and simmer for about 45 minutes to 1 hour, or until the pork and vegetables are tender.\n',
                  ),
                  Text(
                    '7. Adjust the seasoning with salt and pepper if needed.\n',
                  ),
                  Text(
                    '8. Serve hot with steamed rice. Garnish with green peas, if desired.\n',
                  ),
                  Text(
                    '9. Enjoy your delicious Menudo!\n',
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
