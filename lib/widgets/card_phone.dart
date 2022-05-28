import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_headphones/shared/app_colors.dart';

class CardPhoneVertical extends StatefulWidget {
  const CardPhoneVertical({
    Key? key,
    required this.image,
    required this.name,
    required this.description,
    required this.price,
    required this.onTap,
  }) : super(key: key);

  final String image;
  final String name;
  final String description;
  final double price;
  final VoidCallback onTap;

  @override
  State<CardPhoneVertical> createState() => _CardPhoneVerticalState();
}

class _CardPhoneVerticalState extends State<CardPhoneVertical> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(right: 20),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: SizedBox(
        width: 188,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 14,
            top: 20,
            right: 14,
            bottom: 6,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'images/${widget.image}',
                  width: 120,
                  height: 140,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                widget.name,
                style: const TextStyle(fontSize: 31, color: Colors.black),
                textAlign: TextAlign.left,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${widget.price.toStringAsFixed(0)}',
                      style: const TextStyle(fontSize: 31, color: AppColors.colorRed),
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
                            offset: Offset(5, 6),
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
