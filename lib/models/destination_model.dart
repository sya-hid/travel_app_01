import 'package:travel_app_01/models/facilities_model.dart';
import 'package:travel_app_01/models/member_model.dart';

class Destination {
  final int? id, price;
  final String? name, description, image, category, location;
  final double? rate;
  final List<String>? members;
  final List<Facilities>? facilities;

  Destination(
      {this.name,
      this.price = 100,
      this.id,
      this.category,
      this.description,
      this.image,
      this.members,
      this.facilities,
      this.rate,
      this.location});

  factory Destination.fromJson(Map<String, dynamic> data) => Destination(
      id: data['id'],
      image: data['image'],
      name: data['name'],
      description: data['description'],
      location: data['location'],
      rate: data['rate']);
}

List<Destination> destinations = [
  Destination(
      id: 2,
      name: "Nusa Penida",
      category: 'beach',
      members: [members[0], members[2], members[1]],
      image: "assets/beach/nusa-penida-beach.jpg",
      location: "Bali, Indonesia",
      description:
          "Nusa Penida adalah sebuah pulau kecil yang berada sebelah tenggara pulau Bali, dan terpisah oleh selat Badung. Di dekat pulau ini, trdapat 2 pulau kecil lain, yaitu pulau Nusa Lembangan da pulau Nusa Ceningan",
      facilities: [facilities[0], facilities[1], facilities[2], facilities[3]],
      rate: 4.6),
  Destination(
      id: 4,
      name: "Bali Dynasty Resort",
      category: 'hotel',
      image: "assets/hotels/dinasty-bali.jpg",
      location: "Bali, Indonesia",
      facilities: [facilities[0], facilities[1], facilities[7], facilities[3]],
      members: [members[0], members[2], members[1]],
      description:
          "Located in Kuta (Kartika Plaza), Bali Dynasty Resort is a 4-minute walk from Tuban Beach and 7 minutes by foot from Discovery Shopping Mall. This 5-star resort is 0.4 mi (0.6 km) from Waterbom Bali and 1.8 mi (3 km) from Honorary Consulate of the Netherlands. Make yourself at home in one of the 313 air-conditioned rooms featuring fireplaces and LCD televisions. Rooms have private balconies. Complimentary wireless Internet access keeps you connected, and satellite programming is available for your entertainment. Conveniences include phones, as well as safes and desks. Relax at the full-service spa, where you can enjoy massages, body treatments, and facials. After dipping into one of the 3 outdoor swimming pools, you can spend some time at the private beach. This resort also features complimentary wireless Internet access, concierge services, and babysitting/childcare (surcharge). ",
      rate: 4.5),
  Destination(
      id: 5,
      name: "Gili Meno Escape",
      category: 'hotel',
      image: "assets/hotels/gili-meno-escape.jpg",
      location: "Gili Meno, Indonesia",
      facilities: [facilities[0], facilities[1], facilities[7], facilities[3]],
      members: [members[0], members[2], members[1]],
      description:
          "Gili Meno Escape in Gili Meno provides adults only accommodations with an outdoor swimming pool, a garden and a terrace. The property has a 24-hour front desk, airport transportation, a tour desk and free WiFi throughout the property.\nAt the hotel rooms have air conditioning, a desk, a flat-screen TV, a private bathroom, bed linen, towels and a patio with a pool view. All rooms come with a safety deposit box, while certain rooms come with a balcony and others also feature garden views. At Gili Meno Escape the rooms are equipped with a seating area.",
      rate: 4.5),
  Destination(
      id: 6,
      name: "Sikara Lombok Hotel",
      category: 'hotel',
      image: "assets/hotels/sikara-lombok.jpg",
      facilities: [facilities[0], facilities[1], facilities[6], facilities[3]],
      members: [members[0], members[2], members[1]],
      location: "Lombok, Indonesia",
      description:
          "This property is a 6-minute walk from the beach. Featuring a garden, Sikara Lombok Hotel is located in Kuta Lombok, 8.1 mi from Selong Belanak Beach. The property is around a 13-minute walk from Kuta Beach and 4.3 mi from Tanjung Aan Beach. Guests can chill out in the outdoor swimming pool.\nAll rooms come with a flat-screen TV with satellite channels, a kettle, a shower, free toiletries and a desk. With a private bathroom fitted with a hair dryer, rooms at the hotel also boast free WiFi, while certain rooms include a terrace. The units have a wardrobe.",
      rate: 4.5),
  Destination(
      id: 7,
      members: [members[0], members[2], members[1]],
      name: "Gunung Kerinci",
      image: "assets/mountain/kerinci.jpeg",
      category: "mountain",
      location: "Jambi, Indonesia",
      facilities: [facilities[4], facilities[1], facilities[2], facilities[5]],
      description:
          "Gunung Kerinci (juga dieja 'Kerintji', dan dikenal sebagai Gunung Gadang, Merapi) adalah gunung tertinggi di Sumatra, gunung berapi tertinggi di Indonesia, dan puncak tertinggi di Indonesia di luar Papua. Gunung Kerinci terletak tepat di perbatasan antara Provinsi Sumatera Barat dengan Provinsi Jambi, di Pegunungan Bukit Barisan, dekat pantai barat, dan terletak sekitar 130 km sebelah selatan Padang Provinsi Sumatra Barat. Gunung ini juga menjadi batas antara wilayah Etnis Minangkabau dengan Suku Kerinci yang dikelilingi hutan lebat Taman Nasional Kerinci Seblat dan merupakan habitat harimau sumatra dan badak sumatra.",
      rate: 4),
  Destination(
      id: 3,
      name: "Pink Beach",
      category: 'beach',
      facilities: [facilities[6], facilities[1], facilities[2], facilities[3]],
      members: [members[0], members[2], members[1]],
      image: "assets/beach/pink-beach.jpg",
      location: "Lombok, Indonesia",
      description:
          "Pantai Tangsi atau yang lebih dikenal dengan Pantai Pink dari Pulau Lombok terletak di desa Sekaroh, kecamatan Jerowaru, kabupaten Lombok Timur adalah sebuah destinasi wisatawan yang menarik dan patut untuk dikunjungi karena keunikannya.[1][2] Pantai ini merupakan salah satu dari tujuh pantai di dunia yang memiliki pasir pantai berwarna pink, dan satu dari dua pantai di Indonesia yang memiliki pasir pantai berwarna pink.",
      rate: 4.5),
  Destination(
      id: 8,
      name: "Gunung Rinjani",
      facilities: [facilities[4], facilities[1], facilities[2], facilities[5]],
      category: "mountain",
      members: [members[0], members[2], members[1]],
      image: "assets/mountain/rinjani.jpg",
      location: "Lombok, Indonesia ",
      description:
          "Gunung Rinjani adalah gunung yang berlokasi di Pulau Lombok, Nusa Tenggara Barat. Gunung yang merupakan gunung berapi kedua tertinggi di Indonesia dengan ketinggian 3.726 mdpl serta terletak pada lintang 8º25' LS dan 116º28' BT ini merupakan gunung favorit bagi pendaki Indonesia karena keindahan pemandangannya. Gunung ini merupakan bagian dari Taman Nasional Gunung Rinjani yang memiliki luas sekitar 41.330 ha dan ini akan diusulkan penambahannya sehingga menjadi 76.000 ha ke arah barat dan timur.",
      rate: 4),
  Destination(
      id: 1,
      name: "Kuta Mandalika",
      category: 'beach',
      image: "assets/beach/kuta-mandalika-beach.jpeg",
      facilities: [facilities[6], facilities[1], facilities[2], facilities[3]],
      location: "Lombok, Indonesia",
      members: [members[0], members[2], members[1]],
      description:
          "The Mandalika Project covers 1,175 hectares of coastal land in Kuta, South Lombok, and will, when complete, be home to more than 16,000 hotel rooms, a waterpark, a 27-hole golf course, 1,500 villas, and an international-standard motor-racing circuit. The estimated cost of the venture is believed to exceed US\$3 billion.",
      rate: 4.4),
  Destination(
      id: 9,
      name: "Gunung Semeru",
      category: "mountain",
      members: [members[0], members[2], members[1]],
      image: "assets/mountain/semeru.jpg",
      facilities: [facilities[4], facilities[1], facilities[2], facilities[5]],
      location: "Jawa Timur, Indonesia",
      description:
          "Semeru, or Mount Semeru (Indonesian: Gunung Semeru), is an active volcano in East Java, Indonesia. It is located in a subduction zone, where the Indo-Australian plate subducts under the Eurasia plate. It is the highest mountain on the island of Java. The name 'Semeru' is derived from Meru, the central world mountain in Hinduism, or Sumeru, the abode of gods. This stratovolcano is also known as Mahameru, meaning 'The Great Mountain' in Sanskrit.",
      rate: 4),
  Destination(
      id: 10,
      name: "Svarga Resort Lombok",
      category: "hotel",
      members: [members[0], members[1]],
      facilities: [facilities[0], facilities[1], facilities[6], facilities[7]],
      image: "assets/hotels/svarga-resort-lombok.jpg",
      location: "Lombok, Indonesia",
      description:
          "A luxurious retreat awaits guests at Svarga Resort Lombok, a 25-minute walk from the center of Senggigi. Boasting spacious accommodations with free Wi-Fi access, it features a restaurant and a spa on site. Hiking trips can be arranged upon request.\nSvarga Resort Lombok is a 30-minute drive from Bangsal Harbor and an 80-minute drive from Lombok International Airport.\nElegant rooms are tastefully appointed with a seating area and large windows overlooking the garden. They each come with a flat-screen TV, electric kettle and a fridge. The private bathrooms are semi open and fitted with a hairdryer and free toiletries.",
      rate: 4.4),
  Destination(
      id: 11,
      name: "Sudamala Resort",
      members: [members[0], members[2]],
      facilities: [facilities[0], facilities[6], facilities[7], facilities[3]],
      category: "hotel",
      image: "assets/hotels/sudamala-resort.jpg",
      location: "Lombok, Indonesia",
      description:
          "A tropical retreat awaits guests at Sudamala Resort, Senggigi, Lombok, a beachfront resort with suites and villas overlooking the ocean or lush green courtyard. Featuring an outdoor pool, bar and a restaurant, the resort provides free WiFi in all areas.\nAppointed with Lombok-style interiors, each suite and villa has a private terrace or balcony, and a seating area with a sofa. In-room comforts include a flat-screen cable TV, coffee/tea maker and a safe. All private bathrooms come with a complete set of free toiletries.\nIndonesian and international delights are served at the restaurant. In-room dining is also possible.\nVehicle rental, day trips and area shuttles can be arranged by staff at the tour desk, while luggage can be stored at the 24-hour front desk. Guests who wish to stay in can relax on the sun terrace by the pool or indulge in a pampering in-room massage.",
      rate: 4.4),
  Destination(
      id: 12,
      name: "Gunung Lawu",
      category: "mountain",
      facilities: [facilities[4], facilities[1], facilities[2], facilities[5]],
      members: [members[0], members[2], members[1], members[3]],
      image: "assets/mountain/lawu.jpg",
      location: "Jawa Timur, Indonesia",
      description:
          "Gunung Lawu (Hanacaraka:ꦒꦸꦤꦸꦁ​ꦭꦮꦸ) (3.265 MDPL) terletak di Pulau Jawa, Indonesia, tepatnya di perbatasan Provinsi Jawa Tengah dan Jawa Timur. Gunung Lawu terletak di antara tiga kabupaten yaitu Kabupaten Karanganyar, Jawa Tengah, Kabupaten Ngawi, dan Kabupaten Magetan, Jawa Timur. Status gunung ini adalah gunung api 'istirahat' (diperkirakan terakhir meletus pada tanggal 28 November 1885) dan telah lama tidak aktif, terlihat dari rapatnya vegetasi serta puncaknya yang tererosi. Di lerengnya terdapat kepundan kecil yang masih mengeluarkan uap air (fumarol) dan belerang (solfatara). Gunung Lawu mempunyai kawasan hutan Dipterokarp Bukit, hutan Dipterokarp Atas, hutan Montane, dan hutan Ericaceous. Gunung Lawu adalah sumber inspirasi dari nama kereta api Argo Lawu, kereta api eksekutif yang melayani Solo Balapan-Gambir.",
      rate: 4.4),
  Destination(
      id: 14,
      facilities: [facilities[6], facilities[1], facilities[2], facilities[3]],
      members: [members[0], members[2], members[3], members[1]],
      name: "Pantai Ora",
      category: "beach",
      image: "assets/beach/ora-beach.jpg",
      location: "Maluku, Indonesia",
      description:
          "Indonesia Timur merupakan bagian Indonesia yang memiliki banyak pilihan untuk berwisata pantai. Banyak destinasi yang bisa dieksplor di wilayah ini salah satunya adalah Pantai Ora. Pantai yang terletak di pulau Seram, Kecamatan Seram Utara, Kabupaten Maluku Tengah ini memiliki keindahan pantai yang menakjubkan didukung dengan pasir putih bersih dan laut berwarna biru kehijauan yang jernih, bahkan kamu bisa melihat indahnya terumbu karang dari jarak yang tidak jauh dari permukaan.\nDengan keindahan bawah laut yang dihadirkan di Pantai Ora, tidak heran jika tempat ini menjadi lokasi yang tepat untuk snorkeling dan diving, karena hanya menyelam sedalam 2-3 meter, kamu sudah bisa menikmati terumbu karang dan ikan berwarna warni. Sering disebut sebagai Maldives versi Indonesia, pantai ini memang memiliki sensasi yang sama layaknya kamu berada di Maladewa karena pantai ini juga menyediakan cottage indah yang dibangun persis di atas permukaan laut, lho!",
      rate: 4.4),
  Destination(
      id: 13,
      name: "Gunung Merbabu",
      category: "mountain",
      image: "assets/mountain/merbabu.jpg",
      location: "Jawa Tengah, Indonesia",
      members: [members[0], members[2], members[4], members[1]],
      facilities: [facilities[4], facilities[1], facilities[2], facilities[5]],
      description:
          "Gunung Merbabu (Hanacaraka:ꦒꦸꦤꦸꦁ​ꦩꦼꦂꦧꦧꦸ) adalah gunung api yang bertipe Strato (lihat Gunung Berapi) yang terletak secara geografis pada 7,5° LS dan 110,4° BT. Secara administratif gunung ini berada di wilayah Kabupaten Magelang di lereng sebelah barat dan Kabupaten Boyolali di lereng sebelah timur dan selatan, Kabupaten Semarang di lereng sebelah utara, Provinsi Jawa Tengah.\nGunung Merbabu dikenal melalui naskah-naskah masa pra-Islam sebagai Gunung Damalung atau Gunung Pam(a)rihan. Di lerengnya pernah terdapat pertapaan terkenal dan pernah disinggahi oleh Bujangga Manik pada abad ke-15. Menurut etimologi, 'merbabu' berasal dari gabungan kata 'meru' (gunung) dan 'abu' (abu). Nama ini baru muncul pada catatan-catatan Belanda.",
      rate: 4.4),
  Destination(
      id: 15,
      name: "Pantai Togean",
      facilities: [facilities[6], facilities[1], facilities[2], facilities[3]],
      members: [members[0], members[2], members[1], members[3]],
      category: "beach",
      image: "assets/beach/togean-beach.jpg",
      location: "Sulawesi Utara, Indonesia",
      description:
          "Tomini Bay merupakan teluk terbesar yang ada di Indonesia yang memiliki luas 6.000.000 hektar dan memiliki 90 pulau dengan keindahannya. Tomini Bay yang terletak di Sulawesi Utara ini bisa menjadi salah satu pilihan untuk kamu yang ini menikmati pilihan pantai dengan hamparan pasir putih dan laut biru yang jernih. Kamu bisa melihat keindahan terumbu karang langsung dari daratan bagaikan kaca, bahkan jika kamu melihat foto-foto kapal di Tomini Bay, kapal tersebut bagaikan melayang saking jernihnya air laut.\nTempat ini juga merupakan destinasi pantai di Indonesia yang tepat untuk kamu yang hobi snorkeling atau diving karena Tomini Bay terkenal memiliki keindahan bawah laut yang menakjubkan, kamu juga bisa melihat ikan-ikan kecil yang indah walau belum menyelam karena jernihnya air laut. Ada setidaknya 200 diving spot yang bisa menjadi pilihan. Kamu juga bisa menemukan 3 jenis biota laut yang hanya ada 3 di Gorontalo di antaranya adalah Karang Salvador Dali dan Kipas Laut Biru.",
      rate: 4.4),
];
