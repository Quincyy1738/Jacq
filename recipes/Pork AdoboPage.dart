import 'package:flutter/material.dart';

class PorkAdoboPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Pork Adobo',
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
                      'lib/assets/pork adobo.JPG', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Pork Adobo',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Pork Adobo is a classic Filipino dish known for its rich and savory flavor. It is made by simmering pork in a mixture of soy sauce, vinegar, garlic, bay leaves, and black peppercorns until tender and flavorful. Pork Adobo is often served with steamed rice and is a staple in Filipino households. This Pork Adobo recipe is easy to make and perfect for a comforting meal any time of the year.\n',
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
                        '10 mins',
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
                  Text('• 1 kg pork belly or pork shoulder, cut into serving pieces'),
                  Text('• 1/2 cup soy sauce'),
                  Text('• 1/2 cup vinegar'),
                  Text('• 1 head garlic, minced'),
                  Text('• 2 bay leaves'),
                  Text('• 1 tsp whole peppercorns'),
                  Text('• 1 cup water'),
                  Text('• 2 tbsp cooking oil'),
                  Text('• Salt to taste'),
                  Text('• Sugar to taste (optional)'),
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
                    '1. In a large bowl, combine soy sauce, vinegar, minced garlic, bay leaves, and whole peppercorns. Mix well.\n',
                  ),
                  Text(
                    '2. Add the pork pieces to the marinade and toss until well-coated. Marinate the pork in the refrigerator for at least 30 minutes, or overnight for best results.\n',
                  ),
                  Text(
                    '3. Heat cooking oil in a large pot or skillet over medium heat. Remove the pork from the marinade, reserving the marinade for later use.\n',
                  ),
                  Text(
                    '4. Sear the pork pieces in the hot oil until browned on all sides.\n',
                  ),
                  Text(
                    '5. Pour the reserved marinade and water into the pot. Bring to a boil, then reduce the heat to low and let simmer for about 30-40 minutes or until the pork is tender and cooked through.\n',
                  ),
                  Text(
                    '6. If desired, add salt to taste and sugar to balance the flavors. Adjust seasoning as needed.\n',
                  ),
                  Text(
                    '7. Serve hot with steamed rice.\n',
                  ),
                  Text(
                    '8. Enjoy your delicious Pork Adobo!\n',
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
