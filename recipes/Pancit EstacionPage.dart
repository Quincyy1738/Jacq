import 'package:flutter/material.dart';

class PancitEstacionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Pancit Estacion',
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
                      'lib/assets/pancit estacion.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Pancit Estacion',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Pancit Estacion is a Filipino noodle dish that originated from Cebu City. It is known for its distinct flavor, which comes from the combination of various ingredients such as shrimp, chicken, liver, vegetables, and soy sauce. This hearty and flavorful noodle dish is often served during fiestas and special occasions in Cebu, delighting locals and visitors alike. Try this Pancit Estacion recipe at home and experience the taste of Cebu!\n',
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
                        '1 hr 15 mins',
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
                  Text('• 500g pancit canton noodles'),
                  Text('• 2 tablespoons cooking oil'),
                  Text('• 3 cloves garlic, minced'),
                  Text('• 1 onion, sliced'),
                  Text('• 200g shrimp, peeled and deveined'),
                  Text('• 200g chicken breast, sliced into strips'),
                  Text('• 200g pork liver, sliced into strips'),
                  Text('• 1 carrot, julienned'),
                  Text('• 1/2 cabbage, shredded'),
                  Text('• 1 red bell pepper, sliced'),
                  Text('• 1 green bell pepper, sliced'),
                  Text('• 1/4 cup soy sauce'),
                  Text('• 1/4 cup oyster sauce'),
                  Text('• 4 cups chicken broth'),
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
                    '1. In a large pan or wok, heat cooking oil over medium-high heat. Sauté minced garlic and sliced onion until fragrant.\n',
                  ),
                  Text(
                    '2. Add shrimp, chicken breast, and pork liver strips. Cook until shrimp turns pink and meat is browned.\n',
                  ),
                  Text(
                    '3. Stir in julienned carrots, shredded cabbage, sliced bell peppers, and pancit canton noodles. Mix well with the meat and vegetables.\n',
                  ),
                  Text(
                    '4. In a small bowl, mix soy sauce, oyster sauce, and chicken broth. Pour the sauce mixture over the noodles.\n',
                  ),
                  Text(
                    '5. Season with salt and pepper to taste. Stir-fry for a few more minutes until everything is well combined and heated through.\n',
                  ),
                  Text(
                    '6. Serve hot with calamansi or lemon wedges on the side.\n',
                  ),
                  Text(
                    '7. Enjoy your delicious Pancit Estacion!\n',
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
