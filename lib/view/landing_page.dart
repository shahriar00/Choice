import 'package:choice/utils/dimensions.dart';
import 'package:choice/utils/style.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF9C8CDA),
      body: Container(
        child: Stack(
          children: [
            Center(child: Image.asset("images/men.png")),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 1.6,
                  left: Dimensions.paddingSizeLarge,
                  right: Dimensions.paddingSizeLarge),
              height: 240,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                const  SizedBox(
                    height: Dimensions.paddingSizeExtraLarge,
                  ),
                const  Text(
                    "Look Good, Feel Good!",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                const  SizedBox(
                    height: Dimensions.paddingSizeSmall,
                  ),
                 const Text(
                    "Create your individual & unique style and\nlook amazing everyday.",
                    style: ubuntuLight,
                  ),
                const  SizedBox(
                    height: Dimensions.paddingSizeDefault,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(Color.fromARGB(255, 184, 187, 199), "Men"),
                       const SizedBox(
                          width: 20,
                        ),
                        CustomButton(Color(0XFF9775FA), "Women")
                      ],
                    ),
                  ),

                  const SizedBox(height: Dimensions.paddingSizeDefault,),
                  const Text("Skip",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget CustomButton(Color color, String text) {
    return Container(
      height: 50,
      width: 120,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            text,
            style:const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
