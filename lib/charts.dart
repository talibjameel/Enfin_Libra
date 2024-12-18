import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import "package:syncfusion_flutter_charts/charts.dart";

class ColumnChart extends StatefulWidget {
  const ColumnChart({super.key});
  @override
  State<ColumnChart> createState() => _ColumnChartState();
}
class _ColumnChartState extends State<ColumnChart> {
  List foodData = [
    ['54%',50, 100],
    ['64%',100, 125],
    ['68%',150, 115, ],
    ['44%',200, 75,],
    ['64%',250, 110, ],
    // ['30%',300, 90,],
    // ['74%',350, 120, ],
    // ['84%',400, 100, ],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: 100.h,
        // width: 100.w,
        child: SfCartesianChart(
        //  margin: const EdgeInsets.symmetric(horizontal:20 ,vertical: 30,),
          tooltipBehavior: TooltipBehavior(enable: true ),
          backgroundColor: Colors.white,
          series: [
            ColumnSeries(
                dataSource: foodData,
                xValueMapper: (data,index) =>data[1],
                yValueMapper: (data,index) =>data[1],
                color: const Color(0xFF1D4184),
                dataLabelSettings: const DataLabelSettings(isVisible: true,),
                animationDuration: 3000,
              // borderWidth: 300,
           ),
            // SizedBox(width: 10,),
            ColumnSeries(
                dataSource: foodData,
                xValueMapper: (data,index) =>data[1],
                yValueMapper: (data,index) =>data[2],
                color:  Colors.orange,
                dataLabelSettings: DataLabelSettings(isVisible: true,),
                animationDuration: 3000,
           ),
          ],
        ),
      ),
    );
  }
}
