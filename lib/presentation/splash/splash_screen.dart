import 'package:dicoding_flutter/presentation/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Lottie.asset("assets/lottie/avatar_profile_lottie.json", height: 300),
                      const Text("Hi, I'm Yusuf", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                    ],
                  )
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: const Text("yudesk.id", style: TextStyle(color: Colors.grey, fontSize: 10)),
                ),
              )
            ],
          )
      ),
    );
  }

  void _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 5000));
    if (context.mounted) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ProfileScreen()));
    }
  }
}



