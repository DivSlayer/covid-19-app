import 'package:covid_19/constants.dart';
import 'package:covid_19/screens/Details/details_screen.dart';
import 'package:covid_19/screens/Home/components/line_report_chart.dart';
import 'package:covid_19/utils/dimension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.title,
    required this.iconColor,
    required this.effectedNum,
  });

  final String title;
  final Color iconColor;
  final int effectedNum;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const DetailsScreen()));
        },
        child: Container(
          width: constraints.maxWidth / 2 - dimmension(11, context),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(dimmension(8, context)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.all(dimmension(10, context)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(width: dimmension(5, context)),
                    Container(
                      height: dimmension(30, context),
                      width: dimmension(30, context),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: iconColor.withOpacity(0.12),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/running.svg",
                        height: dimmension(12, context),
                        width: dimmension(12, context),
                        color: iconColor,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(dimmension(10, context)),
                    child: RichText(
                      text: TextSpan(
                        style: const TextStyle(color: kTextColor),
                        children: [
                          TextSpan(
                            text: "$effectedNum \n",
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Dana',
                                ),
                          ),
                          TextSpan(
                            text: "نفر",
                            style: TextStyle(
                                fontSize: dimmension(15, context),
                                height: dimmension(2, context),
                                fontFamily: 'Dana'),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Expanded(
                    child: LineReportChart(),
                  )
                ],
              )
            ],
          ),
        ),
      );
    });
  }
}
