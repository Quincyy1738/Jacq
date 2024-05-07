import 'package:flutter/material.dart';

class BeefNilagaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Beef Nilaga',
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
                      'lib/assets/beef nilaga.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Beef Nilaga (Filipino Beef Soup)',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Beef Nilaga is a comforting Filipino soup made with beef, potatoes, cabbage, and sometimes other vegetables. It\'s simmered until the beef is tender and flavors are well-developed, resulting in a hearty and delicious dish!\n',
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
                        '1 hr 50 mins',
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
                  Text('• 1 kg beef shank or brisket, cut into serving pieces'),
                  Text('• 1 onion, quartered'),
                  Text('• 4 cloves garlic, crushed'),
                  Text('• 2 liters water'),
                  Text('• 2 potatoes, peeled and quartered'),
                  Text('• 1 small cabbage, quartered'),
                  Text('• 2-3 pieces corn on the cob, sliced into thirds (optional)'),
                  Text('• Fish sauce (patis), to taste'),
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
                    '1. In a large pot, combine beef, onion, garlic, and water. Bring to a boil, then reduce heat to simmer. Skim off any scum that rises to the surface.\n',
                  ),
                  Text(
                    '2. Cover and simmer for about 1 to 1.5 hours or until beef is tender. Add more water as needed to maintain about 2 liters.\n',
                  ),
                  Text(
                    '3. Add potatoes, corn (if using), and cook for about 5 to 7 minutes or until potatoes are tender.\n',
                  ),
                  Text(
                    '4. Add cabbage and cook for another 3 to 5 minutes or until tender yet crisp. Season with fish sauce, salt, and pepper to taste.\n',
                  ),
                  Text(
                    '5. Remove from heat and serve hot. Garnish with chopped green onions, if desired.\n',
                  ),
                  Text(
                    '6. Enjoy your comforting Beef Nilaga!\n',
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
