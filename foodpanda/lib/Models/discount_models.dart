class DisCountModel {
  late String imageUrl;
  late String type;
  late String country;
  late String description;

  DisCountModel({
    required this.imageUrl,
    required this.type,
    required this.country,
    required this.description,
  });
}


List<DisCountModel> disCountModels = [
  DisCountModel(
      imageUrl: 'assets/images/discount1.jpg',
      type: 'ເຂົ້າຂາໝູ',
      country: 'Laos',
      description: 'ຮ້ານອາຫານແຊບປາກຊອຍ',),

  DisCountModel(
      imageUrl: 'assets/images/discount2.jpg',
      type: 'ເຂົ້າມັນໄກ່',
      country: 'Laos',
      description: 'ຮ້ານມ່ວນ',
      ),
  DisCountModel(
      imageUrl: 'assets/images/discount3.png',
      type: 'ເຂົ້າຜັດ',
      country: 'Laos',
      description: 'ຮ້ານອາຫານຕົ້ນຕານ',
      ),
  DisCountModel(
      imageUrl: 'assets/images/discount4.jpg',
      type: 'ເຂົ້າໝູແດງ',
      country: 'Laos',
      description: 'ຮ້ານ Face to Face',
  ),
  DisCountModel(
      imageUrl: 'assets/images/discount5.jpg',
      type: 'ເຂົ້າຜັດ',
      country: 'Laos',
      description: 'ຮ້ານອາຫານຕົ້ນຕານ',
      ),
  DisCountModel(
      imageUrl: 'assets/images/discount6.jpg',
      type: 'ເຂົ້າໝູແດງ',
      country: 'Laos',
      description: 'ຮ້ານ Face to Face',
  ),
  DisCountModel(
      imageUrl: 'assets/images/discount7.png',
      type: 'ເຂົ້າໝູແດງ',
      country: 'Laos',
      description: 'ຮ້ານ Face to Face',
  ),
];