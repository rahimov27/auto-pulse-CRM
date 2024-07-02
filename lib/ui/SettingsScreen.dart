import 'package:auto_pulse_crm/resources/AppFonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Item {
  Item(
      {required this.headerText,
      required this.expandedText,
      this.isExpanded = false});
  String headerText;
  String expandedText;
  bool isExpanded;
}

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final List<Item> _insurance = List<Item>.generate(
    1,
    (int index) {
      return Item(
        headerText: 'Insurance',
        expandedText: 'ABC Insurance',
      );
    },
  );

  final List<Item> _policy = List<Item>.generate(
    1,
    (int index) {
      return Item(
        headerText: 'Policy',
        expandedText: 'POL12345678',
      );
    },
  );

  final List<Item> _imei = List<Item>.generate(
    1,
    (int index) {
      return Item(
        headerText: 'IMEI',
        expandedText: 'WEF534W3RWF',
      );
    },
  );

  final List<Item> _milleage = List<Item>.generate(
    1,
    (int index) {
      return Item(
        headerText: 'Milleage',
        expandedText: '12.412km',
      );
    },
  );

  final List<Item> _color = List<Item>.generate(
    1,
    (int index) {
      return Item(
        headerText: 'Color',
        expandedText: 'Black',
      );
    },
  );

  final List<Item> _plaid_number = List<Item>.generate(
    1,
    (int index) {
      return Item(
        headerText: 'Plaid-number',
        expandedText: 'PLA123456',
      );
    },
  );

  final List<Item> _driver_license_number = List<Item>.generate(
    1,
    (int index) {
      return Item(
        headerText: 'Driver-license-number',
        expandedText: 'D1234567',
      );
    },
  );

  final List<Item> _driver_license_state = List<Item>.generate(
    1,
    (int index) {
      return Item(
        headerText: 'Driver-license-state',
        expandedText: 'CA',
      );
    },
  );

  final List<Item> _model = List<Item>.generate(
    1,
    (int index) {
      return Item(
        headerText: 'Model',
        expandedText: 'Camry',
      );
    },
  );

  final List<Item> _year = List<Item>.generate(
    1,
    (int index) {
      return Item(
        headerText: 'Year',
        expandedText: '2018',
      );
    },
  );

  final List<Item> _make = List<Item>.generate(
    1,
    (int index) {
      return Item(
        headerText: 'Make',
        expandedText: 'Toyota',
      );
    },
  );

  final List<Item> _type = List<Item>.generate(
    1,
    (int index) {
      return Item(
        headerText: 'Type',
        expandedText: 'Sedan',
      );
    },
  );

  final List<Item> _license = List<Item>.generate(
    1,
    (int index) {
      return Item(
        headerText: 'License',
        expandedText: 'Not provided',
      );
    },
  );
  final List<Item> _status = List<Item>.generate(
    1,
    (int index) {
      return Item(
        headerText: 'Status',
        expandedText: 'Ready',
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Settings",
          style: AppFonts.carDetailTitle,
        ),
        centerTitle: false,
      ),
      body: ListView(
        children: [
          ImageSlideshow(
            width: double.infinity,
            height: 200,
            initialPage: 0,
            indicatorColor: const Color(0xff4E90FF),
            indicatorBackgroundColor: Colors.grey,
            // ignore: sort_child_properties_last
            children: [
              Image.asset(
                'assets/camry.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/camry.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/camry.jpg',
                fit: BoxFit.cover,
              ),
            ],
            // onPageChanged: (value) {
            //   print('Page changed: $value');
            // },
            autoPlayInterval: 9000,
            isLoop: true,
          ),
          const SizedBox(height: 25),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Toyota Camry (XLE75)",
              style: AppFonts.carTitle,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Engineered for better efficiency, Camry's all-hybrid powertrain has an EPA-estimated rating of up to 51 mpg combined. With an impressive up to 232 net combined hp and available Electronic On-Demand All-Wheel Drive (AWD) capability, it will keep the good drives going.",
              style: AppFonts.carSubTitle,
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "CAR DETAIL",
              style: AppFonts.carDetail,
            ),
          ),
          ExpansionTile(
            leading: SvgPicture.asset('assets/icons/Paper.svg'),
            title: const Text(
              "Insurance",
              style: AppFonts.titletext,
            ),
            children: _insurance.map<Widget>((Item item) {
              return ListTile(
                title: Text(item.headerText),
                subtitle: Text(item.expandedText),
              );
            }).toList(),
          ),
          ExpansionTile(
            leading: SvgPicture.asset('assets/icons/Paper.svg'),
            title: const Text(
              "Policy",
              style: AppFonts.titletext,
            ),
            children: _policy.map<Widget>((Item item) {
              return ListTile(
                title: Text(item.headerText),
                subtitle: Text(item.expandedText),
              );
            }).toList(),
          ),
          ExpansionTile(
            leading: SvgPicture.asset('assets/icons/Paper.svg'),
            title: const Text(
              "IMEI",
              style: AppFonts.titletext,
            ),
            children: _imei.map<Widget>((Item item) {
              return ListTile(
                title: Text(item.headerText),
                subtitle: Text(item.expandedText),
              );
            }).toList(),
          ),
          ExpansionTile(
            leading: SvgPicture.asset('assets/icons/Paper.svg'),
            title: const Text(
              "Milleage",
              style: AppFonts.titletext,
            ),
            children: _milleage.map<Widget>((Item item) {
              return ListTile(
                title: Text(item.headerText),
                subtitle: Text(item.expandedText),
              );
            }).toList(),
          ),
          ExpansionTile(
            leading: SvgPicture.asset('assets/icons/Paper.svg'),
            title: const Text(
              "Color",
              style: AppFonts.titletext,
            ),
            children: _color.map<Widget>((Item item) {
              return ListTile(
                title: Text(item.headerText),
                subtitle: Text(item.expandedText),
              );
            }).toList(),
          ),
          ExpansionTile(
            leading: SvgPicture.asset('assets/icons/Paper.svg'),
            title: const Text(
              "Plaid-number",
              style: AppFonts.titletext,
            ),
            children: _plaid_number.map<Widget>((Item item) {
              return ListTile(
                title: Text(item.headerText),
                subtitle: Text(item.expandedText),
              );
            }).toList(),
          ),
          ExpansionTile(
            leading: SvgPicture.asset('assets/icons/Paper.svg'),
            title: const Text(
              "Driver-license-number",
              style: AppFonts.titletext,
            ),
            children: _driver_license_number.map<Widget>((Item item) {
              return ListTile(
                title: Text(item.headerText),
                subtitle: Text(item.expandedText),
              );
            }).toList(),
          ),
          ExpansionTile(
            leading: SvgPicture.asset('assets/icons/Paper.svg'),
            title: const Text(
              "Driver-license-state",
              style: AppFonts.titletext,
            ),
            children: _driver_license_state.map<Widget>((Item item) {
              return ListTile(
                title: Text(item.headerText),
                subtitle: Text(item.expandedText),
              );
            }).toList(),
          ),
          ExpansionTile(
            leading: SvgPicture.asset('assets/icons/Paper.svg'),
            title: const Text(
              "Model",
              style: AppFonts.titletext,
            ),
            children: _model.map<Widget>((Item item) {
              return ListTile(
                title: Text(item.headerText),
                subtitle: Text(item.expandedText),
              );
            }).toList(),
          ),
          ExpansionTile(
            leading: SvgPicture.asset('assets/icons/Paper.svg'),
            title: const Text(
              "Year",
              style: AppFonts.titletext,
            ),
            children: _year.map<Widget>((Item item) {
              return ListTile(
                title: Text(item.headerText),
                subtitle: Text(item.expandedText),
              );
            }).toList(),
          ),
          ExpansionTile(
            leading: SvgPicture.asset('assets/icons/Paper.svg'),
            title: const Text(
              "Make",
              style: AppFonts.titletext,
            ),
            children: _make.map<Widget>((Item item) {
              return ListTile(
                title: Text(item.headerText),
                subtitle: Text(item.expandedText),
              );
            }).toList(),
          ),
          ExpansionTile(
            leading: SvgPicture.asset('assets/icons/Paper.svg'),
            title: const Text(
              "Type",
              style: AppFonts.titletext,
            ),
            children: _type.map<Widget>((Item item) {
              return ListTile(
                title: Text(item.headerText),
                subtitle: Text(item.expandedText),
              );
            }).toList(),
          ),
          ExpansionTile(
            leading: SvgPicture.asset('assets/icons/Paper.svg'),
            title: const Text(
              "License",
              style: AppFonts.titletext,
            ),
            children: _license.map<Widget>((Item item) {
              return ListTile(
                title: Text(item.headerText),
                subtitle: Text(item.expandedText),
              );
            }).toList(),
          ),
          ExpansionTile(
            leading: SvgPicture.asset('assets/icons/Paper.svg'),
            title: const Text(
              "Status",
              style: AppFonts.titletext,
            ),
            children: _status.map<Widget>((Item item) {
              return ListTile(
                title: Text(item.headerText),
                subtitle: Text(item.expandedText),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
