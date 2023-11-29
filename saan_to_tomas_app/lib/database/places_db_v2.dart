import 'package:saan_to_tomas_app/model/places.dart';
import 'package:saan_to_tomas_app/screens/maps_screen.dart';

class PlacesDB {
  final List<Places> _places = [
    Places(
        name: 'Angkong Dimsum House',
        address: '1241 Asturias St, Sampaloc, Manila, 1015 Metro Manila',
        description: 'Angkong Dimsum House, located on P. Noval street, sells a variety of different kinds of siomai: it has pork, chicken, quail, and Japanese siomai. It also offers different kinds of dumplings, if you’re looking for something a little different.',
        latitude: 14.611999894141436,
        longitude: 120.9873780484396,
        category: 'Restaurant'),
    Places(
        name: 'Mang Tootz Foodhouse',
        address: '1135, 1008 Padre Noval St, Sampaloc, Manila, 1008 Metro Manila',
        description: 'Mang Tootz Food House, formerly known as tootzsilog, started in 1991 as tapsilogan and was used to be located in a small corner along J. Barlin street within Sampaloc. Mang Tootz Food House is well-known for its unique cuisine, including Korean barbecue, breaded chicken, kebabs, and its signature dish, the banana turon rhum-a.',
        latitude: 14.609294842319377,
        longitude: 120.98689382572572,
        category: 'Restaurant'),
    Places(
        name: 'Santorini',
        address: '981 Padre Noval St, Sampaloc, Manila, 1008 Metro Manila',
        description: "Nestled near the University of Santo Tomas, Santorini Restaurant is a haven for Korean cuisine enthusiasts seeking a taste of authentic Korean flavors amidst a lively k-pop atmosphere. From its delectable bibimbap and japchae to its sizzling tteokbokki and bulgogi, Santorini's menu tantalizes taste buds with an array of Korean comfort food, all served at student-friendly prices.",
        latitude: 14.607803423406644,
        longitude: 120.98841484089671,
        category: 'Restaurant'),
    Places(
        name: 'Samgyupsalamat Fusebox UST',
        address: 'Unit 2G and 2H Fusebox Building, 1254-1258 Asturias St. Zone 046, Barangay 471, Sampaloc, Manila, Metro Manila',
        description: 'The restaurant offers a variety of Korean barbecue meats, as well as other Korean dishes such as bibimbap, japchae, and tteokbokki. They also have a variety of drinks available, including Korean sodas and beers.',
        latitude: 14.612440783906248,
        longitude: 120.98730566390485,
        category: 'Restaurant'),
    Places(
        name: "Jim's Pares Usok",
        address: '1218 Concepcion St, Sampaloc, sampaloc, 1008',
        description: "Jim's Pares & Mami is famous for its pares usok, or \"smoky beef stew\". This dish is made with tender beef shanks that are simmered in a flavorful broth until they are fall-apart tender. The broth is then infused with the smoky flavor of wood embers, giving the pares usok its unique and irresistible taste.",
        latitude: 14.612352829473872,
        longitude: 120.98835958102954,
        category: 'Restaurant'),
  ];

  Places getPlace() {
    return _places[4];
  }

  Places? search(String name) {
    for(Places place in _places) {
      if (place.name.contains(name)) {
        return place;
      }
    }
    return null;
  }
}