import 'package:flutter/material.dart';

class ButtonGroupSelectTime extends StatelessWidget {
  const ButtonGroupSelectTime({
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
        onPressed: () {},
        child: Column(
          children: [
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.015,
            // ),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  // SizedBox(
                  //   width: MediaQuery.of(context).size.width * 0.05,
                  // ),
                  const Spacer(),
                  const Icon(
                    Icons.sports_soccer_outlined,
                    size: 23,
                    color: Color.fromARGB(255, 245, 7, 4),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  const Text(
                    "ฟุตบอล",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  const Spacer(flex: 9),
                ],
              ),
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.015,
            // ),
            Container(
              height: MediaQuery.of(context).size.height * 0.002,
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.01,
                    //  bottom: MediaQuery.of(context).size.height * 0.015,
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.date_range_outlined,
                        color: Color.fromARGB(255, 245, 7, 4),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      Text(
                        "23/05/0566",
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.height * 0.002,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                const Icon(
                  Icons.access_time,
                  color: Color.fromARGB(255, 245, 7, 4),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Text(
                  "23/05/0566",
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
