import 'package:flutter/material.dart';

class ButtonGropSelectTime extends StatelessWidget {
  const ButtonGropSelectTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 5,
          backgroundColor: Colors.white,
          shadowColor: Colors.black54,
          foregroundColor: Colors.grey,
          // surfaceTintColor: Colors.orange
        ),
        onPressed: (){},
        child:             Column(children: [
          SizedBox(height: MediaQuery.of(context).size.height *0.015,),
          Row(
            children: [
              SizedBox(width: MediaQuery.of(context).size.width *0.05,),
              Icon(
                Icons.sports_soccer_outlined,
                size: 23,
                color: Color.fromARGB(255, 245, 7, 4),
              ),
              SizedBox(width: MediaQuery.of(context).size.width *0.05,),
              Text(
                "ฟุตบอล",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ],),
          SizedBox(height: MediaQuery.of(context).size.height *0.015,),
          Container(
            height: MediaQuery.of(context).size.height * 0.002,
            color: Colors.grey,),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.01,
                  //  bottom: MediaQuery.of(context).size.height * 0.015,
                ),
                child:Row(
                  children: [
                    Icon(Icons.date_range_outlined,color:  const Color
                        .fromARGB(
                        255,
                        245,
                        7,
                        4),),
                    SizedBox(width: MediaQuery.of(context).size.width *0.05,),
                    Text("23/05/0566",style: TextStyle(color: Colors.grey[800]),),
                  ],) ,
              ),

              SizedBox(width: MediaQuery.of(context).size.width *0.05,),
              Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width:MediaQuery.of(context).size.height * 0.002,
                color: Colors.grey,),
              SizedBox(width: MediaQuery.of(context).size.width *0.05,),
              Icon(Icons.access_time,
                color:  const Color
                    .fromARGB(
                    255,
                    245,
                    7,
                    4),
              ),
              SizedBox(width: MediaQuery.of(context).size.width *0.05,),
              Text("23/05/0566",style: TextStyle(color: Colors.grey[800],),)
            ],),

        ],)


    );
  }
}
