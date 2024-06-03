import 'package:flutter/material.dart';
class CatchMe extends StatelessWidget {
  const CatchMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.black54
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Catch me :)",style: TextStyle(
            fontFamily: 'Inspiration',
            color: Colors.white,
            fontSize: 17
        ),),
      ),
    );
  }
}