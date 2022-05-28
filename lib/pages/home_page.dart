import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_headphones/models/product.dart';
import 'package:flutter_ecommerce_headphones/pages/product_detail_page.dart';
import 'package:flutter_ecommerce_headphones/services/fake_service.dart';
import 'package:flutter_ecommerce_headphones/shared/app_colors.dart';
import 'package:flutter_ecommerce_headphones/widgets/card_phone.dart';
import 'package:flutter_ecommerce_headphones/widgets/card_speaker.dart';
import '../widgets/header_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Product> listPhones = FakeService.listHeadPhones;
  final List<Product> listSpeakers = FakeService.listSpeakers;
  final List<String> listSuggestions = [];

  void onTapShopCart() {
    debugPrint('evento onTapShopCart executado');
  }

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xff1D1E21),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'images/ic_menu.png',
                      width: 19,
                      height: 22,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'images/ic_notification.png',
                      width: 19,
                      height: 22,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'images/ic_square.png',
                      width: 19,
                      height: 22,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Discover',
                          style: TextStyle(fontSize: 50, color: AppColors.colorWhite),
                        ),
                        ClipRRect(
                          child: Image.asset(
                            'images/user.png',
                            height: 51,
                            width: 51,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(6),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      style: const TextStyle(
                        color: AppColors.colorWhite,
                        fontSize: 20,
                      ),
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: AppColors.colorBlack,
                        hintText: 'Search modal number, product…',
                        hintStyle: TextStyle(
                          color: AppColors.colorWhite,
                          fontSize: 20,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          borderSide: BorderSide(color: AppColors.colorRed),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          borderSide: BorderSide(color: AppColors.colorRed),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          borderSide: BorderSide(color: AppColors.colorRed),
                        ),
                      ),
                      cursorColor: AppColors.colorRed,
                    ),
                    const SizedBox(height: 14),
                    const HeaderSection(title: 'Exclusive', subtitle: 'Headphones'),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: sizeHeight < 700 ? sizeHeight * 0.40 : sizeHeight * 0.32,
                      child: ListView.builder(
                          itemCount: listPhones.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (_, int index) {
                            return GestureDetector(
                              child: CardPhoneVertical(
                                image: listPhones[index].image,
                                name: listPhones[index].name,
                                description: listPhones[index].description!,
                                price: listPhones[index].price,
                                onTap: onTapShopCart,
                              ),
                              onTap: () {
                                var product = listPhones[index];
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => ProductDetailPage(
                                      product: product,
                                    ),
                                  ),
                                );
                              },
                            );
                          }),
                    ),
                    const SizedBox(height: 14),
                    const HeaderSection(title: 'Speakers', subtitle: 'Collections'),
                    SizedBox(
                      height: sizeHeight < 700 ? sizeHeight * 0.24 : sizeHeight * 0.20,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: listSpeakers.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, int index) {
                          return CardSpeaker(
                            image: listSpeakers[index].image,
                            name: listSpeakers[index].name,
                            price: listSpeakers[index].price,
                            onTap: () {},
                          );
                        },
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
}
