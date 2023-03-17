import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:touch_clone/screens/colors.dart';
import 'package:touch_clone/screens/FeeScreen/feedata/FeeData.dart';
import 'package:touch_clone/screens/FeeScreen/widgets/fee_widgets.dart';

class FeeScreen extends StatelessWidget {
  const FeeScreen({Key? key}) : super(key: key);
  static String routename = 'FeeScreen';

  Future<void> _handleRefresh()async{
    return await Future.delayed(Duration(milliseconds: 650));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.orangeAccent,
            Colors.deepOrange
          ]
        )
      ),
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.orangeAccent,
                  Colors.deepOrangeAccent
                ]
              )
            ),
          ),
          title: Text('Fee',
            style: Theme.of(context).textTheme.titleMedium!
                .copyWith(
              fontWeight: FontWeight.w500
            ),),
        ),
        backgroundColor: Colors.transparent,
        body: LiquidPullToRefresh(
          onRefresh: _handleRefresh,
          height: 300,
          color: Colors.deepOrange,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: kTopBorderRadius,
                    color: kOtherColor,
                  ),
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.all(kDefaultPadding),
                      itemCount: fee.length,
                      itemBuilder: (context, int index) {
                        return Container(
                          margin: EdgeInsets.only(bottom: kDefaultPadding),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(kDefaultPadding),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(kDefaultPadding),
                                  ),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: kTextLightColor,
                                      blurRadius: 2.0,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    FeeDetailRow(
                                      title: 'Receipt No',
                                      statusValue: fee[index].receiptNo,
                                    ),
                                    SizedBox(
                                      height: kDefaultPadding,
                                      child: Divider(
                                        thickness: 1.0,
                                      ),
                                    ),
                                    FeeDetailRow(
                                      title: 'Month',
                                      statusValue: fee[index].month,
                                    ),
                                    sizedBox,
                                    FeeDetailRow(
                                      title: 'Payment Date',
                                      statusValue: fee[index].date,
                                    ),
                                    sizedBox,
                                    FeeDetailRow(
                                      title: 'Status',
                                      statusValue: fee[index].paymentStatus,
                                    ),
                                    sizedBox,
                                    SizedBox(
                                      height: kDefaultPadding,
                                      child: Divider(
                                        thickness: 1.0,
                                      ),
                                    ),
                                    FeeDetailRow(
                                      title: 'Total Amount',
                                      statusValue: fee[index].totalAmount,
                                    ),
                                  ],
                                ),
                              ),
                              FeeButton(
                                  title: fee[index].btnStatus,
                                  iconData: fee[index].btnStatus == 'Paid'
                                      ? Icons.download_outlined
                                      : Icons.arrow_forward_outlined,
                                  onPress: () {})
                            ],
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}