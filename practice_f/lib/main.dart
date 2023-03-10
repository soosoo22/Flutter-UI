import 'package:flutter/material.dart';
import 'package:practice_f/widgets/button.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Hey, Selena',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'Welcome back',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Text(
                'Total Balance',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '\$5 194 482',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(text: 'Transfer', bgColor: Colors.amber, textColor: Colors.black),
                  Button(text: 'Request', bgColor: Color(0xFF1E2022), textColor: Colors.white),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Wallets',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                  ),
                  ),
                  Text('View All',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Color(0xFF1E2022),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: EdgeInsets.all(25),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Euro',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500,
                            ),),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('6 428',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.9),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),),
                              SizedBox(
                                width: 10,
                              ),
                              Text('EUR',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),),
                            ],
                          ),

                        ],
                      ),
                      Transform.scale(
                        scale: 5.8,
                        child: Transform.translate(offset: Offset(28, 5),
                          child: Icon(Icons.euro_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
