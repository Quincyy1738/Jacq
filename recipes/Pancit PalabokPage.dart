import 'package:flutter/material.dart';

class PancitPalabokPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Pancit Palabok',
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
                      'lib/assets/pancit palabok.jpeg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Pancit Palabok',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Pancit Palabok is a popular Filipino noodle dish known for its vibrant orange sauce made from shrimp, pork, and annatto (achuete). It is typically served on special occasions and gatherings, and it is loved for its rich flavor and unique toppings like shrimp, hard-boiled eggs, and chicharrón (pork cracklings). Pancit Palabok is a true Filipino favorite that never fails to satisfy cravings. Try this Pancit Palabok recipe at home and enjoy a taste of Filipino comfort food!\n',
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
                  Text('• 200g cooked shrimp, peeled and deveined'),
                  Text('• 200g pork belly, boiled and sliced into thin strips'),
                  Text('• 2 cups pork broth or chicken broth'),
                  Text('• 2 tablespoons annatto (achuete) powder'),
                  Text('• 2 tablespoons cooking oil'),
                  Text('• 4 cloves garlic, minced'),
                  Text('• 1 onion, minced'),
                  Text('• 2 tablespoons all-purpose flour'),
                  Text('• 2 cups water'),
                  Text('• 1 cup tinapa flakes (smoked fish flakes), optional'),
                  Text('• 1 cup green onions, chopped'),
                  Text('• 2 pieces hard-boiled eggs, sliced'),
                  Text('• 1/2 cup chicharrón (pork cracklings), crushed'),
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
                    '1. Cook the thick rice noodles (bihon) according to package instructions. Drain and set aside.\n',
                  ),
                  Text(
                    '2. In a saucepan, heat cooking oil over medium heat. Sauté minced garlic and minced onion until fragrant.\n',
                  ),
                  Text(
                    '3. Dissolve annatto (achuete) powder in pork broth or chicken broth. Add the broth mixture to the saucepan and bring to a simmer.\n',
                  ),
                  Text(
                    '4. In a separate small bowl, mix all-purpose flour and water to create a slurry. Slowly pour the slurry into the simmering broth while continuously stirring until the sauce thickens.\n',
                  ),
                  Text(
                    '5. Season the sauce with fish sauce (patis) and ground black pepper to taste. Add more annatto powder if desired for a deeper color.\n',
                  ),
                  Text(
                    '6. Arrange the cooked thick rice noodles (bihon) on a serving plate.\n',
                  ),
                  Text(
                    '7. Pour the prepared sauce over the noodles, spreading it evenly.\n',
                  ),
                  Text(
                    '8. Top the Pancit Palabok with cooked shrimp, sliced pork belly, tinapa flakes (smoked fish flakes), chopped green onions, sliced hard-boiled eggs, and crushed chicharrón (pork cracklings).\n',
                  ),
                  Text(
                    '9. Serve hot with calamansi or lemon wedges on the side.\n',
                  ),
                  Text(
                    '10. Enjoy your delicious Pancit Palabok!\n',
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
