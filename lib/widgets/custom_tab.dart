import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/constants.dart';

class CustomTab extends StatelessWidget {
  String name;
  int counter;

  CustomTab({
    Key? key,
    required this.name,
    required this.counter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: MediaQuery.of(context).size.width / 10 * 3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name.toUpperCase(),
            style: const TextStyle(
              fontSize: 15,
            ),
          ),

          /// if there is not unread chat, this won't be shown
          Visibility(
            visible: counter == 0 ? false : true,
            child: Container(
              margin: const EdgeInsets.only(left: 3),
              height: 15,
              width: 15,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              alignment: Alignment.center,
              child: Text(
                counter.toString(),
                style: TextStyle(
                  fontSize: 14,
                  color: primary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
