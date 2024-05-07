import 'package:flutter/material.dart';

class InihawNaLiempoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Inihaw na Liempo',
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
                  'lib/assets/inihaw na liempo.jpg', // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(height: 20), // Add space between image and text
          Text(
            'Inihaw na Liempo',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Inihaw na Liempo is a popular Filipino dish of grilled pork belly marinated in a mixture of soy sauce, calamansi juice, garlic, and other seasonings. It`s a delicious and savory dish often served with rice and dipping sauce.\n',
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
                  '35 mins',
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
            Text('• 1 kg pork belly (liempo), sliced thinly'),
            Text('• 1/2 cup soy sauce'),
            Text('• 1/4 cup calamansi juice'),
            Text('• 4 cloves garlic, minced'),
            Text('• 1 teaspoon ground black pepper'),
            Text('• 1 teaspoon salt'),
            Text('• Cooking oil for grilling'),
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
              '1. In a bowl, combine soy sauce, calamansi juice, minced garlic, ground black pepper, and salt. Mix well to create the marinade.\n',
            ),
            Text(
              '2. Place the sliced pork belly in a large resealable plastic bag or shallow dish. Pour the marinade over the pork, making sure it is evenly coated. Marinate in the refrigerator for at least 2 hours, or overnight for best results.\n',
            ),
            Text(
              '3. Preheat the grill to medium-high heat.\n',
            ),
            Text(
              '4. Remove the pork belly from the marinade and discard any excess marinade.\n',
            ),
            Text(
              '5. Brush the grill grates with cooking oil to prevent sticking.\n',
            ),
            Text(
              '6. Grill the pork belly slices for 5-7 minutes on each side or until cooked through and charred on the edges.\n',
            ),
            Text(
              '7. Remove from the grill and let it rest for a few minutes before serving.\n',
            ),
            Text(
              '8. Serve hot with rice and your favorite dipping sauce.\n',
            ),
            Text(
              '9. Enjoy your delicious Inihaw na Liempo!\n',
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
