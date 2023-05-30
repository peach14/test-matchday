import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectTime extends StatefulWidget {
  const SelectTime({
    super.key,
  });



  @override
  State<SelectTime> createState() => _SelectTimeState();
}

class _SelectTimeState extends State<SelectTime> {
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width  *0.44,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              minimumSize: const Size(165, 45),
              backgroundColor: Colors.grey[200],
              elevation: 0),
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding:
                          EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    print(dateTime.toString());
                                  },
                                  child: Text(
                                    "ยกเลิก",
                                    style: TextStyle(
                                        color: Color.fromARGB(
                                            147, 0, 0, 0)),
                                  )),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "ตกลง",
                                    style: TextStyle(
                                      color: Color.fromARGB(
                                          255, 245, 7, 4),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        Divider(height: 3, color: Colors.black54),
                        SizedBox(
                          height: 175,
                          child: CupertinoDatePicker(
                            initialDateTime:dateTime,
                            mode: CupertinoDatePickerMode.time,
                            onDateTimeChanged: (DateTime vlaue) {
                              setState(() => this.dateTime = vlaue);
                              print(vlaue);
                            },
                          ),
                        )
                      ],
                    ),
                    width: double.infinity,
                    height: 230,
                  );
                });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.access_time,
                    size: 22,
                    color: Color.fromARGB(255, 245, 7, 4),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width *0.02,),
                  const Text(
                    "19:00",
                    style: TextStyle(color: Colors.black87),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
