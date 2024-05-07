import 'package:flutter/material.dart';

class BulaloPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Bulalo',
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
                      'lib/assets/bulalo.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Bulalo (Filipino Beef Marrow Stew)',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Bulalo is a traditional Filipino beef marrow stew made with beef shanks, bone marrow, and vegetables. It\'s a hearty and flavorful dish often enjoyed during cold weather or special occasions!\n',
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
                        '2 hrs 20 mins',
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
                  Text('• 1 kg beef shanks'),
                  Text('• 1 kg beef marrow bones'),
                  Text('• 2 onions, quartered'),
                  Text('• 4 cloves garlic, minced'),
                  Text('• 2-3 pieces corn on the cob, halved'),
                  Text('• 2-3 pieces potatoes, quartered'),
                  Text('• 1 small cabbage, quartered'),
                  Text('• Fish sauce (patis) or salt, to taste'),
                  Text('• Ground black pepper, to taste'),
                  Text('• Water'),
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
                    '1. In a large pot, combine beef shanks, beef marrow bones, onions, and garlic. Add enough water to cover the ingredients.\n',
                  ),
                  Text(
                    '2. Bring to a boil over high heat. Skim off any scum that rises to the surface.\n',
                  ),
                  Text(
                    '3. Lower the heat to medium-low and simmer for about 1.5 to 2 hours or until the beef is tender and the marrow has melted into the broth.\n',
                  ),
                  Text(
                    '4. Once the beef is tender, add the corn on the cob, potatoes, and cabbage. Cook for an additional 10-15 minutes or until the vegetables are tender.\n',
                  ),
                  Text(
                    '5. Season with fish sauce (patis) or salt and ground black pepper, to taste.\n',
                  ),
                  Text(
                    '6. Serve hot with steamed rice.\n',
                  ),
                  Text(
                    '7. Enjoy your delicious Bulalo!\n',
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
