import 'package:flutter/material.dart';
import 'routewhereyougo.dart';
import 'recipes/GarlicPage.dart';
import 'recipes/LongsilogPage.dart';
import 'recipes/TapsilogPage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'recipes/Pancit MoloPage.dart';
import 'recipes/Pancit PalabokPage.dart';
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

class ArchivePage extends StatefulWidget {
  @override
  _ArchivePageState createState() => _ArchivePageState();
}

class _ArchivePageState extends State<ArchivePage> {
  late List<String> favorites;

  @override
  void initState() {
    super.initState();
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      favorites = prefs.getStringList('favorites') ?? [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 50,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(.5),
        title: Text(
          'Favorites',
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
      body: favorites.isEmpty
          ? Center(
        child: Text(
          'No favorite items found',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      )
          : ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          String title = favorites[index];
          return GestureDetector(
            onTap: () {
              _navigateToRecipePage(title);
            },
            child: ListTile(
              title: Text(title),
              subtitle: Text('Tap to view recipe'), // Example of additional information
              leading: Icon(Icons.favorite),
              // Add more customization as needed
            ),
          );
        },
      ),
    );
  }

  void _navigateToRecipePage(String title) {
    Widget route;
    switch (title) {
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
      case 'Caldereta':
        route = CalderetaPage();
        break;
    // Add cases for other recipes as needed
      default:
        route = RouteWhereYouGo(); // Default route
    }
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => route));
  }
}

