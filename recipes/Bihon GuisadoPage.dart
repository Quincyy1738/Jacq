import 'package:flutter/material.dart';

class BihonGuisadoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Bihon Guisado',
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
                      'lib/assets/bihon guisado.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Bihon Guisado (Filipino Stir-Fried Noodles)',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Bihon Guisado is a popular Filipino noodle dish made with bihon (rice vermicelli) noodles stir-fried with meat, vegetables, and aromatics. It\'s a flavorful and comforting dish often served during special occasions and gatherings!\n',
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
                        '40 mins',
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
                  Text('• 250g bihon (rice vermicelli) noodles'),
                  Text('• 250g chicken breast or pork, thinly sliced'),
                  Text('• 1 onion, sliced'),
                  Text('• 3 cloves garlic, minced'),
                  Text('• 1 carrot, julienned'),
                  Text('• 1 small cabbage, shredded'),
                  Text('• 1/4 cup soy sauce'),
                  Text('• 1/4 cup oyster sauce'),
                  Text('• 3 cups chicken or vegetable broth'),
                  Text('• Salt and pepper, to taste'),
                  Text('• Cooking oil'),
                  Text('• Calamansi or lemon wedges, for serving (optional)'),
                  Text('• Chopped green onions, for garnish (optional)'),
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
                    '1. In a bowl, soak bihon noodles in warm water for about 10 minutes or until softened. Drain and set aside.\n',
                  ),
                  Text(
                    '2. In a large skillet or wok, heat cooking oil over medium-high heat. Saute garlic and onion until aromatic.\n',
                  ),
                  Text(
                    '3. Add chicken or pork slices and cook until lightly browned.\n',
                  ),
                  Text(
                    '4. Stir in carrot and cabbage. Cook for about 2-3 minutes or until vegetables are slightly tender.\n',
                  ),
                  Text(
                    '5. Add soy sauce, oyster sauce, and broth. Bring to a simmer.\n',
                  ),
                  Text(
                    '6. Add drained bihon noodles to the skillet. Toss to combine with the meat and vegetables. Continue cooking until noodles have absorbed the liquid and are fully cooked.\n',
                  ),
                  Text(
                    '7. Season with salt and pepper to taste.\n',
                  ),
                  Text(
                    '8. Serve hot, garnished with chopped green onions and calamansi or lemon wedges on the side, if desired.\n',
                  ),
                  Text(
                    '9. Enjoy your delicious Bihon Guisado!\n',
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
