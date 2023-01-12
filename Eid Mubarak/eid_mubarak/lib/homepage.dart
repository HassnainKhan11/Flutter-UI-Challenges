import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      context,
      designSize: const Size(360, 690),
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff06234B),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Center(
                child: Lottie.asset('assets/59685-eid-mubarak.json'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(
                      child: AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText(
                            'EID MUBARAK ❤',
                            textAlign: TextAlign.center,
                            textStyle: TextStyle(
                              color: const Color(0xffEFFFEA),
                              fontSize: 16.sp,
                              letterSpacing: .5,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'May Allah guide you in every way and you always shine.May Allah shower his countless blessing on you and your loved ones.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          color: const Color(0xffEFFFEA),
                          fontSize: 16.sp,
                          letterSpacing: .5,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 120.h,
                  ),
                  Center(
                    child: Text(
                      'Regards: Hassnain Khan',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          color: const Color(0xff78C2FF),
                          fontSize: 14.sp,
                          letterSpacing: .5,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
