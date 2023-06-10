import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui/food_ui/constant.dart';

class OfferItem extends StatelessWidget {
  const OfferItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.24,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: const DecorationImage(
              image: AssetImage(
                  "lib/food_ui/assets/images/beyond-meat-mcdonalds.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              gradient: LinearGradient(
                colors: [
                  const Color(0xFFFF961F).withOpacity(0.5),
                  kPrimaryColor.withOpacity(0.7),
                ],
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: SvgPicture.asset(
                      width: 95.0,
                      "lib/food_ui/assets/icons/macdonalds.svg"),
                ),
                Expanded(
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(text: "Get Discount of \n",style: TextStyle(fontSize: 18.0),),
                        TextSpan(text: "30% \n",style: TextStyle(fontSize: 45.0,fontWeight: FontWeight.w700,),),
                        TextSpan(text: "at MacDonald's on your first order & Instant cashback",style: TextStyle(fontSize: 12.0),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
