import 'package:auto_pulse_crm/common_widgets/bookButtonWidget.dart';
import 'package:auto_pulse_crm/resources/AppColors.dart';
import 'package:auto_pulse_crm/resources/AppFonts.dart';
import 'package:flutter/material.dart';

class CarDetails extends StatefulWidget {
  const CarDetails({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CarDetailsState createState() => _CarDetailsState();
}

class _CarDetailsState extends State<CarDetails> {
  String _selectedImage = 'assets/images/car-detail/big-car.png';
  int _selectedIndex = 3;

  final List<String> _imagePaths = [
    'assets/images/car-detail/1.png',
    'assets/images/car-detail/2.png',
    'assets/images/car-detail/3.png',
    'assets/images/car-detail/big-car.png',
  ];

  void _updateSelectedImage(int index) {
    setState(
      () {
        _selectedImage = _imagePaths[index];
        _selectedIndex = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.info_outline),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                _selectedImage,
                width: MediaQuery.of(context).size.width * 0.949,
                height: 212,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                _imagePaths.length,
                (index) {
                  return GestureDetector(
                    onTap: () => _updateSelectedImage(index),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          width: 2,
                          color: _selectedIndex == index
                              ? AppColors.buttonColor
                              : Colors.transparent,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Image.asset(
                          _imagePaths[index],
                          width: MediaQuery.of(context).size.width * 0.216,
                          height: 62,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 22),
            Row(
              children: [
                const SizedBox(
                  width: 200,
                  child: Text(
                    "Mercedes SL 63 AMG",
                    style: AppFonts.carDetailTitle,
                  ),
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.buttonColor.withOpacity(0.12),
                    border: Border.all(width: 1, color: AppColors.buttonColor),
                    borderRadius: BorderRadius.circular(59),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('550 USD/month'),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            const SizedBox(
              child: Text(
                "The Mercedes SL 63 AMG is a sports car created using advanced technologies that have made it incredibly fast and powerful.",
                style: AppFonts.carDetailSubTitle,
              ),
            ),
            const Spacer(),
            const BookButtonWidget(),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
