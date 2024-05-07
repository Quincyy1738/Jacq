import 'package:flutter/material.dart';

class BangsilogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Bangsilog',
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
                      'lib/assets/bangsilong.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Bangsilog (Filipino Fried Milkfish Breakfast Combo)',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Bangsilog is a classic Filipino breakfast dish consisting of Bangus (milkfish) served with fried rice (Sinangag) and fried egg (Itlog). It\'s a delicious and filling meal to start your day!\n',
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
                        '20 mins',
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
                        '40 mins',
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
                  Text('• 2 pieces bangus (milkfish), cleaned and sliced'),
                  Text('• 4 cups cooked rice, cooled and dry'),
                  Text('• 4 eggs'),
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
                    '1. Season bangus slices with salt and pepper on both sides.\n',
                  ),
                  Text(
                    '2. In a skillet, heat cooking oil over medium heat. Fry the bangus slices until golden brown and cooked through, about 3-4 minutes per side. Remove from heat and set aside.\n',
                  ),
                  Text(
                    '3. In the same skillet, fry the eggs according to your preference (sunny-side-up or over easy).\n',
                  ),
                  Text(
                    '4. In another skillet or wok, heat some oil over medium heat. Add the cooked rice and stir-fry until heated through and slightly crispy.\n',
                  ),
                  Text(
                    '5. Serve the fried rice alongside the cooked bangus slices and eggs. Season with salt and pepper to taste.\n',
                  ),
                  Text(
                    '6. Enjoy your delicious Bangsilog breakfast!\n',
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
