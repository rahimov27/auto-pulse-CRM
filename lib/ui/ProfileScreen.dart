import 'package:auto_pulse_crm/common_widgets/brandRowWidget.dart';
import 'package:auto_pulse_crm/common_widgets/carWidget.dart';
import 'package:auto_pulse_crm/common_widgets/searchWidgets.dart';
import 'package:auto_pulse_crm/resources/AppColors.dart';
import 'package:auto_pulse_crm/resources/AppFonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final ScrollController _scrollController = ScrollController();
  Color _appBarColor = Colors.transparent;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _appBarColor = _scrollController.offset > 50
            ? const Color(0xFF1463FF)
            : Colors.transparent;
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Color textColor = _appBarColor == Colors.transparent
        ? const Color(0xFF1463FF)
        : Colors.white;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            backgroundColor: _appBarColor,
            expandedHeight: 24.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      '/Users/r27/StudioProjects/auto_pulse_crm/assets/images/Location.svg',
                      width: 24,
                      height: 24,
                      color: textColor, // Icon color
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "New York, USA",
                      style: AppFonts.boldS18
                          .copyWith(color: textColor), // Text color
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SearchWidget(),
                          BrandRow(
                            title: 'Cars',
                          ),
                          CarsWidget(),
                          CarsWidget(),
                          CarsWidget(),
                          CarsWidget(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
