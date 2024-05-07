import 'package:flutter/material.dart';

class ArrozValencianaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Arroz Valenciana',
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
                      'lib/assets/arroz valenciana.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Arroz Valenciana (Filipino Rice Casserole)',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Arroz Valenciana is a traditional Filipino rice casserole made with glutinous rice (malagkit), coconut milk, and various meats and vegetables. It\'s a festive dish often served during special occasions and gatherings!\n',
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
                        '1 hr 30 mins',
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
                        '2 hrs',
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
                  Text('• 2 cups glutinous rice (malagkit), washed and drained'),
                  Text('• 1 lb pork belly, diced'),
                  Text('• 1 lb chicken thighs or breasts, diced'),
                  Text('• 1/2 lb shrimps, peeled and deveined'),
                  Text('• 1 onion, chopped'),
                  Text('• 4 cloves garlic, minced'),
                  Text('• 1 thumb-sized ginger, julienned'),
                  Text('• 1 cup coconut milk'),
                  Text('• 2 cups chicken broth'),
                  Text('• 1 cup green peas'),
                  Text('• 1 red bell pepper, diced'),
                  Text('• 1 green bell pepper, diced'),
                  Text('• 1/2 cup raisins'),
                  Text('• Salt and pepper to taste'),
                  Text('• Cooking oil'),
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
                    '1. In a large pan or skillet, heat cooking oil over medium heat. Saute minced garlic, chopped onions, and julienned ginger until fragrant.\n',
                  ),
                  Text(
                    '2. Add diced pork belly and diced chicken pieces. Cook until browned.\n',
                  ),
                  Text(
                    '3. Stir in washed glutinous rice and cook for a few minutes to toast the rice.\n',
                  ),
                  Text(
                    '4. Pour in coconut milk and chicken broth. Bring to a simmer and cook until rice is half-cooked, about 10-15 minutes.\n',
                  ),
                  Text(
                    '5. Add peeled and deveined shrimps, green peas, diced red and green bell peppers, and raisins. Stir to combine.\n',
                  ),
                  Text(
                    '6. Season with salt and pepper to taste. Continue cooking until rice is fully cooked and liquid is absorbed, stirring occasionally.\n',
                  ),
                  Text(
                    '7. Once done, remove from heat and transfer to a serving dish.\n',
                  ),
                  Text(
                    '8. Serve hot and enjoy your delicious Arroz Valenciana!\n',
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
