import 'package:flutter/material.dart';

class PancitMoloPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Pancit Molo',
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
                      'lib/assets/pancit molo.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Pancit Molo',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Pancit Molo is a Filipino dumpling soup that originated from Molo, Iloilo City. It is a comforting and hearty dish made with homemade dumplings (molo wrappers) filled with ground pork and shrimp, cooked in a flavorful broth. Pancit Molo is often served during special occasions and gatherings, and it is a favorite among Filipinos for its delicious taste and comforting qualities. Try this Pancit Molo recipe at home and enjoy a taste of Filipino comfort food!\n',
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
                        '45 mins',
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
                        '1 hr',
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
                        '1 hr 45 mins',
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
                  Text('• 1 pack molo wrappers (square wonton wrappers)'),
                  Text('• 200g ground pork'),
                  Text('• 100g shrimp, chopped'),
                  Text('• 1 small onion, minced'),
                  Text('• 3 cloves garlic, minced'),
                  Text('• 1 egg'),
                  Text('• Salt and pepper to taste'),
                  Text('• 2 tablespoons cooking oil'),
                  Text('• 8 cups chicken broth'),
                  Text('• 2 cups shredded cooked chicken meat'),
                  Text('• 1 cup shredded cabbage'),
                  Text('• 1 cup sliced carrots'),
                  Text('• 1 cup sliced celery'),
                  Text('• Green onions, chopped (for garnish)'),
                  Text('• Fried garlic (for garnish)'),
                  Text('• Fish sauce (patis) and calamansi or lemon wedges (for serving)'),
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
                    '1. In a bowl, combine ground pork, chopped shrimp, minced onion, minced garlic, egg, salt, and pepper. Mix until well combined.\n',
                  ),
                  Text(
                    '2. Place a small amount of the pork-shrimp mixture in the center of each molo wrapper. Fold the wrapper into a triangle and press the edges to seal. Repeat until all the filling and wrappers are used up.\n',
                  ),
                  Text(
                    '3. In a large pot, heat cooking oil over medium heat. Sauté sliced carrots, sliced celery, and shredded cabbage for a few minutes until slightly softened.\n',
                  ),
                  Text(
                    '4. Add shredded cooked chicken meat to the pot and stir to combine.\n',
                  ),
                  Text(
                    '5. Pour chicken broth into the pot and bring to a simmer.\n',
                  ),
                  Text(
                    '6. Carefully drop the filled molo wrappers into the simmering broth. Cook for about 10-12 minutes or until the molo wrappers are cooked through.\n',
                  ),
                  Text(
                    '7. Season the soup with fish sauce (patis) and additional salt and pepper to taste.\n',
                  ),
                  Text(
                    '8. Ladle the Pancit Molo into serving bowls. Garnish with chopped green onions and fried garlic.\n',
                  ),
                  Text(
                    '9. Serve hot with calamansi or lemon wedges on the side.\n',
                  ),
                  Text(
                    '10. Enjoy your delicious Pancit Molo!\n',
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
