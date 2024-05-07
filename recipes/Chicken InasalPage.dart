import 'package:flutter/material.dart';

class ChickenInasalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Chicken Inasal',
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
                      'lib/assets/chicken inasal.jpeg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Chicken Inasal',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Chicken Inasal is a popular Filipino grilled chicken dish marinated in a mixture of calamansi juice, vinegar, garlic, ginger, lemongrass, and annatto oil. It is best served with steamed rice, vinegar dipping sauce, and a side of pickled papaya (atchara).\n',
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
                  Text('• 1 kg chicken pieces (legs, thighs, or breast)'),
                  Text('• 1/2 cup calamansi juice (or lemon juice)'),
                  Text('• 1/4 cup vinegar'),
                  Text('• 1 head garlic, minced'),
                  Text('• 2 tablespoons ginger, minced'),
                  Text('• 2 stalks lemongrass, pounded and chopped'),
                  Text('• 2 tablespoons annatto oil (atsuete oil)'),
                  Text('• 1 tablespoon brown sugar'),
                  Text('• Salt and pepper, to taste'),
                  Text('• Bamboo skewers (optional, for grilling)'),
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
                    '1. In a bowl, combine calamansi juice, vinegar, minced garlic, minced ginger, chopped lemongrass, annatto oil, brown sugar, salt, and pepper. Mix well to make the marinade.\n',
                  ),
                  Text(
                    '2. Place chicken pieces in a large resealable plastic bag or a shallow dish. Pour the marinade over the chicken, making sure each piece is well coated. Marinate in the refrigerator for at least 2 hours, or overnight for best results.\n',
                  ),
                  Text(
                    '3. Preheat grill to medium-high heat. If using bamboo skewers, soak them in water for at least 30 minutes to prevent burning.\n',
                  ),
                  Text(
                    '4. Remove chicken from marinade and thread onto skewers if desired. Reserve the marinade for basting.\n',
                  ),
                  Text(
                    '5. Grill chicken over direct heat, turning occasionally and basting with the reserved marinade, until chicken is cooked through and charred in spots, about 20-25 minutes.\n',
                  ),
                  Text(
                    '6. Remove chicken from grill and let rest for a few minutes before serving.\n',
                  ),
                  Text(
                    '7. Serve Chicken Inasal hot off the grill with steamed rice, vinegar dipping sauce, and pickled papaya (atchara) on the side.\n',
                  ),
                  Text(
                    '8. Enjoy your delicious Chicken Inasal!\n',
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
