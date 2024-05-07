import 'package:flutter/material.dart';

class PaellaFilipinaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Paella Filipina',
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
                      'lib/assets/paella.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Paella Filipina',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Paella Filipina is a Filipino version of the traditional Spanish paella. It is a festive and flavorful rice dish cooked with saffron-infused rice, chicken, chorizo, seafood, and various vegetables. Paella Filipina is often served during special occasions and gatherings, bringing people together to enjoy its rich and comforting flavors. Try this recipe at home and experience the taste of the Philippines!\n',
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
                  Text('• 2 cups glutinous rice (malagkit), washed and drained'),
                  Text('• 2 cups jasmine rice, washed and drained'),
                  Text('• 3 cups chicken broth'),
                  Text('• 1 cup coconut milk'),
                  Text('• 1 teaspoon saffron threads'),
                  Text('• 2 tablespoons cooking oil'),
                  Text('• 1 onion, chopped'),
                  Text('• 4 cloves garlic, minced'),
                  Text('• 2 tomatoes, chopped'),
                  Text('• 1 red bell pepper, sliced'),
                  Text('• 1 green bell pepper, sliced'),
                  Text('• 200g chicken breast, sliced'),
                  Text('• 200g chorizo, sliced'),
                  Text('• 200g shrimp, peeled and deveined'),
                  Text('• 200g squid, cleaned and sliced into rings'),
                  Text('• Salt and pepper to taste'),
                  Text('• Lemon wedges for serving'),
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
                    '1. In a small bowl, combine saffron threads with chicken broth and let it sit for 10 minutes to infuse.\n',
                  ),
                  Text(
                    '2. In a large pan or paella pan, heat cooking oil over medium heat. Sauté chopped onion and minced garlic until fragrant.\n',
                  ),
                  Text(
                    '3. Add sliced chicken breast and cook until browned.\n',
                  ),
                  Text(
                    '4. Stir in sliced chorizo and cook for a few minutes until fragrant.\n',
                  ),
                  Text(
                    '5. Add chopped tomatoes, sliced bell peppers, and drained glutinous rice and jasmine rice. Stir well to combine.\n',
                  ),
                  Text(
                    '6. Pour in the saffron-infused chicken broth and coconut milk. Season with salt and pepper to taste. Stir gently to distribute the ingredients evenly.\n',
                  ),
                  Text(
                    '7. Arrange shrimp and squid over the rice mixture. Cover the pan and let it simmer over low heat for about 20-25 minutes, or until the rice is cooked and the liquid is absorbed.\n',
                  ),
                  Text(
                    '8. Once the rice is cooked, remove the pan from heat. Let it rest for a few minutes before serving.\n',
                  ),
                  Text(
                    '9. Garnish with lemon wedges before serving. Enjoy your delicious Paella Filipina!\n',
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
