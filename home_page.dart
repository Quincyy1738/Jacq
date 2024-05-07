import 'package:flutter/material.dart';
import 'archivepage.dart';
import 'recipes/Pancit MoloPage.dart';
import 'recipes/Pancit PalabokPage.dart';
import 'routewhereyougo.dart';
import 'recipes/GarlicPage.dart';
import 'recipes/LongsilogPage.dart';
import 'recipes/TapsilogPage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'recipes/Adobong KangkongPage.dart';
import 'recipes/AfridataPage.dart';
import 'recipes/Arroz CaldoPage.dart';
import 'recipes/Arroz ValencianaPage.dart';
import 'recipes/BangsilogPage.dart';
import 'recipes/Beef NilagaPage.dart';
import 'recipes/Beef Pares MamiPage.dart';
import 'recipes/Bicol ExpressPage.dart';
import 'recipes/Bihon GuisadoPage.dart';
import 'recipes/Binagoongan BaboyPage.dart';
import 'recipes/BulaloPage.dart';
import 'recipes/CalderetaPage.dart';
import 'recipes/ChamporadoPage.dart';
import 'recipes/Chicken AdoboPage.dart';
import 'recipes/Chicken InasalPage.dart';
import 'recipes/Chicken TinolaPage.dart';
import 'recipes/Daing na BangusPage.dart';
import 'recipes/DinuguanPage.dart';
import 'recipes/EscabechePage.dart';
import 'recipes/Ginataang ManokPage.dart';
import 'recipes/Ginataang TilapiaPage.dart';
import 'recipes/Inihaw na LiempoPage.dart';
import 'recipes/Kare-KarePage.dart';
import 'recipes/La Paz BatchoyPage.dart';
import 'recipes/Lechon KawaliPage.dart';
import 'recipes/LomiPage.dart';
import 'recipes/MenudoPage.dart';
import 'recipes/Munggo GuisadoPage.dart';
import 'recipes/Paella FilipinaPage.dart';
import 'recipes/Pancit CantonPage.dart';
import 'recipes/Pancit EstacionPage.dart';
import 'recipes/Pancit MalabonPage.dart';
import 'recipes/PandesalPage.dart';
import 'recipes/PinakbetPage.dart';
import 'recipes/Pork AdoboPage.dart';
import 'recipes/Pork SinigangPage.dart';
import 'recipes/Rellenong BangusPage.dart';
import 'recipes/Sinampalukang ManokPage.dart';
import 'recipes/SinangagPage.dart';
import 'recipes/Sinigang na BaboyPage.dart';
import 'recipes/Sinigang na BakaPage.dart';
import 'recipes/Sinigang na HiponPage.dart';
import 'recipes/SisigPage.dart';
import 'recipes/Tortang TalongPage.dart';
import 'recipes/TosilogPage.dart';

class Hpd2 extends StatefulWidget {
  @override
  _Hpd2State createState() => _Hpd2State();
}

