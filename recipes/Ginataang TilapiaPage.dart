import 'package:flutter/material.dart';

class GinataangTilapiaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Ginataang Tilapia',
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
                      'lib/assets/ginataang tilapia.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Ginataang Tilapia',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Ginataang Tilapia is a Filipino dish made with tilapia fish cooked in coconut milk with various vegetables and spices. It`s a creamy and flavorful dish that`s perfect with steamed rice.\n',
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
                        '40 mins',
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
                        '1 hr',
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
                  Text('• 2 medium tilapia, cleaned and scaled'),
                  Text('• 2 cups coconut milk'),
                  Text('• 2 cups water'),
                  Text('• 2 tablespoons cooking oil'),
                  Text('• 1 onion, chopped'),
                  Text('• 4 cloves garlic, minced'),
                  Text('• 1 thumb-sized ginger, sliced'),
                  Text('• 2 pieces green chili peppers (siling haba)'),
                  Text('• 2 pieces red chili peppers (siling labuyo)'),
                  Text('• 1 cup long green beans (sitaw), cut into 2-inch lengths'),
                  Text('• 1 cup squash (kalabasa), cubed'),
                  Text('• 1 cup eggplant (talong), sliced'),
                  Text('• Fish sauce (patis), to taste'),
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
                    '1. Heat cooking oil in a pot over medium heat. Saute garlic, onion, and ginger until fragrant.\n',
                  ),
                  Text(
                    '2. Add green chili peppers, red chili peppers, and long green beans. Cook for 2 minutes.\n',
                  ),
                  Text(
                    '3. Pour coconut milk and water into the pot. Bring to a boil then lower the heat.\n',
                  ),
                  Text(
                    '4. Add squash and eggplant. Simmer for 10 minutes or until vegetables are tender.\n',
                  ),
                  Text(
                    '5. Season with fish sauce, salt, and pepper according to taste.\n',
                  ),
                  Text(
                    '6. Add tilapia fish to the pot and simmer for another 10-15 minutes or until fish is cooked through.\n',
                  ),
                  Text(
                    '7. Remove from heat and transfer to a serving dish.\n',
                  ),
                  Text(
                    '8. Serve hot with steamed rice.\n',
                  ),
                  Text(
                    '9. Enjoy your creamy and delicious Ginataang Tilapia!\n',
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
