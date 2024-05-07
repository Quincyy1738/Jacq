import 'package:flutter/material.dart';

class RellenongBangusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Rellenong Bangus',
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
                      'lib/assets/rellenong.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Rellenong Bangus',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Rellenong Bangus is a classic Filipino dish made with milkfish stuffed with a mixture of ground pork, vegetables, and seasonings. It is then fried until crispy and golden brown. Rellenong Bangus is a popular dish for special occasions and gatherings, and it is often served with steamed rice and dipping sauce. This Rellenong Bangus recipe is easy to make and sure to impress your family and friends.\n',
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
                        '1 hr',
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
                  Text('• 1 large bangus (milkfish), scaled, cleaned, and butterflied'),
                  Text('• 1/2 cup ground pork'),
                  Text('• 1/2 cup carrots, minced'),
                  Text('• 1/2 cup potatoes, minced'),
                  Text('• 1/4 cup green peas'),
                  Text('• 1/4 cup raisins'),
                  Text('• 1 onion, minced'),
                  Text('• 3 cloves garlic, minced'),
                  Text('• 2 eggs, beaten'),
                  Text('• 1/4 cup milk'),
                  Text('• 2 tablespoons soy sauce'),
                  Text('• Salt and pepper to taste'),
                  Text('• Cooking oil for frying'),
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
                    '1. In a pan, heat cooking oil and sauté garlic and onions until aromatic.\n',
                  ),
                  Text(
                    '2. Add ground pork and cook until browned.\n',
                  ),
                  Text(
                    '3. Add carrots, potatoes, green peas, and raisins. Cook until vegetables are tender.\n',
                  ),
                  Text(
                    '4. Season with soy sauce, salt, and pepper. Remove from heat and let it cool.\n',
                  ),
                  Text(
                    '5. In a bowl, combine beaten eggs and milk. Add the cooked pork and vegetable mixture. Mix well.\n',
                  ),
                  Text(
                    '6. Stuff the bangus cavity with the pork and vegetable mixture. Sew the opening to secure the stuffing.\n',
                  ),
                  Text(
                    '7. In a pan, heat cooking oil for frying. Fry the stuffed bangus until golden brown and crispy on both sides.\n',
                  ),
                  Text(
                    '8. Remove from the pan and drain excess oil on paper towels.\n',
                  ),
                  Text(
                    '9. Slice the Rellenong Bangus and serve hot with steamed rice.\n',
                  ),
                  Text(
                    '10. Enjoy your delicious Rellenong Bangus!\n',
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
