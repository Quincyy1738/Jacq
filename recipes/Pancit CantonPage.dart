import 'package:flutter/material.dart';

class PancitCantonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Pancit Canton',
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
                  'lib/assets/pancit canton.jpg', // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(height: 20), // Add space between image and text
          Text(
            'Pancit Canton',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Pancit Canton is a popular Filipino noodle dish made with wheat flour noodles (canton noodles) stir-fried with meat, vegetables, and a savory sauce. It is commonly served during gatherings and special occasions, and it`s loved by many for its delicious flavor and satisfying texture. Try this Pancit Canton recipe at home and enjoy a taste of Filipino cuisine!\n',
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
                  '35 mins',
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
            Text('• 250g pancit canton noodles'),
            Text('• 2 tablespoons cooking oil'),
            Text('• 3 cloves garlic, minced'),
            Text('• 1 onion, sliced'),
            Text('• 200g chicken breast, sliced into strips'),
            Text('• 200g pork, sliced into strips'),
            Text('• 1 carrot, julienned'),
            Text('• 1/2 cabbage, shredded'),
            Text('• 1 red bell pepper, sliced'),
            Text('• 1 green bell pepper, sliced'),
            Text('• 1 cup snow peas (sitsaro)'),
            Text('• 1/4 cup soy sauce'),
            Text('• 2 tablespoons oyster sauce'),
            Text('• 1 cup chicken broth or water'),
            Text('• Salt and pepper to taste'),
            Text('• Calamansi or lemon wedges for serving'),
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
              '1. Cook pancit canton noodles according to package instructions. Drain and set aside.\n',
            ),
            Text(
              '2. In a large pan or wok, heat cooking oil over medium-high heat. Sauté minced garlic and sliced onion until fragrant.\n',
            ),
            Text(
              '3. Add sliced chicken breast and pork strips. Cook until browned.\n',
            ),
            Text(
              '4. Stir in julienned carrots, shredded cabbage, sliced bell peppers, and snow peas. Cook for a few minutes until vegetables are tender-crisp.\n',
            ),
            Text(
              '5. Add cooked pancit canton noodles to the pan. Mix well with the meat and vegetables.\n',
            ),
            Text(
              '6. In a small bowl, mix soy sauce, oyster sauce, and chicken broth or water. Pour the sauce mixture over the noodles.\n',
            ),
            Text(
              '7. Season with salt and pepper to taste. Stir-fry for a few more minutes until everything is well combined and heated through.\n',
            ),
            Text(
              '8. Serve hot with calamansi or lemon wedges on the side.\n',
            ),
            Text(
              '9. Enjoy your delicious Pancit Canton!\n',
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
