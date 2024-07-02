import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> with TickerProviderStateMixin {
  late AnimationController _animationController1;
  late AnimationController _animationController2;
  late AnimationController _animationController3;
  late Animation<double> _animation1;
  late Animation<double> _animation2;
  late Animation<double> _animation3;
  LatLng? _newMarkerPosition;

  final TextEditingController _latController = TextEditingController();
  final TextEditingController _lngController = TextEditingController();
  final MapController _mapController = MapController();

  @override
  void initState() {
    super.initState();

    _animationController1 = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _animationController2 = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _animationController3 = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _animation1 =
        Tween<double>(begin: 100, end: 150).animate(_animationController1)
          ..addListener(() {
            setState(() {});
          });

    _animation2 =
        Tween<double>(begin: 120, end: 170).animate(_animationController2)
          ..addListener(() {
            setState(() {});
          });

    _animation3 =
        Tween<double>(begin: 140, end: 190).animate(_animationController3)
          ..addListener(() {
            setState(() {});
          });

    // Start animations at different times
    Future.delayed(const Duration(milliseconds: 500), () {
      _animationController2.forward();
    });
    Future.delayed(const Duration(milliseconds: 1000), () {
      _animationController3.forward();
    });
  }

  @override
  void dispose() {
    _animationController1.dispose();
    _animationController2.dispose();
    _animationController3.dispose();
    _latController.dispose();
    _lngController.dispose();
    super.dispose();
  }

  void _showModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 250,
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Enter Latitude and Longitude'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _latController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Latitude',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _lngController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Longitude',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: const Text('Close'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      child: const Text('Show Marker'),
                      onPressed: () {
                        final double? lat =
                            double.tryParse(_latController.text);
                        final double? lng =
                            double.tryParse(_lngController.text);
                        if (lat != null && lng != null) {
                          setState(() {
                            _newMarkerPosition = LatLng(lat, lng);
                          });
                          _mapController.move(LatLng(lat, lng),
                              14.5); // Move the map to the new marker
                          Navigator.pop(context);
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            mapController: _mapController,
            options: const MapOptions(
              initialCenter: LatLng(52.391842, 13.063561),
              initialZoom: 3.5,
              maxZoom: 18,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              CircleLayer(
                circles: [
                  CircleMarker(
                    point: const LatLng(52.391842, 13.063561),
                    radius: _animation1.value,
                    useRadiusInMeter: true,
                    color: Colors.blue.withOpacity(0.5),
                    borderColor: Colors.blue.withOpacity(0.5),
                    borderStrokeWidth: 1,
                  ),
                  CircleMarker(
                    point: const LatLng(52.391842, 13.063561),
                    radius: _animation2.value,
                    useRadiusInMeter: true,
                    color: Colors.blue.withOpacity(0.2),
                    borderColor: Colors.blue.withOpacity(0.2),
                    borderStrokeWidth: 1,
                  ),
                  CircleMarker(
                    point: const LatLng(52.391842, 13.063561),
                    radius: _animation3.value,
                    useRadiusInMeter: true,
                    color: Colors.blue.withOpacity(0.2),
                    borderColor: Colors.blue.withOpacity(0.2),
                    borderStrokeWidth: 1,
                  ),
                ],
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: const LatLng(52.391842, 13.063561),
                    width: 50,
                    height: 50,
                    child: SvgPicture.asset(
                      '/Users/r27/StudioProjects/auto_pulse_crm/assets/images/pin.svg',
                    ),
                  ),
                  Marker(
                    point: const LatLng(42.882004, 74.582748),
                    width: 50,
                    height: 50,
                    child: SvgPicture.asset(
                      '/Users/r27/StudioProjects/auto_pulse_crm/assets/images/pin.svg',
                    ),
                  ),
                  if (_newMarkerPosition != null)
                    Marker(
                      point: _newMarkerPosition!,
                      width: 50,
                      height: 50,
                      child: SvgPicture.asset(
                        '/Users/r27/StudioProjects/auto_pulse_crm/assets/images/pin.svg',
                      ),
                    ),
                ],
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: IconButton(
        onPressed: () => _showModal(context),
        icon: const Icon(Icons.search),
      ),
    );
  }
}
