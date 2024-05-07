import 'package:flutter/material.dart';

class PandesalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Pandesal',
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
                      'lib/assets/pandesal1.webp', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Pandesal',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Pandesal is a classic Filipino bread roll that is soft, fluffy, and slightly sweet. It is a staple in Filipino households and is commonly eaten for breakfast or as a snack. Pandesal is best enjoyed fresh and warm, often served with butter, cheese, jam, or filled with various savory or sweet fillings. Making pandesal at home allows you to enjoy this beloved Filipino bread anytime you want. Try this Pandesal recipe and experience the joy of baking your own bread!\n',
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
                        '2 hrs',
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
                        '15 mins',
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
                        '2 hrs 15 mins',
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
                  Text('• 4 cups all-purpose flour'),
                  Text('• 1/2 cup white sugar'),
                  Text('• 1 tsp salt'),
                  Text('• 1 tsp baking powder'),
                  Text('• 1/4 cup vegetable oil or melted butter'),
                  Text('• 1 cup warm water (110°F)'),
                  Text('• 1/2 cup bread crumbs or fine breadcrumbs'),
                  Text('• Additional flour for dusting'),
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
                    '1. In a large mixing bowl, combine all-purpose flour, white sugar, salt, and baking powder. Mix well.\n',
                  ),
                  Text(
                    '2. Gradually add vegetable oil or melted butter to the dry ingredients while mixing.\n',
                  ),
                  Text(
                    '3. Slowly pour warm water into the mixture while kneading until a soft dough forms. Knead the dough for about 8-10 minutes until smooth and elastic.\n',
                  ),
                  Text(
                    '4. Place the dough in a greased bowl, cover with a clean kitchen towel or plastic wrap, and let it rise in a warm place for about 1 hour or until doubled in size.\n',
                  ),
                  Text(
                    '5. Punch down the dough to release air bubbles. Divide the dough into equal portions and shape each portion into a smooth ball.\n',
                  ),
                  Text(
                    '6. Roll each dough ball in breadcrumbs until fully coated.\n',
                  ),
                  Text(
                    '7. Arrange the coated dough balls on a baking sheet lined with parchment paper, leaving space between each piece. Cover with a clean kitchen towel and let them rise for another 30 minutes.\n',
                  ),
                  Text(
                    '8. Preheat the oven to 375°F (190°C) while the dough is rising.\n',
                  ),
                  Text(
                    '9. Bake the pandesal in the preheated oven for 12-15 minutes or until golden brown.\n',
                  ),
                  Text(
                    '10. Remove from the oven and let cool slightly before serving.\n',
                  ),
                  Text(
                    '11. Enjoy your freshly baked pandesal with your favorite spread or filling!\n',
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
