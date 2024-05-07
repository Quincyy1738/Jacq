import 'package:flutter/material.dart';

class GarlicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Garlic Fried Rice',
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
                      'lib/assets/friedrice.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Sinangag (Filipino Garlic Fried Rice)',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Garlic elevates this simple fried rice recipe, giving it a robust flavor that make it a great side dish, no matter what meal you eat it for!\n',
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
                        '7 mins',
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
                        '10 mins',
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
                        '17 mins',
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
                  Text('• 3 Tbsp vegetable oil'),
                  Text('• 12 cloves garlic, minced'),
                  Text('• 4 cups cooked rice, cooled and dry'),
                  Text('• ¼ tsp salt'),
                  Text('• Dash fresh ground pepper'),
                  Text('• 1 scallion, thinly sliced (for garnish)'),
                  Text('• 4 eggs (optional, for serving)'),
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
                    '1. In a large wok or skillet, heat the oil over medium high heat. '
                        'Reduce the heat to medium and add the minced garlic. Stir fry '
                        'the garlic for 2-3 minutes, until it turns a light golden color. '
                        'Carefully remove the garlic from the pan, leaving the '
                        'garlic-infused oil behind. Drain the fried garlic on paper '
                        'towels until cool.\n',
                  ),
                  Text(
                    '2. Add the cooked rice to the garlic oil in the wok, stirring '
                        'to coat all the grains with oil. Spread the rice out in the '
                        'wok, covering as much surface area of the hot pan as possible. '
                        'Let the rice cook, undisturbed, for 3-5 min. Stir the rice '
                        'well, then spread it out again and cook, undisturbed for '
                        '3-5 min more. Continue this process until the rice is cooked '
                        'to your liking.\n',
                  ),
                  Text(
                    '3. Once the rice is golden and starting to get crispy, return '
                        'the fried garlic to the pan (saving some for garnish, if desired).\n',
                  ),
                  Text(
                    '4. Season the rice with salt and pepper and transfer it to a '
                        'serving dish.\n',
                  ),
                  Text(
                    '5. Garnish with extra fried garlic and sliced scallions.\n',
                  ),
                  Text(
                    '6. If desired, serve the rice topped with fried eggs.\n',
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
