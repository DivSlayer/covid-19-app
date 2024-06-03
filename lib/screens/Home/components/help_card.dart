import 'package:covid_19/utils/dimension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HelpCard extends StatelessWidget {
  const HelpCard({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: dimmension(150, context),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            height: dimmension(130, context),
            padding: EdgeInsets.all(dimmension(20, context)).copyWith(
              left: size.width * 0.4,
              right: size.width * 0.15,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(dimmension(20, context)),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff60BE93),
                  Color(0xff1B8d59),
                ],
              ),
            ),
            child: RichText(
              textAlign: TextAlign.right,
              textDirection: TextDirection.rtl,
              text: TextSpan(children: [
                TextSpan(
                  text: 'اگر علائمی داشتید\n',
                  style: TextStyle(color: Colors.white.withOpacity(0.7), fontFamily: 'Dana'),
                ),
                TextSpan(
                  text: 'برای کمک های درمانی با 115 تماس بگیرید!\n',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white,
                      ),
                ),
              ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: dimmension(15, context)),
            child: SvgPicture.asset("assets/icons/nurse.svg"),
          ),
          Positioned(
            right: dimmension(20, context),
            top: dimmension(30, context),
            child: SvgPicture.asset("assets/icons/virus.svg"),
          )
        ],
      ),
    );
  }
}
