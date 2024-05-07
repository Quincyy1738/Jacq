import 'package:flutter/material.dart';

class SinigangNaHiponPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Sinigang na Hipon',
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
                      'lib/assets/sinigang nahipon.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Sinigang na Hipon',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Sinigang na Hipon is a Filipino sour soup made with shrimp, vegetables, and tamarind broth. It is a popular comfort food in the Philippines, often enjoyed during cold weather or as a hearty meal any time of the year. This Sinigang na Hipon recipe is easy to make and bursting with tangy and savory flavors. Serve it hot with steamed rice for a delicious and satisfying meal!\n',
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
                        '30 mins',
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
                        '50 mins',
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
                  Text('• 1 lb shrimp, peeled and deveined'),
                  Text('• 1 large onion, quartered'),
                  Text('• 2 medium tomatoes, quartered'),
                  Text('• 1 medium daikon radish (labanos), peeled and sliced'),
                  Text('• 1 bunch kangkong (water spinach), stems trimmed'),
                  Text('• 1 medium eggplant, sliced'),
                  Text('• 6-8 pieces okra'),
                  Text('• 3-4 pieces long green chili peppers (siling pansigang)'),
                  Text('• 1 packet (40g) tamarind soup base mix (sinigang sa sampalok mix)'),
                  Text('• 8 cups water'),
                  Text('• Fish sauce (patis) or salt, to taste'),
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
                    '1. In a large pot, bring water to a boil. Add the shrimp, onion, and tomatoes. Simmer for 10-15 minutes.\n',
                  ),
                  Text(
                    '2. Add the daikon radish and cook for 5 minutes.\n',
                  ),
                  Text(
                    '3. Stir in the tamarind soup base mix until dissolved. Season with fish sauce or salt to taste.\n',
                  ),
                  Text(
                    '4. Add the eggplant, okra, and long green chili peppers. Cook for another 5 minutes or until the vegetables are tender.\n',
                  ),
                  Text(
                    '5. Add the kangkong and cook for 1-2 minutes or until wilted.\n',
                  ),
                  Text(
                    '6. Remove from heat and serve hot. Enjoy your delicious Sinigang na Hipon!\n',
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
