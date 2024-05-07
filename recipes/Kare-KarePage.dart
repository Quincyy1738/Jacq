import 'package:flutter/material.dart';

class KareKarePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Kare-Kare',
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
                      'lib/assets/karekare.webp', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Kare-Kare',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Kare-Kare is a traditional Filipino stew made with ox tripe, tail, and/or beef stew meat, cooked in a rich peanut sauce and served with various vegetables. It is often accompanied by shrimp paste (bagoong) and eaten with steamed rice.\n',
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
                        '2 hrs',
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
                        '2 hrs 30 mins',
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
                  Text('• 1 kg ox tripe (tuwalya), cleaned and sliced'),
                  Text('• 1 kg oxtail (buntot ng baka)'),
                  Text('• 500g beef stew meat'),
                  Text('• 3 tablespoons annatto seeds (atsuete)'),
                  Text('• 1 large onion, chopped'),
                  Text('• 4 cloves garlic, minced'),
                  Text('• 1 cup peanut butter'),
                  Text('• 1 cup ground toasted rice (pinipig grind)'),
                  Text('• 1 bunch bok choy (pechay)'),
                  Text('• 1 bunch string beans (sitaw), cut into 2-inch lengths'),
                  Text('• 2 pieces eggplant (talong), sliced'),
                  Text('• 1/2 cup shrimp paste (bagoong)'),
                  Text('• Salt and pepper, to taste'),
                  Text('• Cooking oil'),
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
                    '1. In a large pot, boil ox tripe and oxtail in water until tender. Remove scum as it rises to the surface. Once tender, drain and set aside.\n',
                  ),
                  Text(
                    '2. In a separate pot, heat cooking oil over medium heat. Add annatto seeds and cook until the oil turns red. Remove the seeds and discard.\n',
                  ),
                  Text(
                    '3. Saute garlic and onion until aromatic.\n',
                  ),
                  Text(
                    '4. Add the boiled ox tripe, oxtail, and beef stew meat to the pot. Cook until meat is browned.\n',
                  ),
                  Text(
                    '5. Pour enough water to cover the meat. Bring to a boil then simmer until meat is tender, adding more water if needed.\n',
                  ),
                  Text(
                    '6. Add peanut butter and ground toasted rice to the pot. Stir until well combined.\n',
                  ),
                  Text(
                    '7. Add the vegetables (bok choy, string beans, eggplant) to the pot. Simmer until vegetables are cooked.\n',
                  ),
                  Text(
                    '8. Season with salt and pepper to taste.\n',
                  ),
                  Text(
                    '9. Serve hot with shrimp paste on the side and steamed rice.\n',
                  ),
                  Text(
                    '10. Enjoy your flavorful Kare-Kare!\n',
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
