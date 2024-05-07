import 'package:flutter/material.dart';

class PancitMalabonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Pancit Malabon',
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
                      'lib/assets/pancit malabon.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Pancit Malabon',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Pancit Malabon is a famous Filipino noodle dish that originated from Malabon City in the Philippines. It is characterized by its thick rice noodles (bihon) topped with a flavorful sauce made from shrimp, pork, and annatto (achuete). Pancit Malabon is often garnished with boiled eggs, shrimp, squid, and a variety of seafood, making it a rich and indulgent dish perfect for special occasions and gatherings. Try this Pancit Malabon recipe at home and experience the delicious taste of Malabon!\n',
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
                  Text('• 500g thick rice noodles (bihon)'),
                  Text('• 2 tablespoons cooking oil'),
                  Text('• 3 cloves garlic, minced'),
                  Text('• 1 onion, chopped'),
                  Text('• 200g shrimp, peeled and deveined'),
                  Text('• 200g pork belly, sliced into thin strips'),
                  Text('• 200g squid, cleaned and sliced into rings'),
                  Text('• 2 cups shrimp broth or chicken broth'),
                  Text('• 2 tablespoons annatto (achuete) powder'),
                  Text('• 1 cup cooked pork cracklings (chicharon)'),
                  Text('• 2 cups napa cabbage (pechay wombok), sliced'),
                  Text('• 2 hard-boiled eggs, sliced'),
                  Text('• Fish sauce (patis) and ground black pepper to taste'),
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
                    '1. In a pot of boiling water, cook the thick rice noodles (bihon) according to package instructions. Drain and set aside.\n',
                  ),
                  Text(
                    '2. In a large pan or wok, heat cooking oil over medium heat. Sauté minced garlic and chopped onion until fragrant.\n',
                  ),
                  Text(
                    '3. Add sliced pork belly and cook until lightly browned.\n',
                  ),
                  Text(
                    '4. Stir in peeled shrimp and sliced squid. Cook until shrimp turns pink and squid is tender.\n',
                  ),
                  Text(
                    '5. Dissolve annatto (achuete) powder in shrimp broth or chicken broth. Pour the broth mixture into the pan.\n',
                  ),
                  Text(
                    '6. Add cooked thick rice noodles (bihon) to the pan. Toss to coat the noodles evenly with the sauce.\n',
                  ),
                  Text(
                    '7. Add sliced napa cabbage (pechay wombok) and cooked pork cracklings (chicharon) to the pan. Mix well.\n',
                  ),
                  Text(
                    '8. Season with fish sauce (patis) and ground black pepper to taste. Stir-fry for a few more minutes until everything is well combined and heated through.\n',
                  ),
                  Text(
                    '9. Transfer Pancit Malabon to a serving platter. Garnish with sliced hard-boiled eggs.\n',
                  ),
                  Text(
                    '10. Serve hot with calamansi or lemon wedges on the side.\n',
                  ),
                  Text(
                    '11. Enjoy your delicious Pancit Malabon!\n',
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
