import 'package:flutter/material.dart';

class ChamporadoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Champorado',
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
                      'lib/assets/champorado.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Champorado (Chocolate Rice Porridge)',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Champorado is a sweet Filipino rice porridge made with glutinous rice, cocoa powder, and sugar. It is often served hot for breakfast or merienda (snack time), and is best enjoyed with tuyo (dried fish) or evaporated milk.\n',
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
                        '5 mins',
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
                        '25 mins',
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
                  Text('• 1 cup glutinous rice (malagkit rice)'),
                  Text('• 4 cups water'),
                  Text('• 1/2 cup cocoa powder'),
                  Text('• 1/2 cup sugar (adjust to taste)'),
                  Text('• Pinch of salt'),
                  Text('• Evaporated milk or condensed milk, for serving'),
                  Text('• Tuyo (dried fish), for serving (optional)'),
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
                    '1. In a pot, combine glutinous rice and water. Bring to a boil over medium heat.\n',
                  ),
                  Text(
                    '2. Once boiling, lower the heat to simmer and cook the rice until it starts to soften, stirring occasionally to prevent sticking.\n',
                  ),
                  Text(
                    '3. In a small bowl, dissolve cocoa powder in 1/2 cup of water to make a chocolate paste.\n',
                  ),
                  Text(
                    '4. Once the rice is half-cooked, add the cocoa paste to the pot. Stir well to combine.\n',
                  ),
                  Text(
                    '5. Add sugar and a pinch of salt to the pot. Continue cooking and stirring until the rice is fully cooked and the porridge thickens to your desired consistency.\n',
                  ),
                  Text(
                    '6. Remove from heat and let it cool slightly before serving.\n',
                  ),
                  Text(
                    '7. Serve hot champorado in bowls with evaporated milk or condensed milk drizzled on top. Pair with tuyo (dried fish) for a classic Filipino breakfast.\n',
                  ),
                  Text(
                    '8. Enjoy your delicious Champorado!\n',
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
