import 'package:flutter/material.dart';
import 'package:matchday/src/constants/asset_path.dart';

class BottomSheetCustomHistory extends StatefulWidget {
  const BottomSheetCustomHistory({super.key});

  @override
  State<BottomSheetCustomHistory> createState() =>
      _BottomSheetCustomHistoryState();
}

class _BottomSheetCustomHistoryState extends State<BottomSheetCustomHistory> {
  final TextEditingController _nameStationController = TextEditingController();
  final TextEditingController _carRegistrationController =
      TextEditingController();
  final TextEditingController _batteryStartController = TextEditingController();
  final TextEditingController _batteryEndController = TextEditingController();
  final TextEditingController _priceBatteryEndController =
      TextEditingController();

  @override
  void dispose() {
    _nameStationController.dispose();
    _carRegistrationController.dispose();
    _batteryStartController.dispose();
    _batteryEndController.dispose();
    _priceBatteryEndController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //  constraints: const BoxConstraints(maxHeight: 683),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 5,
                      width: 70,
                      margin: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(100),
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Text(
                      'เพิ่มประวัติการชาร์จ',
                      //  style: CustomTextStyles.title3,
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'ชื่อสถานีชาร์จ',
                          //   style: CustomTextStyles.body8,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    // TextFormFieldCustomHistory(
                    //   controller: _nameStationController,
                    //   backgroundColor: Colors.transparent,
                    //   hintText: 'สถานี EV นายเอก',
                    //   hintStyle: CustomTextStyles.body9,
                    //   textStyle: CustomTextStyles.body9,
                    // ),
                    const SizedBox(
                      height: 23,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'ทะเบียนรถ',
                          //   style: CustomTextStyles.body8,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    // TextFormFieldCustomHistory(
                    //   controller: _carRegistrationController,
                    //   backgroundColor: Colors.transparent,
                    //   hintText: '2กก.-3421',
                    //   hintStyle: CustomTextStyles.body9,
                    //   textStyle: CustomTextStyles.body9,
                    // ),
                    const SizedBox(
                      height: 23,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'แบตเตอรี่ที่ได้มา',
                              //   style: CustomTextStyles.body8,
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            // TextFormFieldCustomHistory(
                            //   suffixText: '%',
                            //   width: 165,
                            //   controller: _batteryStartController,
                            //   backgroundColor: Colors.transparent,
                            //   hintText: '32',
                            //   hintStyle: CustomTextStyles.body9,
                            //   textStyle: CustomTextStyles.body9,
                            //   enableSuffixIcon: true,
                            // )
                          ],
                        ),
                        Text(
                          '-',
                          //   style: CustomTextStyles.body16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'แบตเตอรี่ที่ใช้ไป',
                              //   style: CustomTextStyles.body8,
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            // TextFormFieldCustomHistory(
                            //   width: 165,
                            //   controller: _batteryEndController,
                            //   backgroundColor: Colors.transparent,
                            //   hintText: '95',
                            //   suffixText: '%',
                            //   hintStyle: CustomTextStyles.body9,
                            //   textStyle: CustomTextStyles.body9,
                            //   enableSuffixIcon: true,
                            // )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 23,
                    ),
                    // const SelectDateHistory(
                    //   label: 'วันที่เข้ารับการชาร์จ',
                    // ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // SizedBox(
                        //   height: 70,
                        //   width: 165,
                        //   child: SelectTimeHistory(
                        //     width: 165,
                        //     label: 'ช่วงเวลาเข้ารับการชาร์จ',
                        //     hour: 10,
                        //     minute: 12,
                        //   ),
                        // ),
                        Text(
                          '-',
                          //  style: CustomTextStyles.body16,
                        ),
                        // SizedBox(
                        //   height: 70,
                        //   width: 165,
                        //   child: SelectTimeHistory(
                        //     width: 165,
                        //     label: '',
                        //     hour: 10,
                        //     minute: 45,
                        //   ),
                        // ),
                      ],
                    ),
                    const SizedBox(
                      height: 23,
                    ),
                    const Row(
                      children: [
                        Text(
                          'แบตเตอรี่ที่ใช้ไป',
                          //  style: CustomTextStyles.body8,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    // TextFormFieldCustomHistory(
                    //   controller: _priceBatteryEndController,
                    //   backgroundColor: Colors.transparent,
                    //   hintText: '250',
                    //   suffixText: 'บาท',
                    //   hintStyle: CustomTextStyles.body9,
                    //   textStyle: CustomTextStyles.body9,
                    //   enableSuffixIcon: true,
                    // ),
                    const SizedBox(
                      height: 23,
                    ),
                    const Row(
                      children: [
                        Text(
                          'ชำระเงินผ่านทาง',
                          //   style: CustomTextStyles.body5,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () {},
                          child: Container(
                            width: 112.33,
                            height: 84,
                            padding: const EdgeInsets.only(top: 12, bottom: 8),
                            decoration: ShapeDecoration(
                              //    color: CustomColors.baByPrimaryColor,
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: const ShapeDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(IconPath.logoApp),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(),
                                  ),
                                  width: 32,
                                  height: 32,
                                ),
                                const Text(
                                  'โอนเงิน',
                                  //   style: CustomTextStyles.body5,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () {},
                          child: Container(
                            width: 112.33,
                            height: 84,
                            padding: const EdgeInsets.only(top: 12, bottom: 8),
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 32,
                                  height: 26,
                                  decoration: const ShapeDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(IconPath.logoApp),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(),
                                  ),
                                ),
                                const Text(
                                  'Credit Card',
                                  //   style: CustomTextStyles.body5,
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(12),
                          onTap: () {},
                          child: Container(
                            width: 112.33,
                            height: 84,
                            padding: const EdgeInsets.only(top: 12, bottom: 8),
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: const ShapeDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(IconPath.logoApp),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(),
                                  ),
                                  width: 32,
                                  height: 32,
                                ),
                                const Text(
                                  'เงินสด',
                                  //  style: CustomTextStyles.body5,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    // ButtonCustom(
                    //   width: double.infinity,
                    //   text: 'บันทึกการชาร์จ',
                    //   onTap: () {},
                    // )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
