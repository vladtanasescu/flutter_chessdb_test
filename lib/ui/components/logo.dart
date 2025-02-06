import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          'images/rook_logo.svg',
          height: 70,
          colorFilter: ColorFilter.mode(Color.fromRGBO(255, 255, 255, 0.843), BlendMode.srcIn),   
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Text(
            "NN CHESS", 
            style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 0.85),
              fontSize: 32,
              // fontWeight: FontWeight.bold
            ),
          ),
        ),
      ],
    );
  }
}