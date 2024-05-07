import 'package:flutter/material.dart';

class ArrozCaldoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Arroz Caldo',
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
                      'lib/assets/arrozcaldo.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Arroz Caldo (Filipino Chicken Rice Porridge)',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Arroz Caldo is a comforting Filipino rice porridge made with chicken, rice, and flavored with ginger and garlic. It\'s a popular dish often enjoyed during cold weather or as a hearty breakfast!\n',
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
                  Text('• 1 lb chicken thighs or breasts, cut into serving pieces'),
                  Text('• 1 cup glutinous rice (malagkit), rinsed and drained'),
                  Text('• 5 cups chicken broth'),
                  Text('• 1 thumb-sized ginger, peeled and sliced thinly'),
                  Text('• 4 cloves garlic, minced'),
                  Text('• 1 onion, chopped'),
                  Text('• 2 tablespoons fish sauce (patis)'),
                  Text('• Salt and pepper to taste'),
                  Text('• Green onions, chopped, for garnish'),
                  Text('• Hard-boiled eggs, sliced, for serving (optional)'),
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
                    '1. In a pot, heat cooking oil over medium heat. Saute minced garlic, chopped onions, and sliced ginger until aromatic.\n',
                  ),
                  Text(
                    '2. Add the chicken pieces to the pot and cook until lightly browned.\n',
                  ),
                  Text(
                    '3. Pour in chicken broth and bring to a boil. Once boiling, add the glutinous rice. Stir to combine.\n',
                  ),
                  Text(
                    '4. Lower the heat to a simmer and cover the pot. Let it cook for about 30-35 minutes, or until the rice is fully cooked and the chicken is tender.\n',
                  ),
                  Text(
                    '5. Season with fish sauce (patis), salt, and pepper to taste. Adjust seasoning as needed.\n',
                  ),
                  Text(
                    '6. Ladle the Arroz Caldo into bowls. Garnish with chopped green onions and sliced hard-boiled eggs, if desired.\n',
                  ),
                  Text(
                    '7. Serve hot and enjoy your comforting Arroz Caldo!\n',
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
