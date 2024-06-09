import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class SocialIconWidget extends StatelessWidget {
  const SocialIconWidget({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(0xffDADADA),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 45),
        child: SvgPicture.asset(image),
      ),
    );
  }
}
