import 'package:flutter/material.dart';

class PorkSinigangPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Pork Sinigang',
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
                      'lib/assets/pork sinigang.jpg', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Add space between image and text
              Text(
                'Pork Sinigang',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Pork Sinigang is a traditional Filipino sour soup made with pork, vegetables, and tamarind broth. It is a comforting and flavorful dish that is perfect for any occasion. The tangy and savory broth combined with tender pork and vegetables makes Pork Sinigang a beloved Filipino comfort food. This Pork Sinigang recipe is easy to make and customizable to suit your taste preferences.\n',
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
                        '1 hr 30 mins',
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
                        '1 hr 45 mins',
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
                  Text('• 1 kg pork ribs or pork belly, cut into serving pieces'),
                  Text('• 1 onion, quartered'),
                  Text('• 2 tomatoes, quartered'),
                  Text('• 1 radish, sliced'),
                  Text('• 1 eggplant, sliced'),
                  Text('• 1 bundle kangkong (water spinach), separated into stalks'),
                  Text('• 3 pieces green chili peppers (siling haba)'),
                  Text('• 2 liters water'),
                  Text('• 1 packet sinigang mix (tamarind soup base)'),
                  Text('• Fish sauce (patis) or salt to taste'),
                  Text('• Ground black pepper to taste'),
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
                    '1. In a large pot, combine water, pork ribs or pork belly, onion, and tomatoes. Bring to a boil and simmer for 1 hour or until the pork is tender.\n',
                  ),
                  Text(
                    '2. Once the pork is tender, add the sinigang mix (tamarind soup base) and stir until dissolved.\n',
                  ),
                  Text(
                    '3. Add the radish and eggplant to the pot and simmer for another 5 minutes or until slightly softened.\n',
                  ),
                  Text(
                    '4. Add the kangkong stalks and green chili peppers to the pot. Simmer for another 2-3 minutes.\n',
                  ),
                  Text(
                    '5. Season with fish sauce (patis) or salt and ground black pepper to taste.\n',
                  ),
                  Text(
                    '6. Serve hot with steamed rice.\n',
                  ),
                  Text(
                    '7. Enjoy your delicious Pork Sinigang!\n',
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
