import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  final String address;
  const Address({super.key , required this.address});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children:[
        Container(
        height: 79,
        width: 243,
        margin: EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(color: Colors.grey.shade200, blurRadius: 5)
          ],
        ),
        child: Row(
          children: [
            Text("Addres :",style: TextStyle(fontSize: 12,fontWeight: FontWeight(500),),textAlign: TextAlign.start,),
            SizedBox(width: 10,),
            Text(widget.address,style: TextStyle(fontSize: 10,fontWeight: FontWeight(400),),textAlign: TextAlign.center,),

          ],
        ),
      ),

        Container(
          height: 79,
          width: 78,
          margin: EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(color: Colors.grey.shade200, blurRadius: 5)
            ],
          ),
          child: Center(child: Image.asset('assets/images/plus.png'))
        ),

    ]
    );
  }
}
