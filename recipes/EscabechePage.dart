import 'package:flutter/material.dart';

class EscabechePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Escabeche',
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
                      'lib/assets/escabeche1.JPG', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Escabeche',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Escabeche is a Filipino sweet and sour fish dish made with deep-fried fish, typically tilapia or lapu-lapu (grouper), topped with a colorful sweet and tangy sauce made from vinegar, sugar, and various vegetables like bell peppers, carrots, and onions. It is a popular dish often served during special occasions or family gatherings.\n',
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
                        '30 mins',
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
                        '50 mins',
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
                  Text('• 2 large tilapia or lapu-lapu (grouper) fillets, cleaned and scaled'),
                  Text('• 1/2 cup all-purpose flour'),
                  Text('• Salt and pepper, to taste'),
                  Text('• Cooking oil for frying'),
                  Text('• 1 large red bell pepper, julienned'),
                  Text('• 1 large green bell pepper, julienned'),
                  Text('• 1 large carrot, julienned'),
                  Text('• 1 onion, sliced'),
                  Text('• 3 cloves garlic, minced'),
                  Text('• 1/2 cup vinegar'),
                  Text('• 1/4 cup soy sauce'),
                  Text('• 1/4 cup water'),
                  Text('• 1/4 cup sugar'),
                  Text('• 1 tablespoon cornstarch, dissolved in 2 tablespoons water'),
                  Text('• Salt and pepper, to taste'),
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
                    '1. Season fish fillets with salt and pepper. Dredge them in flour, shaking off excess.\n',
                  ),
                  Text(
                    '2. Heat cooking oil in a frying pan over medium heat. Fry fish fillets until golden brown and cooked through. Drain excess oil on paper towels and set aside.\n',
                  ),
                  Text(
                    '3. In a separate pan, sauté garlic and onion until fragrant.\n',
                  ),
                  Text(
                    '4. Add julienned bell peppers and carrots. Stir-fry until vegetables are tender-crisp.\n',
                  ),
                  Text(
                    '5. In a bowl, mix together vinegar, soy sauce, water, and sugar. Pour the mixture into the pan with the vegetables.\n',
                  ),
                  Text(
                    '6. Bring the sauce to a simmer and cook for 2-3 minutes.\n',
                  ),
                  Text(
                    '7. Season with salt and pepper to taste.\n',
                  ),
                  Text(
                    '8. Add the cornstarch mixture to the sauce and stir well until thickened.\n',
                  ),
                  Text(
                    '9. Arrange fried fish fillets on a serving plate and pour the escabeche sauce over them.\n',
                  ),
                  Text(
                    '10. Serve hot with steamed rice.\n',
                  ),
                  Text(
                    '11. Enjoy your delicious Escabeche!\n',
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
