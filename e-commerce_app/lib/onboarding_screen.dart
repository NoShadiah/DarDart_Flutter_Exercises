import 'package:flutter/material.dart';
import 'package:flutter_login/home_page.dart';
import 'package:flutter_login/home_page.dart';
import 'package:flutter_login/login_screen.dart';

class OnboardingScreenOne extends StatelessWidget {
  const OnboardingScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
              
            // Color.fromARGB(255, 15, 5, 57),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children:[
                Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Text("SCEPTRE COLLECTIONS", 
                          style: TextStyle(color: Color.fromARGB(255, 7, 42, 138), fontSize: 40.0, fontWeight: FontWeight.bold),)
                          )
                          ,
                Image.asset("assets/images/2.png", width:200),
                          
              //   CircleAvatar(
              //     backgroundColor: Color.fromARGB(255, 15, 5, 57),
              //     radius: 120,
              //     child: 
              //     // CircleAvatar(
              //     //     radius: 115,
              //     //     backgroundColor: Color.fromARGB(255, 255, 255, 255),
              //     //     child: CircleAvatar(
              //     //     radius: 110,
              //     //     backgroundImage: 
              //         , 
              
              // ),


              Padding(
                  padding: EdgeInsets.only(top: 30,bottom: 30, left: 20, right: 20),
                  child: Text("\"Elevating men's fashion, we create with precision and flair, ensuring you rule with majesty. From classic tailoring to modern trends, our designs empower your timeless sophistication.\"", 
                          style: TextStyle(color: Color.fromARGB(255, 7, 42, 138), fontSize: 15.0),)
                          ),
              // Elevating men's fashion, we create with precision and flair, ensuring you rule with majesty. From classic tailoring to modern trends, our designs empower your timeless sophistication.
              Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OnboardingScreenTwo()));
                },
                child: const Text("Get Started", style: TextStyle(fontWeight: FontWeight.bold),)))
                
            
            ])
            )
      
     )
    );
  }
}

class OnboardingScreenTwo extends StatelessWidget {
  const OnboardingScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color.fromARGB(230, 114, 109, 109),
        body: SafeArea(
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/3.png",
                width: 200,
              ),
              const Text("Purchases delivered on time"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const OnboardingScreenOne()));
                      },
                      child: const Text("Back")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const OnboardingScreenThree()));
                      },
                      child: const Text("Next"))
                ],
              )
            ],
          )),
        ));
  }
}


class OnboardingScreenThree extends StatelessWidget {
  const OnboardingScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color.fromARGB(230, 114, 109, 109),
        body: SafeArea(
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/1.png",
                width: 200,
              ),
            
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const OnboardingScreenOne()));
                      },
                      child: const Text("Back")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const LoginScreen()));
                      },
                      child: const Text("Done"))
                ],
              )
            ],
          )),
        ));
  }
}



// class OnboardingScreenOne extends StatefulWidget {
//   const OnboardingScreenOne({super.key});

//   @override
//   State<OnboardingScreenOne> createState() => _OnboardingScreenOneState();
// }

// class _OnboardingScreenOneState extends State<OnboardingScreenOne> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text("Onboarding Screen 1"),
//     );
//   }
// }

// class OnboardingScreenTwo extends StatefulWidget {
//   const OnboardingScreenTwo({super.key});

//   @override
//   State<OnboardingScreenTwo> createState() => _OnboardingScreenTwoState();
// }

// class _OnboardingScreenTwoState extends State<OnboardingScreenTwo> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text("Onboarding Screen 2"),
//     );
//   }
// }

// class OnboardingScreenThree extends StatefulWidget {
//   const OnboardingScreenThree({super.key});

//   @override
//   State<OnboardingScreenThree> createState() => _OnboardingScreenThreeState();
// }

// class _OnboardingScreenThreeState extends State<OnboardingScreenThree> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text("Onboarding Screen 3"),
//     );
//   }
// }
