class Destination {
  late String imageUrl;
  late String type;
  late String country;
  late String description;

  Destination({
    required this.imageUrl,
    required this.type,
    required this.country,
    required this.description,
  });
}


List<Destination> destinations = [
  Destination(
      imageUrl: 'assets/images/ed12.jpg',
      type: 'ເຂົ້າຂາໝູ',
      country: 'Laos',
      description: 'ຮ້ານອາຫານແຊບປາກຊອຍ',),

  Destination(
      imageUrl: 'assets/images/image6.jpeg',
      type: 'ເຂົ້າມັນໄກ່',
      country: 'Laos',
      description: 'ຮ້ານມ່ວນ',
      ),
  Destination(
      imageUrl: 'assets/images/image7.jpeg',
      type: 'ເຂົ້າຜັດ',
      country: 'Laos',
      description: 'ຮ້ານອາຫານຕົ້ນຕານ',
      ),
  Destination(
      imageUrl: 'assets/images/image8.jpeg',
      type: 'ເຂົ້າໝູແດງ',
      country: 'Laos',
      description: 'ຮ້ານ Face to Face',
  ),
  Destination(
      imageUrl: 'assets/images/image9.jpeg',
      type: 'ເຂົ້າຜັດ',
      country: 'Laos',
      description: 'ຮ້ານອາຫານຕົ້ນຕານ',
      ),
  Destination(
      imageUrl: 'assets/images/promote.png',
      type: 'ເຂົ້າໝູແດງ',
      country: 'Laos',
      description: 'ຮ້ານ Face to Face',
  ),
];