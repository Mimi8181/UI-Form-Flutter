import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onboard_animation/components/onboard_content.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {

  @override
  void initState() {
    super .initState();
    Future.delayed(Duration.zero, () {
      showModalBottomSheet(
        context: context, 
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(42),
            topRight: Radius.circular(42),
          )
        ),
        builder: (_) => const OnboardContent()
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Image.asset(
        'assets/bg.png',
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}