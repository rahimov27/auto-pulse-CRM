import 'package:auto_pulse_crm/common_widgets/brandRowWidget.dart';
import 'package:auto_pulse_crm/common_widgets/carLogoWidget.dart';
import 'package:auto_pulse_crm/common_widgets/cardScrollWidget.dart';
import 'package:auto_pulse_crm/common_widgets/cityChipWidget.dart';
import 'package:auto_pulse_crm/common_widgets/searchWidgets.dart';
import 'package:auto_pulse_crm/resources/AppFonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  Color _appBarColor = Colors.transparent;
  String _activeCity = 'Los-angeles'; // Default active city

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

  void _setActiveCity(String city) {
    setState(() {
      _activeCity = city;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color textColor = _appBarColor == Colors.transparent
        ? const Color(0xFF1463FF)
        : Colors.white;
    return Scaffold(
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
                      'assets/images/Location.svg',
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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: SearchWidget(),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CardScrollWidget(),
                        SizedBox(width: 20),
                        CardScrollWidget(),
                        SizedBox(width: 20),
                        CardScrollWidget(),
                      ],
                    ),
                  ),
                ),
                const BrandRow(
                  title: 'Brands',
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CarLogoWidget(),
                        SizedBox(width: 10),
                        CarLogoWidget(),
                        SizedBox(width: 10),
                        CarLogoWidget(),
                        SizedBox(width: 10),
                        CarLogoWidget(),
                        SizedBox(width: 10),
                        CarLogoWidget(),
                      ],
                    ),
                  ),
                ),
                const BrandRow(
                  title: 'Cars',
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CityChipWidget(
                          text: "Los-angeles",
                          isActive: _activeCity == "Los-angeles",
                          onTap: () => _setActiveCity("Los-angeles"),
                        ),
                        CityChipWidget(
                          text: "Texas",
                          isActive: _activeCity == "Texas",
                          onTap: () => _setActiveCity("Texas"),
                        ),
                        CityChipWidget(
                          text: "New-york",
                          isActive: _activeCity == "New-york",
                          onTap: () => _setActiveCity("New-york"),
                        ),
                        CityChipWidget(
                          text: "Washington",
                          isActive: _activeCity == "Washington",
                          onTap: () => _setActiveCity("Washington"),
                        ),
                        CityChipWidget(
                          text: "Michigan",
                          isActive: _activeCity == "Michigan",
                          onTap: () => _setActiveCity("Michigan"),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              childAspectRatio: 0.91, // Adjust the aspect ratio as needed
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return const CarColumnWidget();
              },
              childCount: 4,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 40),
          ),
        ],
      ),
    );
  }
}

class CarColumnWidget extends StatelessWidget {
  const CarColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                image: AssetImage('assets/prius.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "Toyota prius - 2017",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              SvgPicture.asset('assets/images/Star_fill.svg'),
              const SizedBox(width: 4),
              const Text('4.5'),
              const SizedBox(width: 4),
              const Text(
                "124 (Review)",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(height: 4),
          const Text(
            "\$550 / day",
            style: TextStyle(
              color: Color(0xff5282FF),
            ),
          ),
        ],
      ),
    );
  }
}
