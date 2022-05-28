import '../models/product.dart';

class FakeService {
  static List<Product> listHeadPhones = [
    Product(
      image: 'phone_jam.png',
      name: 'Jam Beats',
      description: 'Short product description will place here. This content is just a dummy. You will replace this content with the original content provided by the client.',
      price: 99.99,
    ),
    Product(
      image: 'phone_jbl.png',
      name: 'JBL Monster',
      description: 'Short product description will place here. This content is just a dummy. You will replace this content with the original content provided by the client.',
      price: 150,
    ),
    Product(
      image: 'phone_on_ear.png',
      name: 'JBL On-Ear',
      description: 'Short product description will place here. This content is just a dummy. You will replace this content with the original content provided by the client.',
      price: 199.45,
    ),
  ];

  static List<Product> listSpeakers = [
    Product(
      image: 'bose1.png',
      name: 'Bose Drum',
      price: 90,
    ),
    Product(
      image: 'bose2.png',
      name: 'Bose Pocket',
      price: 180,
    ),
    Product(
      image: 'bose_bluetooth.png',
      name: 'Bose Bluetooth',
      price: 165,
    ),
  ];
}
