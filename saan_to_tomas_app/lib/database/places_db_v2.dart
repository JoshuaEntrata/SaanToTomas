import 'package:saan_to_tomas_app/model/places.dart';

class PlacesDB {
  final List<Places> _places = [
    Places(
      name: 'Angkong Dimsum House',
      address: '1241 Asturias St, Sampaloc, Manila, 1015 Metro Manila',
      description:
          'Angkong Dimsum House, located on P. Noval street, sells a variety of different kinds of siomai: it has pork, chicken, quail, and Japanese siomai. It also offers different kinds of dumplings, if you’re looking for something a little different.',
      latitude: 14.611999894141436,
      longitude: 120.9873780484396,
      category: 'Restaurant',
      image: 'images/restaurant/AngkongDimsumHouse.jpg',
    ),
    Places(
      name: 'Mang Tootz Foodhouse',
      address: '1135, 1008 Padre Noval St, Sampaloc, Manila, 1008 Metro Manila',
      description:
          'Mang Tootz Food House, formerly known as tootzsilog, started in 1991 as tapsilogan and was used to be located in a small corner along J. Barlin street within Sampaloc. Mang Tootz Food House is well-known for its unique cuisine, including Korean barbecue, breaded chicken, kebabs, and its signature dish, the banana turon rhum-a.',
      latitude: 14.609294842319377,
      longitude: 120.98689382572572,
      category: 'Restaurant',
      image: 'images/restaurant/MangTootzFoodhouse.jpg',
    ),
    Places(
      name: 'Santorini',
      address: '981 Padre Noval St, Sampaloc, Manila, 1008 Metro Manila',
      description:
          "Nestled near the University of Santo Tomas, Santorini Restaurant is a haven for Korean cuisine enthusiasts seeking a taste of authentic Korean flavors amidst a lively k-pop atmosphere. From its delectable bibimbap and japchae to its sizzling tteokbokki and bulgogi, Santorini's menu tantalizes taste buds with an array of Korean comfort food, all served at student-friendly prices.",
      latitude: 14.607803423406644,
      longitude: 120.98841484089671,
      category: 'Restaurant',
      image: 'images/restaurant/Santorini.jpg',
    ),
    Places(
      name: 'Samgyupsalamat Fusebox UST',
      address:
          'Unit 2G and 2H Fusebox Building, 1254-1258 Asturias St. Zone 046, Barangay 471, Sampaloc, Manila, Metro Manila',
      description:
          'The restaurant offers a variety of Korean barbecue meats, as well as other Korean dishes such as bibimbap, japchae, and tteokbokki. They also have a variety of drinks available, including Korean sodas and beers.',
      latitude: 14.612440783906248,
      longitude: 120.98730566390485,
      category: 'Restaurant',
      image: 'images/restaurant/SamgyupsalamatFuseboxUST.jpg',
    ),
    Places(
      name: "Jim's Pares Usok",
      address: '1218 Concepcion St, Sampaloc, sampaloc, 1008',
      description:
          "Jim's Pares & Mami is famous for its pares usok, or \"smoky beef stew\". This dish is made with tender beef shanks that are simmered in a flavorful broth until they are fall-apart tender. The broth is then infused with the smoky flavor of wood embers, giving the pares usok its unique and irresistible taste.",
      latitude: 14.612352829473872,
      longitude: 120.98835958102954,
      category: 'Restaurant',
      image: 'images/restaurant/JimsParesUsok.jpg',
    ),
    Places(
      name: "Anytime Fitness University Belt",
      address: '3F, 958 Lacson Ave, Sampaloc, Manila, 1008 Metro Manila',
      description:
          "Anytime Fitness helps you in a creating a plan that truly fits your life. It means a coach and a community to support you in every possible way. And it means more options to work out anytime, anywhere.",
      latitude: 14.610523219159036,
      longitude: 120.99233709853958,
      category: 'Gym',
      image: 'images/gym/AnytimeFitnessUniversityBelt.jpg',
    ),
    Places(
      name: "Pound For Pound Fitness UST",
      address: '864 Moret St, Sampaloc, Manila, 1008 Metro Manila',
      description:
          "Pound For Pound Fitness UST offers a variety of fitness classes, including boxing, kickboxing, and MMA. They also have a personal training program available.",
      latitude: 14.607415029687337,
      longitude: 120.99103166838223,
      category: 'Gym',
      image: 'images/gym/PoundForPoundFitnessUST.jpg',
    ),
    Places(
      name: "Ryan J Fitness Center",
      address:
          'KB, Arizona Tower, Padre Campa St, Sampaloc, Manila, 1008 Metro Manila',
      description:
          "Ryan J Fitness Center is a well-equipped gym located near UST, offering a variety of cardio machines, free weights, group fitness classes, and personal training services.",
      latitude: 14.605179478742858,
      longitude: 120.98918072113356,
      category: 'Gym',
      image: 'images/gym/RyanJFitnessCenter.jpg',
    ),
    Places(
      name: "Philippine Sports Performance U-Belt Manila",
      address:
          'Arsenio H, 1008 Lacson Ave, Sampaloc, Manila, 1008 Metro Manila',
      description:
          "Philippine Sports Performance U-Belt Manila is a haven for fitness enthusiasts, offering a comprehensive range of services to help individuals achieve their fitness goals. With a dedicated focus on helping individuals reach their full potential, Philippine Sports Performance U-Belt Manila stands as a pillar of the community, fostering a passion for health and well-being.",
      latitude: 14.60945388127385,
      longitude: 120.99284136732163,
      category: 'Gym',
      image: 'images/gym/PhilippineSportsPerformanceU-BeltManila.jpg',
    ),
    Places(
      name: "Joel's Muscles & Curves Gym",
      address: 'Lerma St, Sampaloc, Manila, 1008 Metro Manila',
      description:
          "Joel's Muscles & Curves Gym is known for its affordable rates and its focus on providing a welcoming and inclusive environment for people of all fitness levels. The gym offers a variety of classes and equipment, and its trainers are always available to help members reach their fitness goals.",
      latitude: 14.60549689349232,
      longitude: 120.98736408854927,
      category: 'Gym',
      image: 'images/gym/JoelsMusclesCurvesGym.jpg',
    ),
    Places(
      name: "933 Creatives",
      address: '1042 Tolentino St, Sampaloc, Manila, 1008 Metro Manila',
      description:
          "933 Creatives is a vibrant coworking space in Sampaloc, Manila, offering a pet-friendly environment, ample amenities, and a dynamic atmosphere for creative minds.",
      latitude: 14.60794831642206,
      longitude: 120.98744632036866,
      category: 'Study Hub',
      image: 'images/study_hub/933Creatives.jpg',
    ),
    Places(
      name: "HomeRoom Co-Working and Study Lounge",
      address: '1521 Dapitan St, Sampaloc, Manila, 1015 Metro Manila',
      description:
          "Nestled in the heart of Sampaloc, Manila, HomeRoom Co-Working and Study Lounge is a tranquil oasis designed to foster productivity and creativity. With ergonomic workspaces, high-speed Wi-Fi, and a plethora of amenities, HomeRoom is your haven for focused work and dedicated study sessions.",
      latitude: 14.612879691146407,
      longitude: 120.98929978015309,
      category: 'Study Hub',
      image: 'images/study_hub/HomeRoomCoWorkingandStudyLounge.jpg',
    ),
    Places(
      name: "107 Co-Working by Macao Imperial Tea",
      address:
          'Pacific Suites, 1218 Santander St, Sampaloc, Manila, 1008 Metro Manila',
      description:
          "107 Co-Working by Macao Imperial Tea is a vibrant coworking space in Sampaloc, Manila, offering a fusion of urban and international café vibes with a conducive environment for focused work, collaborative projects, and networking opportunities. Strategically located near the University Belt, the space caters to students, professionals, entrepreneurs, and remote workers seeking a productive and inspiring workspace.",
      latitude: 14.610591464159592,
      longitude: 120.98687678578193,
      category: 'Study Hub',
      image: 'images/study_hub/107CoWorkingbyMacaoImperialTea.jpg',
    ),
    Places(
      name: "Stream Concept Study Hub",
      address: '1563 España Blvd, Sampaloc, 1015 Metro Manila',
      description:
          "Stream Concept Study Hub, a haven for students, freelancers, and entrepreneurs, offers an affordable and productive coworking space in Manila. Its cafe-themed ambiance, high-speed internet, and friendly staff make it an ideal spot for focused work.",
      latitude: 14.610144279629994,
      longitude: 120.99295578266559,
      category: 'Study Hub',
      image: 'images/study_hub/StreamConceptStudyHub.jpg',
    ),
    Places(
      name: "STUDYHAVEN INC.",
      address:
          '2nd Floor, YOU.suites, 2113 Recto Ave, Sampaloc, Manila, 1008, Sampaloc, Manila, 1015 Metro Manila',
      description:
          "STUDYHAVEN INC., a haven for academic excellence and holistic development, empowers students to reach their full potential through innovative teaching, state-of-the-art facilities, and a nurturing environment.",
      latitude: 14.601416212676817,
      longitude: 120.98969222168147,
      category: 'Study Hub',
      image: 'images/study_hub/STUDYHAVENINC..jpg',
    ),
    Places(
      name: "Manila Cafe",
      address:
          'Anie\'s Place, 1015 Padre Noval St, Sampaloc, Manila, 1008 Metro Manila',
      description:
          "Born in Manila, named as Manila. This is your unique cafe experience. Offering strong and authentic products fused with our warm brand of service.",
      latitude: 14.607889807347771,
      longitude: 120.98808772022747,
      category: 'Coffee',
      image: 'images/coffee/ManilaCafe.jpg',
    ),
    Places(
      name: "Starbucks",
      address: 'Dapitan St, cor Santander St, Sampaloc, Manila',
      description:
          "Starbucks is a Seattle-based coffeehouse chain known for its signature roasts, light bites and WiFi availability It is open from 6:30 AM to 12:30 AM Monday to Friday, and from 7:00 AM to 1:00 AM on Saturday and Sunday...",
      latitude: 14.610596661900882,
      longitude: 120.98696447380688,
      category: 'Coffee',
      image: 'images/coffee/Starbucks.jpg',
    ),
    Places(
      name: "Seattle's Best Coffee",
      address:
          'Ground Floor, UST Campus, Quadricentennial Pavilion, Sampaloc, Manila, 1008 Metro Manila',
      description:
          "Amidst the vibrant University of Santo Tomas campus, Seattle's Best Coffee near UST emerges as a welcoming haven for students and coffee connoisseurs alike. Its cozy ambiance, tantalizing aroma of freshly brewed coffee, and convenient location make it a popular spot for studying, socializing, and indulging in delectable brews. Whether a quick caffeine fix or a leisurely study session, Seattle's Best Coffee near UST offers a warm and welcoming sanctuary for all.",
      latitude: 14.609820599080459,
      longitude: 120.99140246213587,
      category: 'Coffee',
      image: 'images/coffee/SeattlesBestCoffee.jpg',
    ),
    Places(
      name: "Calle Cafe by Don Gabriel",
      address: '1343 Dapitan St, Sampaloc, Manila, 1008 Metro Manila',
      description:
          "Calle Cafe by Don Gabriel UST, Dapitan is a great place to relax and study, or to catch up with friends. It is also a convenient place to stop for a quick bite to eat. It is a popular spot for students and locals alike, and is known for its affordable prices and delicious coffee.",
      latitude: 14.611172832995729,
      longitude: 120.98756074864812,
      category: 'Coffee',
      image: 'images/coffee/CalleCafebyDonGabriel.jpg',
    ),
    Places(
      name: "Coffeepages",
      address: '1233 J Barlin St, Sampaloc, Manila, 1015 Metro Manila',
      description:
          "Embracing the bustling streets of Sampaloc, Manila, Coffeepages UST P.Noval beckons coffee enthusiasts and students alike to its cozy haven. Its inviting atmosphere, convenient location, and delectable coffee creations have transformed it into a beloved neighborhood gem. Whether seeking a respite from academic rigor or a rendezvous with fellow coffee lovers, Coffeepages UST P.Noval promises a delightful escape.",
      latitude: 14.608849671596408,
      longitude: 120.9872317841259,
      category: 'Coffee',
      image: 'images/coffee/Coffeepages.jpg',
    ),
    Places(
      name: "7-Eleven",
      address: '864 M.F. Jhocson, Sampaloc, Manila, 1015 Metro Manila',
      description:
          "7-Eleven is the largest convenience store chain in the world. There are currently around 83,485 7-Eleven stores across the world, serving customers in 17 countries including Japan, Australia, Canada, Taiwan, Mexico, Malaysia, Thailand, Singapore, Sweden and China.",
      latitude: 14.607930144599608,
      longitude: 120.99142690502482,
      category: 'Store',
      image: 'images/store/7-Eleven.jpg',
    ),
    Places(
      name: "Lawson Convenience Store",
      address:
          'Unit 01 G/F Multi Deck Parking Bldg., UST Campus España Blvd. Zone 046, Brgy. 47 Sampaloc, 1015 Metro Manila',
      description:
          "Lawson is a Japanese convenience store chain with outlets across Asia. They offer a wide variety of products and services, including food, drinks, groceries, cosmetics, and ATM services. Lawson is known for its fresh food and its commitment to sustainability.",
      latitude: 14.610613837480937,
      longitude: 120.99091969681832,
      category: 'Store',
      image: 'images/store/LawsonConvenienceStore.png',
    ),
    Places(
      name: "Puregold España",
      address: 'España Blvd, Sampaloc, Manila, 1008 Metro Manila',
      description:
          "Puregold is a large supermarket chain in the Philippines. It is known for its wide variety of products, affordable prices, and convenient locations. If you are looking for a supermarket with a wide variety of products, affordable prices, and convenient locations, Puregold is a great option.",
      latitude: 14.611220050268841,
      longitude: 120.99470930488582,
      category: 'Store',
      image: 'images/store/PuregoldEspana.png',
    ),
    Places(
      name: "SM City San Lazaro",
      address: 'Felix Huertas, Corner, 1003 Lacson Ave, Santa Cruz, Manila',
      description:
          "SM City San Lazaro is a popular shopping destination for locals and tourists alike. The mall has a wide variety of shops, including department stores, clothing stores, shoe stores, and souvenir shops. There is also a food court with a variety of restaurants to choose from.",
      latitude: 14.618241517366094,
      longitude: 120.98556533484633,
      category: 'Store',
      image: 'images/store/SMCitySanLazaro.png',
    ),
    Places(
      name: "Uncle John's",
      address: '1224 España Blvd, Sampaloc, Manila, 1015 Metro Manila',
      description:
          "Uncle John's, a Filipino convenience store chain, is renowned for its delectable food, affordable prices, and convenient locations. Their signature Spicy Chicken Fillet Burger and Kariman Sandwich have captivated taste buds nationwide, while their array of fried delights and budget-friendly prices make them a beloved destination for people of all ages. With over 2,000 stores nationwide, Uncle John's is always within reach, offering a quick and satisfying meal.",
      latitude: 14.606435853188787,
      longitude: 120.98951328994183,
      category: 'Store',
      image: 'images/store/UncleJohns.png',
    ),
    Places(
      name: "UST Museum",
      address:
          '3f Museum Directors Office, España Blvd, Sampaloc, Manila, 1015 Metro Manila',
      description:
          "The University of Santo Tomas Museum is the oldest existing museum in the Philippines. It started as a Gabinete de Fisica, or observation room, of mineral, botanical and biological collections in the 17th century.",
      latitude: 14.610278772861811,
      longitude: 120.9891832150744,
      category: 'Museum',
      image: 'images/museum/USTMuseum.jpg',
    ),
    Places(
      name: "Malacañang Palace",
      address: 'Jose P Laurel Sr, San Miguel, Manila, Metro Manila',
      description:
          "Malacañang Palace, officially known as Malacañan Palace, is the official residence and principal workplace of the president of the Philippines. It is located in the Manila district of San Miguel, along Jose P. Laurel Street though it is commonly associated with Mendiola Street nearby.",
      latitude: 14.594293149164363,
      longitude: 120.9945247528908,
      category: 'Museum',
      image: 'images/museum/MalacanangPalace.jpg',
    ),
    Places(
      name: "Museo de San Agustin",
      address: 'General Luna St, Intramuros, Manila, 1002 Metro Manila',
      description:
          "Museum with a collection of artifacts & artwork in a former monastery adjacent to a landmark church.",
      latitude: 14.589386456873955,
      longitude: 120.97498952115974,
      category: 'Museum',
      image: 'images/museum/MuseoDeSanAgustin.jpg',
    ),
    Places(
      name: "National Museum of Fine Arts",
      address: 'Padre Burgos Ave, Ermita, Manila, 1000 Metro Manila',
      description:
          "The National Museum of the Philippines is an umbrella government organization that oversees a number of national museums in the Philippines including ethnographic, anthropological, archaeological, and visual arts collections.",
      latitude: 14.587190745040116,
      longitude: 120.981325523794,
      category: 'Museum',
      image: 'images/museum/NationalMuseumOfFineArts.jpeg',
    ),
    Places(
      name: "Museo de Intramuros",
      address: 'Corner Arzobispo, Anda St, Intramuros, Manila, 1002',
      description:
          "Museo de Intramuros is an ecclesiastical museum operated and managed by the Intramuros Administration. It is located at the reconstructed San Ignacio Church and Convent within the historic walled area of Intramuros in Manila, Philippines.",
      latitude: 14.590165573420638,
      longitude: 120.97329239787888,
      category: 'Museum',
      image: 'images/museum/MuseoDeIntramuros.jpg',
    ),
  ];

  Places getPlace() {
    return _places[4];
  }

  Places getPlaceByName(String name) {
    return _places.firstWhere((place) => place.name == name);
  }

  List<Places> search(String name) {
    List<Places> places = [];
    for (Places place in _places) {
      String nameTemp = place.name.toUpperCase();
      if (nameTemp.contains(name.toUpperCase())) {
        places.add(place);
      }
    }
    return places;
  }

  List<Places> getCategoryList(String category) {
    List<Places> places = [];
    for (Places place in _places) {
      String categoryTemp = place.category.toUpperCase();
      if (categoryTemp.contains(category.toUpperCase())) {
        places.add(place);
      }
    }
    return places;
  }
}
