import 'package:auto_pulse_crm/common_widgets/brandRowWidget.dart';
import 'package:auto_pulse_crm/common_widgets/carLogoWidget.dart';
import 'package:auto_pulse_crm/common_widgets/cityChipWidget.dart';
import 'package:auto_pulse_crm/common_widgets/searchWidgets.dart';
import 'package:auto_pulse_crm/resources/AppFonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Car {
  final String title;
  final String image;
  final String stars;
  final int price;

  Car(
      {required this.title,
      required this.image,
      required this.stars,
      required this.price});
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  Color _appBarColor = Colors.transparent;
  String _activeCity = 'Los-angeles'; // Default active city

  final List<Car> cars = [
    Car(
        title: 'Toyota Camry - 2017',
        image: 'assets/camry.jpg',
        stars: '4.5',
        price: 200),
    Car(
        title: 'Toyota Prius - 2008',
        image: 'assets/prius.jpg',
        stars: '4.5',
        price: 150),
    Car(
        title: 'Honda Accord - 2019',
        image: 'assets/accord.jpg',
        stars: '4.7',
        price: 220),
    Car(
        title: 'BMW 3 Series - 2020',
        image: 'assets/bmw-3.jpg',
        stars: '4.8',
        price: 300),
    // Add more car objects here
  ];

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
                const SizedBox(height: 20),
                const BrandRow(title: 'Brands'),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CarLogoWidget(
                          image: "assets/images/cars-logo/tesla.svg",
                        ),
                        SizedBox(width: 10),
                        CarLogoWidget(
                          image: "assets/images/cars-logo/toyota.svg",
                        ),
                        SizedBox(width: 10),
                        CarLogoWidget(
                          image: "assets/images/cars-logo/Honda-Logo.wine.svg",
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const BrandRow(title: 'Cities'),
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
                const SizedBox(height: 20),
              ],
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              childAspectRatio: 0.8, // Adjust the aspect ratio as needed
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                final car = cars[index];
                return CarColumnWidget(
                  title: car.title,
                  image: car.image,
                  stars: car.stars,
                  price: car.price,
                );
              },
              childCount: cars.length, // Number of items to display in the grid
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 50),
          ),
        ],
      ),
    );
  }
}

class CarColumnWidget extends StatelessWidget {
  const CarColumnWidget({
    super.key,
    required this.title,
    required this.stars,
    required this.image,
    required this.price,
  });

  final String image;
  final String title;
  final String stars;
  final int price;

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
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              SvgPicture.asset('assets/images/Star_fill.svg'),
              const SizedBox(width: 4),
              Text(stars),
              const SizedBox(width: 4),
              const Text(
                "124 (Review)",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            "\$ $price",
            style: const TextStyle(
              color: Color(0xff5282FF),
            ),
          ),
        ],
      ),
    );
  }
}
