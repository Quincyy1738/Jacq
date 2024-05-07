import 'package:flutter/material.dart';

class LomiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Lomi',
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
                  'lib/assets/lomi1.jpg', // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(height: 20), // Add space between image and text
          Text(
            'Lomi',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Lomi is a hearty Filipino noodle soup made with thick egg noodles, meat, and vegetables in a rich and flavorful broth. It is often garnished with crispy fried garlic, green onions, and sliced hard-boiled eggs. Lomi is a comforting dish that is perfect for chilly days or whenever you`re craving a warm and satisfying meal.\n',
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
                  '15 mins',
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
                  '45 mins',
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
            Text('• 500g thick egg noodles'),
            Text('• 250g pork belly, sliced thinly'),
            Text('• 250g chicken breast, sliced thinly'),
            Text('• 1 small onion, chopped'),
            Text('• 4 cloves garlic, minced'),
            Text('• 1 carrot, julienned'),
            Text('• 1 cup cabbage, shredded'),
            Text('• 1/4 cup green onions, chopped'),
            Text('• 6 cups chicken broth'),
            Text('• 2 tablespoons soy sauce'),
            Text('• 1 tablespoon oyster sauce'),
            Text('• 1 tablespoon cooking oil'),
            Text('• Salt and pepper, to taste'),
            Text('• Hard-boiled eggs (optional, for garnish)'),
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
              '1. In a large pot, heat cooking oil over medium heat. Saute garlic and onion until fragrant.\n',
            ),
            Text(
              '2. Add the sliced pork belly and chicken breast. Cook until lightly browned.\n',
            ),
            Text(
              '3. Pour in the chicken broth and bring to a boil. Add soy sauce and oyster sauce. Season with salt and pepper to taste.\n',
            ),
            Text(
              '4. Add the egg noodles to the pot and cook until tender, about 8-10 minutes.\n',
            ),
            Text(
              '5. Stir in the julienned carrot and shredded cabbage. Cook for another 3-5 minutes until vegetables are tender.\n',
            ),
            Text(
              '6. Ladle the hot lomi into serving bowls. Garnish with chopped green onions and sliced hard-boiled eggs, if desired.\n',
            ),
            Text(
              '7. Serve hot and enjoy your delicious Lomi!\n',
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
