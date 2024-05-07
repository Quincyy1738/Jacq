import 'package:flutter/material.dart';

class SinampalukangManokPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Sinampalukang Manok',
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
                  'lib/assets/sinampalukang manok.jpg', // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(height: 20), // Add space between image and text
          Text(
            'Sinampalukang Manok',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Sinampalukang Manok is a Filipino chicken soup dish made with chicken, tamarind leaves, and other vegetables. It is similar to Sinigang but with a distinct sour taste from the tamarind leaves. This comforting and flavorful soup is popular during cold weather or whenever you`re craving a warm and sour dish. This Sinampalukang Manok recipe is easy to make and perfect for family meals.\n',
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
                  '15 mins',
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
            Text('• 1 whole chicken, cut into serving pieces'),
            Text('• 2 liters water'),
            Text('• 1 onion, quartered'),
            Text('• 3 tomatoes, quartered'),
            Text('• 1 thumb-sized ginger, sliced'),
            Text('• 1/2 cup tamarind leaves (young leaves)'),
            Text('• 1/4 cup tamarind sinigang mix (optional)'),
            Text('• 2 pieces long green chili peppers (siling pansigang)'),
            Text('• Salt and pepper to taste'),
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
              '1. In a large pot, bring water to a boil. Add chicken, onion, tomatoes, and ginger. Simmer for 30 minutes or until chicken is tender.\n',
            ),
            Text(
              '2. Add tamarind leaves and tamarind sinigang mix (if using). Simmer for another 10 minutes.\n',
            ),
            Text(
              '3. Season with salt and pepper to taste.\n',
            ),
            Text(
              '4. Add long green chili peppers and simmer for 2-3 minutes.\n',
            ),
            Text(
              '5. Serve hot and enjoy your delicious Sinampalukang Manok!\n',
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
