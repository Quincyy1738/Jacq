import 'package:flutter/material.dart';

class CalderetaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Caldereta',
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
                      'lib/assets/caldereta.jpeg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Caldereta (Filipino Beef Stew)',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Caldereta is a popular Filipino stew made with tender beef, potatoes, carrots, bell peppers, and green peas, cooked in a flavorful tomato-based sauce. It\'s a hearty and comforting dish often served during special occasions!\n',
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
                        '2 hrs',
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
                        '2 hrs 30 mins',
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
                  Text('• 1 kg beef stew meat, cut into chunks'),
                  Text('• 2 potatoes, peeled and cubed'),
                  Text('• 2 carrots, peeled and sliced'),
                  Text('• 1 onion, chopped'),
                  Text('• 4 cloves garlic, minced'),
                  Text('• 1 can (14 oz) tomato sauce'),
                  Text('• 1/2 cup liver spread'),
                  Text('• 1/4 cup soy sauce'),
                  Text('• 1/4 cup vinegar'),
                  Text('• 2 cups beef broth or water'),
                  Text('• 2 bay leaves'),
                  Text('• 1 red bell pepper, sliced'),
                  Text('• 1 green bell pepper, sliced'),
                  Text('• 1/2 cup green peas'),
                  Text('• Cooking oil'),
                  Text('• Salt and pepper, to taste'),
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
                    '1. Heat cooking oil in a large pot over medium heat. Saute garlic and onion until fragrant.\n',
                  ),
                  Text(
                    '2. Add beef stew meat and cook until browned on all sides.\n',
                  ),
                  Text(
                    '3. Stir in tomato sauce, liver spread, soy sauce, and vinegar. Mix well.\n',
                  ),
                  Text(
                    '4. Pour in beef broth or water. Add bay leaves. Bring to a boil then reduce heat to low. Cover and simmer for about 1.5 to 2 hours or until beef is tender.\n',
                  ),
                  Text(
                    '5. Add potatoes and carrots. Cook until vegetables are tender.\n',
                  ),
                  Text(
                    '6. Add sliced bell peppers and green peas. Cook for an additional 5 minutes.\n',
                  ),
                  Text(
                    '7. Season with salt and pepper to taste.\n',
                  ),
                  Text(
                    '8. Serve hot with steamed rice.\n',
                  ),
                  Text(
                    '9. Enjoy your delicious Caldereta!\n',
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