class _Hpd2State extends State<Hpd2> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  List<String> favorites = []; // Initialize list to store favorited items


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    )..addListener(() {
      setState(() {});
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // List of menu items
  List<Map<String, String>> menuItems = [
    {
      'title': 'Garlic Fried Rice',
      'subtitle': 'Recipe',
      'image': 'lib/assets/friedrice.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Tapsilog',
      'subtitle': 'Recipe',
      'image': 'lib/assets/tapsilog.webp',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Longsilog',
      'subtitle': 'Recipe',
      'image': 'lib/assets/longsilog.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Bangsilog',
      'subtitle': 'Recipe',
      'image': 'lib/assets/bangsilong.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Tosilog',
      'subtitle': 'Recipe',
      'image': 'lib/assets/tosilog.webp',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Pandesal',
      'subtitle': 'Recipe',
      'image': 'lib/assets/pandesal1.webp',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Champorado',
      'subtitle': 'Recipe',
      'image': 'lib/assets/champorado.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Arroz Caldo',
      'subtitle': 'Recipe',
      'image': 'lib/assets/arrozcaldo.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Tortang Talong',
      'subtitle': 'Recipe',
      'image': 'lib/assets/tortang talong.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Daing na Bangus',
      'subtitle': 'Recipe',
      'image': 'lib/assets/daing na bangus.webp',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Sinigang na Baboy',
      'subtitle': 'Recipe',
      'image': 'lib/assets/sinigang baboy.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Chicken Tinola',
      'subtitle': 'Recipe',
      'image': 'lib/assets/chicken tinola.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Munggo Guisado',
      'subtitle': 'Recipe',
      'image': 'lib/assets/munggo guisado.jpeg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Sinampalukang Manok',
      'subtitle': 'Recipe',
      'image': 'lib/assets/sinampalukang manok.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Beef Nilaga',
      'subtitle': 'Recipe',
      'image': 'lib/assets/beef nilaga.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Sinigang na Hipon',
      'subtitle': 'Recipe',
      'image': 'lib/assets/sinigang na hipon.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Pork Sinigang',
      'subtitle': 'Recipe',
      'image': 'lib/assets/pork sinigang.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'La Paz Batchoy',
      'subtitle': 'Recipe',
      'image': 'lib/assets/lapaz batchoy.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Beef Pares Mami',
      'subtitle': 'Recipe',
      'image': 'lib/assets/beef pares mami.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Bulalo',
      'subtitle': 'Recipe',
      'image': 'lib/assets/bulalo.png',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Chicken Adobo',
      'subtitle': 'Recipe',
      'image': 'lib/assets/chicken adobo.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Pork Adobo',
      'subtitle': 'Recipe',
      'image': 'lib/assets/pork adobo.JPG',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Adobong Kangkong',
      'subtitle': 'Recipe',
      'image': 'lib/assets/adobong kangkong.JPG',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Bicol Express',
      'subtitle': 'Recipe',
      'image': 'lib/assets/bicol express.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Lechon Kawali',
      'subtitle': 'Recipe',
      'image': 'lib/assets/lechon kawali.webp',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Pinakbet',
      'subtitle': 'Recipe',
      'image': 'lib/assets/pinakbet.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Kare-Kare',
      'subtitle': 'Recipe',
      'image': 'lib/assets/karekare.webp',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Menudo',
      'subtitle': 'Recipe',
      'image': 'lib/assets/menudo1.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Afritada',
      'subtitle': 'Recipe',
      'image': 'lib/assets/afridata.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Menudo',
      'subtitle': 'Recipe',
      'image': 'lib/assets/caldereta.jpeg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Inihaw na Liempo',
      'subtitle': 'Recipe',
      'image': 'lib/assets/inihaw na liempo.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Ginataang Tilapia',
      'subtitle': 'Recipe',
      'image': 'lib/assets/ginataang tilapia.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Escabeche',
      'subtitle': 'Recipe',
      'image': 'lib/assets/escabeche1.JPG',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Sisig',
      'subtitle': 'Recipe',
      'image': 'lib/assets/sisig.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Rellenong Bangus',
      'subtitle': 'Recipe',
      'image': 'lib/assets/rellenong.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Chicken Inasal',
      'subtitle': 'Recipe',
      'image': 'lib/assets/chicken inasal.jpeg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Sinigang na Baka',
      'subtitle': 'Recipe',
      'image': 'lib/assets/sinigang na baka.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Dinuguan',
      'subtitle': 'Recipe',
      'image': 'lib/assets/dinuguan.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Ginataang Manok',
      'subtitle': 'Recipe',
      'image': 'lib/assets/ginataang manok1.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Binagoongan Baboy',
      'subtitle': 'Recipe',
      'image': 'lib/assets/binagoongan baboy.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Pancit Canton',
      'subtitle': 'Recipe',
      'image': 'lib/assets/pancit canton.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Pancit Palabok',
      'subtitle': 'Recipe',
      'image': 'lib/assets/pancit palabok.jpeg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Bihon Guisado',
      'subtitle': 'Recipe',
      'image': 'lib/assets/bihon guisado.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Lomi',
      'subtitle': 'Recipe',
      'image': 'lib/assets/lomi1.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Arroz Valenciana',
      'subtitle': 'Recipe',
      'image': 'lib/assets/arroz valenciana.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Sinangag',
      'subtitle': 'Recipe',
      'image': 'lib/assets/sinangag.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Paella Filipina',
      'subtitle': 'Recipe',
      'image': 'lib/assets/paella.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Pancit Malabon',
      'subtitle': 'Recipe',
      'image': 'lib/assets/pancit malabon.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Pancit Molo',
      'subtitle': 'Recipe',
      'image': 'lib/assets/pancit molo.jpg',
      'route': 'RouteWhereYouGo()',
    },
    {
      'title': 'Pancit Estacion',
      'subtitle': 'Recipe',
      'image': 'lib/assets/pancit estacion.jpg',
      'route': 'RouteWhereYouGo()',
    },
    // Add other menu items here...
  ];

  // Filtered list of menu items based on search query
  List<Map<String, String>> filteredItems = [];

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: MediaQuery.of(context).padding.top),
              searchBar(_w),
              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                  children: _buildBoxes(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<Widget> _buildBoxes() {
    // Use filteredItems if it's not empty, otherwise use menuItems
    List<Map<String, String>> itemsToDisplay = filteredItems.isNotEmpty ? filteredItems : menuItems;

    List<Widget> boxes = [];
    int itemCount = itemsToDisplay.length;

    // Check if there's only one item and it's filtered
    bool isSingleFilteredItem = filteredItems.isNotEmpty && filteredItems.length == 1;

    for (int i = 0; i < itemCount; i += 2) {
      Widget leftCard = SizedBox.shrink();
      Widget rightCard = SizedBox.shrink();

      leftCard = buildCard(itemsToDisplay[i]);

      if (i + 1 < itemCount) {
        rightCard = buildCard(itemsToDisplay[i + 1]);
      }

      // If there's only one item and it's filtered, align it to the left of the search icon
      if (isSingleFilteredItem) {
        boxes.add(Padding(
          padding: EdgeInsets.fromLTRB( 0, 20.0, 200, 200), // Adjust left padding to align with search icon
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [leftCard],
          ),
        ));
      } else {
        boxes.add(Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [leftCard, rightCard],
          ),
        ));
      }
    }
    return boxes;
  }


  Widget buildCard(Map<String, String> item) {
    late Widget route;

    switch (item['title']) {
      case 'Garlic Fried Rice':
        route = GarlicPage();
        break;
      case 'Tapsilog':
        route = TapsilogPage();
        break;
      case 'Longsilog':
        route = LongsilogPage();
        break;
      case 'Bangsilog':
        route = BangsilogPage();
        break;
      case 'Tosilog':
        route = TosilogPage();
        break;
      case 'Pandesal':
        route = PandesalPage();
        break;
      case 'Champorado':
        route = ChamporadoPage();
        break;
      case 'Arroz Caldo':
        route = ArrozCaldoPage();
        break;
      case 'Tortang Talong':
        route = TortangTalongPage();
        break;
      case 'Daing na Bangus':
        route = DaingNaBangusPage();
        break;
      case 'Sinigang na Baboy':
        route = SinigangNaBaboyPage();
        break;
      case 'Chicken Tinola':
        route = ChickenTinolaPage();
        break;
      case 'Munggo Guisado':
        route = MunggoGuisadoPage();
        break;
      case 'Sinampalukang Manok':
        route = SinampalukangManokPage();
        break;
      case 'Beef Nilaga':
        route = BeefNilagaPage();
        break;
      case 'Sinigang na Hipon':
        route = SinigangNaHiponPage();
        break;
      case 'Pork Sinigang':
        route = PorkSinigangPage();
        break;
      case 'La Paz Batchoy':
        route = LaPazBatchoyPage();
        break;
      case 'Beef Pares Mami':
        route = BeefParesMamiPage();
        break;
      case 'Bulalo':
        route = BulaloPage();
        break;
      case 'Chicken Adobo':
        route = ChickenAdoboPage();
        break;
      case 'Pork Adobo':
        route = PorkAdoboPage();
        break;
      case 'Adobong Kangkong':
        route = AdobongKangkongPage();
        break;
      case 'Bicol Express':
        route = BicolExpressPage();
        break;
      case 'Lechon Kawali':
        route = LechonKawaliPage();
        break;
      case 'Pinakbet':
        route = PinakbetPage();
        break;
      case 'Kare-Kare':
        route = KareKarePage();
        break;
      case 'Menudo':
        route = MenudoPage();
        break;
      case 'Afridata':
        route = AfridataPage();
        break;
      case 'Caldereta':
        route = CalderetaPage();
        break;
      case 'Inihaw na Liempo':
        route = InihawNaLiempoPage();
        break;
      case 'Ginataang Tilapia':
        route = GinataangTilapiaPage();
        break;
      case 'Escabeche':
        route = EscabechePage();
        break;
      case 'Sisig':
        route = SisigPage();
        break;
      case 'Rellenong Bangus':
        route = RellenongBangusPage();
        break;
      case 'Chicken Inasal':
        route = ChickenInasalPage();
        break;
      case 'Sinigang na Baka':
        route = SinigangNaBakaPage();
        break;
      case 'Dinuguan':
        route = DinuguanPage();
        break;
      case 'Ginataang Manok':
        route = GinataangManokPage();
        break;
      case 'Binagoongan Baboy':
        route = BinagoonganBaboyPage();
        break;
      case 'Pancit Canton':
        route = PancitCantonPage();
        break;
      case 'Pancit Palabok':
        route = PancitPalabokPage();
        break;
      case 'Bihon Guisado':
        route = BihonGuisadoPage();
        break;
      case 'Lomi':
        route = LomiPage();
        break;
      case 'Arroz Valenciana':
        route = ArrozValencianaPage();
        break;
      case 'Sinangag':
        route = SinangagPage();
        break;
      case 'Paella Filipina':
        route = PaellaFilipinaPage();
        break;
      case 'Pancit Malabon':
        route = PancitMalabonPage();
        break;
      case 'Pancit Molo':
        route = PancitMoloPage();
        break;
      case 'Pancit Estacion':
        route = PancitEstacionPage();
        break;
      default:
        route = RouteWhereYouGo();
    }

    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: card(
          title: item['title']!,
          subtitle: item['subtitle']!,
          image: item['image']!,
          route: route,
        ),
      ),
    );
  }



  Widget searchBar(double _w) {
    return Padding(
      padding: EdgeInsets.fromLTRB(_w / 20, _w / 25, _w / 20, _w / 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              height: _w / 8.5,
              padding: EdgeInsets.symmetric(horizontal: _w / 60),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(99),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    blurRadius: 30,
                    offset: Offset(0, 15),
                  ),
                ],
              ),
              child: TextField(
                maxLines: 1,
                onChanged: (value) {
                  filterItems(value);
                },
                decoration: InputDecoration(
                  fillColor: Colors.transparent,
                  filled: true,
                  hintStyle: TextStyle(
                      color: Colors.black.withOpacity(.4),
                      fontWeight: FontWeight.w600,
                      fontSize: _w / 22),
                  prefixIcon: Icon(Icons.search, color: Colors.black.withOpacity(.6)),
                  hintText: 'Search anything...',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  contentPadding: EdgeInsets.zero,
                ),
              ),
            ),
          ),
          SizedBox(width: _w / 20),
          Container(
            height: _w / 8.5,
            width: _w / 8.5,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(99),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.1),
                  blurRadius: 30,
                  offset: Offset(0, 15),
                ),
              ],
            ),
            child: IconButton(
              icon: Icon(Icons.favorite, color: Colors.red.withOpacity(.6)),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ArchivePage()));
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget card({
    required String title,
    required String subtitle,
    required String image,
    required Widget route,
  }) {
    double _w = MediaQuery.of(context).size.width;
    return Opacity(
      opacity: _animation.value,
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => route));
        },
        child: Container(
          width: _w / 2.36,
          height: _w / 1.8,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(.05), blurRadius: 50),
            ],
          ),
          child: Column(
            children: [
              Container(
                width: _w / 2.36,
                height: _w / 2.6,
                decoration: BoxDecoration(
                  color: Color(0xff5C71F3),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                alignment: Alignment.center,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  width: _w / 2.36,
                  height: _w / 2.6,
                ),
              ),
              Container(
                height: _w / 6,
                width: _w / 2.36,
                padding: EdgeInsets.symmetric(horizontal: _w / 50, vertical: _w / 50), // Adjust vertical padding
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align children to the start and end
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              title,
                              textScaleFactor: 1.0,
                              softWrap: true,
                              style: TextStyle(
                                color: Colors.black.withOpacity(.6),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              subtitle,
                              textScaleFactor: 1.0,
                              softWrap: true,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black.withOpacity(.7),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: _w / 100), // Add space between title and heart icon
                    IconButton(
                      onPressed: () {
                        _toggleFavorite(title);
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: favorites.contains(title) ? Colors.red : Colors.grey, // Change heart color based on favorites list
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  void _toggleFavorite(String title) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> favorites = prefs.getStringList('favorites') ?? [];

    // Check if the title is already in favorites
    if (favorites.contains(title)) {
      // If it's already in favorites, remove it
      favorites.remove(title);
    } else {
      // If it's not in favorites, add it
      favorites.add(title);
    }

    // Save the updated favorites list to SharedPreferences
    await prefs.setStringList('favorites', favorites);

    // Trigger a rebuild to reflect the changes
    setState(() {
      // You may also need to update the 'favorites' list used for determining the icon color
      this.favorites = favorites;
    });
  }






  // Function to filter menu items based on search query
  void filterItems(String query) {
    setState(() {
      if (query.isNotEmpty) {
        filteredItems = menuItems.where((item) => item['title']!.toLowerCase().contains(query.toLowerCase())).toList();
      } else {
        filteredItems = [];
      }
    });
  }
}
