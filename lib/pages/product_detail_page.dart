import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_headphones/models/product.dart';
import 'package:flutter_ecommerce_headphones/shared/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDetailPage extends StatefulWidget {
  final Product product;

  const ProductDetailPage({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    final smallMobile = sizeHeight < 850;

    return Scaffold(
      backgroundColor: AppColors.colorBlack1D,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: smallMobile ? -80 : -120,
            top: smallMobile ? -290 : -415,
            child: SvgPicture.asset(
              'images/oval.svg',
              color: AppColors.colorRed,
              width: sizeWidth,
              height: sizeHeight < 850 ? 620 : 800,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 120,
              left: 24,
              right: 24,
              bottom: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInLeft(
                  duration: const Duration(milliseconds: 1200),
                  child: Text(
                    widget.product.name.split(' ')[0],
                    style: const TextStyle(
                      fontSize: 55,
                      color: AppColors.colorWhite,
                      height: 0.5,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                FadeInLeft(
                  duration: const Duration(milliseconds: 1200),
                  child: Text(
                    widget.product.name.split(' ')[1],
                    style: TextStyle(
                      fontSize: sizeHeight < 850 ? 105 : 155,
                      color: AppColors.colorWhite,
                      height: 1,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                const Spacer(),
                FadeInDown(
                  duration: const Duration(milliseconds: 1200),
                  from: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.product.name,
                        style: const TextStyle(fontSize: 35, color: AppColors.colorWhite),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(height: 15),
                      Text(
                        widget.product.description!,
                        style: const TextStyle(fontSize: 15, color: AppColors.colorWhite),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                FadeInDown(
                  duration: const Duration(milliseconds: 1200),
                  from: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Colour Available',
                            style: TextStyle(
                              fontSize: 18,
                              color: AppColors.colorWhite,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 23,
                                height: 23,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.colorWhite,
                                ),
                                alignment: Alignment.center,
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.colorRed,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                width: 23,
                                height: 23,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.colorRed,
                                ),
                                alignment: Alignment.center,
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.colorWhite,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                width: 23,
                                height: 23,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.colorWhite,
                                ),
                                alignment: Alignment.center,
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppColors.colorBlack,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 6, right: 40),
                            child: Text(
                              'Product Price',
                              style: TextStyle(
                                fontSize: 18,
                                color: AppColors.colorWhite,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 32),
                            child: Text(
                              '\$${widget.product.price.toStringAsFixed(2)}',
                              style: const TextStyle(
                                fontSize: 35,
                                color: AppColors.colorRed,
                                height: 1,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                FadeInDown(
                  duration: const Duration(milliseconds: 1200),
                  from: 30,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      color: AppColors.colorRed,
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Purchase Now',
                        style: TextStyle(color: AppColors.colorWhite, fontSize: 36),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            width: sizeWidth,
            top: smallMobile ? 154 : 152,
            child: FadeInDown(
              duration: const Duration(milliseconds: 1500),
              from: 40,
              child: Image.asset(
                'images/${widget.product.image}',
                height: smallMobile ? 290 : 355,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
