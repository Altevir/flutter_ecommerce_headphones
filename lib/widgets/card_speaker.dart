import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_headphones/shared/app_colors.dart';

class CardSpeaker extends StatefulWidget {
  const CardSpeaker({
    Key? key,
    required this.image,
    required this.name,
    this.description,
    required this.price,
    required this.onTap,
  }) : super(key: key);

  final String image;
  final String name;
  final String? description;
  final double price;
  final VoidCallback onTap;

  @override
  State<CardSpeaker> createState() => _CardSpeakerState();
}

class _CardSpeakerState extends State<CardSpeaker> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          margin: const EdgeInsets.only(top: 24, right: 20),
          child: SizedBox(
            width: 188,
            child: Padding(
              padding: const EdgeInsets.only(left: 14, top: 20, right: 14, bottom: 6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$${widget.price.toStringAsFixed(0)}',
                        style: const TextStyle(
                          fontSize: 31,
                          color: AppColors.colorRed,
                        ),
                      ),
                      Container(
                        height: 43,
                        width: 43,
                        margin: const EdgeInsets.only(bottom: 5),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: AppColors.colorRed,
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.colorRedAlpha,
                              offset: Offset(5, 2),
                              blurRadius: 14,
                            ),
                          ],
                        ),
                        child: IconButton(
                          onPressed: widget.onTap,
                          icon: const Icon(Icons.add_shopping_cart_sharp),
                          color: AppColors.colorWhite,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: -20,
          left: 80,
          child: Image.asset(
            'images/${widget.image}',
            width: 100,
            height: 130,
          ),
        ),
      ],
    );
  }
}
