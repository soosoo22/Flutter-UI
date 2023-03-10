import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {

  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final Offset offset;

  final _blackColor = Color(0xFF1E2022);

  CurrencyCard({Key? key, required this.name, required this.code, required this.amount, required this.icon, required this.isInverted, required this.offset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: offset,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted ? _blackColor : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                    style: TextStyle(
                      color: isInverted ? Colors.white : _blackColor,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(amount,
                        style: TextStyle(
                          color: isInverted ? Colors.white.withOpacity(0.9) : _blackColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),),
                      SizedBox(
                        width: 10,
                      ),
                      Text(code,
                        style: TextStyle(
                          color: isInverted ? Colors.white.withOpacity(0.5) : _blackColor,
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
                  child: Icon(icon,
                    color: isInverted ? Colors.white : _blackColor,
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
