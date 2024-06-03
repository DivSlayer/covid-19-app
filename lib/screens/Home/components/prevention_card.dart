
import 'package:covid_19/constants.dart';
import 'package:covid_19/utils/dimension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PreventionCard extends StatelessWidget {
  const PreventionCard({
    super.key, required this.constraints, required this.title, required this.svg,
  });
  final BoxConstraints constraints;
  final String title,svg;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: constraints.maxWidth / 3 - dimmension(30, context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            width: constraints.maxWidth / 3 - dimmension(30, context),
            svg,
          ),
          SizedBox(height: dimmension(5, context)),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: kPrimaryColor,
              fontSize: dimmension(14, context)
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
