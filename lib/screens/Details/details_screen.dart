import 'package:covid_19/constants.dart';
import 'package:covid_19/screens/Details/components/weekly_chart.dart';
import 'package:covid_19/utils/dimension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _builaAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: dimmension(20, context)),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: dimmension(20, context),
                  vertical: dimmension(25, context),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(dimmension(20, context)),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, dimmension(20, context)),
                      blurRadius: dimmension(50, context),
                      color: Colors.black.withOpacity(0.05),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("assets/icons/more.svg"),
                        Text(
                          "موارد جدید",
                          style: TextStyle(
                            color: kTextMediumColor,
                            fontWeight: FontWeight.w600,
                            fontSize: dimmension(15, context),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: dimmension(20, context)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "547 ",
                          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                                color: kPrimaryColor,
                                height: 1.2,
                              ),
                        ),
                        const Text(
                          "5.9% ",
                          style: TextStyle(color: kPrimaryColor),
                        ),
                        SvgPicture.asset("assets/icons/increase.svg"),
                      ],
                    ),
                    SizedBox(height: dimmension(10, context)),
                    Text(
                      'بر اساس داده های مرکز بهداشت',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: dimmension(15, context),
                        color: kTextMediumColor,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: dimmension(30, context)),
                    const WeeklyChart(),
                    SizedBox(height: dimmension(30, context)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildPercentCard(context, "6.43%", "از هفته پیش"),
                        _buildPercentCard(context, "4.73%", "از ماه پیش"),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: dimmension(20, context)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: dimmension(20, context)),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(dimmension(20, context)),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, dimmension(20, context)),
                      blurRadius: dimmension(50, context),
                      color: Colors.black.withOpacity(0.05),
                    ),
                  ],
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: dimmension(20, context),
                  vertical: dimmension(25, context),
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("assets/icons/more.svg"),
                        Text(
                          "نقشه جهانی",
                          style: TextStyle(
                            color: kTextMediumColor,
                            fontWeight: FontWeight.w600,
                            fontSize: dimmension(15, context),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: dimmension(20, context)),
                    SvgPicture.asset("assets/icons/map.svg"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Column _buildPercentCard(
    BuildContext context,
    String value,
    String title,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: dimmension(20, context),
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: dimmension(10, context)),
        Text(
          title,
          style: TextStyle(
            color: kTextMediumColor,
            fontSize: dimmension(14, context),
            fontWeight: FontWeight.w400,
            height: 1.5,
          ),
        ),
      ],
    );
  }

  AppBar _builaAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios, color: kPrimaryColor),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/search.svg"),
        )
      ],
    );
  }
}
