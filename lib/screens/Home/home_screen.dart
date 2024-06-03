import 'package:covid_19/constants.dart';
import 'package:covid_19/screens/Home/components/help_card.dart';
import 'package:covid_19/screens/Home/components/info_card.dart';
import 'package:covid_19/screens/Home/components/prevention_card.dart';
import 'package:covid_19/utils/dimension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width,
              height: dimmension(330, context),
              padding: EdgeInsets.all(dimmension(20, context)),
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.03),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(dimmension(50, context)),
                  bottomRight: Radius.circular(dimmension(50, context)),
                ),
              ),
              child: Wrap(
                runSpacing: dimmension(20, context),
                spacing: dimmension(20, context),
                children: const [
                  InfoCard(
                    title: 'موارد تایید شده',
                    iconColor: Color(0xffff9c00),
                    effectedNum: 1062,
                  ),
                  InfoCard(
                    title: 'مرگ و میر',
                    iconColor: Color(0xffff2d55),
                    effectedNum: 75,
                  ),
                  InfoCard(
                    title: 'بهبود یافته',
                    iconColor: Color(0xff50e3c2),
                    effectedNum: 75,
                  ),
                  InfoCard(
                    title: 'موارد جدید',
                    iconColor: Color(0xff5856d6),
                    effectedNum: 75,
                  ),
                ],
              ),
            ),
            SizedBox(height: dimmension(30, context)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: dimmension(20, context)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'پیشگیری ها',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: dimmension(20, context),
                        ),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(height: dimmension(20, context)),
                  LayoutBuilder(builder: (context, constraints) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PreventionCard(
                          constraints: constraints,
                          title: 'شستن دست ها',
                          svg: 'assets/icons/hand_wash.svg',
                        ),
                        PreventionCard(
                          constraints: constraints,
                          title: 'استفاده از ماسک',
                          svg: 'assets/icons/use_mask.svg',
                        ),
                        PreventionCard(
                          constraints: constraints,
                          title: 'ضدعفونی کردن',
                          svg: 'assets/icons/Clean_Disinfect.svg',
                        ),
                      ],
                    );
                  }),
                  SizedBox(height: dimmension(40, context)),
                  HelpCard(size: size)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor.withOpacity(.03),
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icons/menu.svg'),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/search.svg'),
        )
      ],
    );
  }
}