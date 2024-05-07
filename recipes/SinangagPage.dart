import 'package:flutter/material.dart';

class SinangagPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Sinangag (Filipino Garlic Fried Rice)',
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
                      'lib/assets/sinangag.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Sinangag (Filipino Garlic Fried Rice)',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Sinangag is a classic Filipino garlic fried rice dish that is simple yet flavorful. It is often served as a breakfast staple or as a side dish to accompany various Filipino viands. Sinangag is made by stir-frying leftover rice with minced garlic until fragrant and lightly toasted. This Sinangag recipe is quick, easy, and perfect for adding a delicious touch to any meal.\n',
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
                        '5 mins',
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
                        '10 mins',
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
                        '15 mins',
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
                  Text('• 3 cups cooked rice, preferably day-old'),
                  Text('• 4 cloves garlic, minced'),
                  Text('• 2 tablespoons cooking oil'),
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
                    '1. Heat cooking oil in a large skillet or wok over medium heat.\n',
                  ),
                  Text(
                    '2. Add minced garlic and sauté until golden brown and fragrant, about 1-2 minutes.\n',
                  ),
                  Text(
                    '3. Add the cooked rice to the skillet. Break up any clumps and stir-fry with the garlic until the rice is heated through and evenly coated with oil, about 5-7 minutes.\n',
                  ),
                  Text(
                    '4. Season with salt and pepper to taste. Continue to stir-fry for another 2-3 minutes.\n',
                  ),
                  Text(
                    '5. Remove from heat and transfer the sinangag to a serving dish.\n',
                  ),
                  Text(
                    '6. Serve hot as a side dish or with your favorite Filipino viand. Enjoy your delicious Sinangag!\n',
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
