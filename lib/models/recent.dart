class Recent {
  final int id;
  final String picturePath;
  final String name;
  final String date;
  final double price;

  Recent({
    required this.picturePath,
    required this.id,
    required this.name,
    required this.date,
    required this.price,
  });
}

List<Recent> mockRecent = [
  Recent(
    id: 1,
    picturePath: 'https://i.ibb.co/QbKBVyM/photo1.png',
    name: 'Dart Celline',
    date: '22 Apr',
    price: 28.40,
  ),
  Recent(
    id: 2,
    picturePath: 'https://i.ibb.co/5GQgJf2/photo2.png',
    name: 'Zipzip Koin',
    date: '23 Feb',
    price: 11.10,
  ),
  Recent(
    id: 3,
    picturePath: 'https://i.ibb.co/8KRJJtT/photo3.png',
    name: 'Dart Celline',
    date: '12 Mei',
    price: 289.70,
  ),
];
