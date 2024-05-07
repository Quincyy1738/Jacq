import 'package:flutter/material.dart';

class DinuguanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Dinuguan',
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
                      'lib/assets/dinuguan.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Dinuguan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Dinuguan is a Filipino savory stew made of pork meat and offal cooked in a rich, dark gravy of pig blood, vinegar, and spices. It is often referred to as "chocolate meat" because of its dark color, and it is typically served with rice or puto (rice cake).\n',
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
                        '1 hr',
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
                        '1 hr 20 mins',
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
                  Text('• 500g pork belly, diced'),
                  Text('• 250g pork liver, diced'),
                  Text('• 1 cup pork blood'),
                  Text('• 2 cups water or pork broth'),
                  Text('• 1 onion, chopped'),
                  Text('• 4 cloves garlic, minced'),
                  Text('• 2-3 pieces green chili peppers (siling haba)'),
                  Text('• 2 tablespoons vinegar'),
                  Text('• Fish sauce (patis), to taste'),
                  Text('• Salt and pepper, to taste'),
                  Text('• Cooking oil for sautéing'),
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
                    '1. Heat cooking oil in a pot over medium heat. Saute garlic and onion until fragrant.\n',
                  ),
                  Text(
                    '2. Add diced pork belly and cook until slightly browned.\n',
                  ),
                  Text(
                    '3. Add diced pork liver and cook until cooked through.\n',
                  ),
                  Text(
                    '4. Pour water or pork broth into the pot and bring to a boil.\n',
                  ),
                  Text(
                    '5. Add pork blood and stir well to combine. Simmer for 10-15 minutes.\n',
                  ),
                  Text(
                    '6. Season with vinegar, fish sauce (patis), salt, and pepper according to taste.\n',
                  ),
                  Text(
                    '7. Add green chili peppers (siling haba) for some heat, if desired.\n',
                  ),
                  Text(
                    '8. Simmer for another 5-10 minutes until the sauce thickens.\n',
                  ),
                  Text(
                    '9. Remove from heat and serve hot with rice or puto (rice cake).\n',
                  ),
                  Text(
                    '10. Enjoy your flavorful Dinuguan!\n',
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
