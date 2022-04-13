import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_echarts/flutter_echarts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomePage extends HookConsumerWidget {
  HomePage({Key? key}) : super(key: key);
  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leadingWidth: double.infinity,
        leading: Row(
          children: [
            Container(
              height: double.infinity,
              width: AppBar().preferredSize.height,
              color: Colors.green,
            ),
            //SizedBox(width: ScreenUtil().setWidth(10)),
            IconButton(
                onPressed: () => scaffoldKey.currentState!.openDrawer(),
                icon: const Icon(Icons.menu)),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.message),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search, size: 30),
            onPressed: () {},
          ),
          IconButton(
            onPressed: () {},
            splashRadius: 8.w,
            icon: Image.network(
              'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg',
              height: 30.h,
              width: 30.w,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10.w),
        ],
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.w),
          child: Column(
            children: [
              Card(
                child: SizedBox(
                  //height: ScreenUtil().setHeight(480),
                  child: Column(
                    children: [
                      TitleBandWidget(
                          title: 'Daily Target Income',
                          subTitle: 'Lorem ipsum dolor sit'),
                      SfCircularChart(
                        series: <CircularSeries>[
                          // change Pie to Doughnut or RadioBir
                          RadialBarSeries<GDPData, String>(
                            dataSource: getChartData(),
                            xValueMapper: (GDPData data, _) => data.continent,
                            yValueMapper: (GDPData data, _) => data.gdp,
                            //dataLabelSettings: DataLabelSettings(isVisible: true),
                            maximumValue: 100,
                          )
                        ],
                      ),
                      Text(
                        '\$749.56',
                        style: TextStyle(
                            fontSize: 30.sp, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        'from \$1,000',
                        style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                      ),
                      SizedBox(height: 10.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          'More Details',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                      SizedBox(height: 10.h),
                    ],
                  ),
                ),
              ),
              Card(
                child: SizedBox(
                  child: Column(
                    children: [
                      TitleBandWidget(
                        title: 'Daily Trending Menus',
                        subTitle: 'Lorem ipsum dolor',
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(300),
                        child: ListView.separated(
                          separatorBuilder: (context, index) => Divider(),
                          itemCount: 10,
                          itemBuilder: (context, index) => Container(
                            height: ScreenUtil().setHeight(100),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.w, vertical: 15.h),
                              child: Row(
                                children: [
                                  Text(
                                    '#${index + 1}',
                                    style: TextStyle(
                                        fontSize: 30.sp,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(width: 15.w),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: ScreenUtil().setWidth(190),
                                          child: Text(
                                            'Italiano Pizza With Garlic',
                                            maxLines: 2,
                                            style: TextStyle(
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        SizedBox(height: 10.h),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "#10.00",
                                              style: TextStyle(
                                                fontSize: 15.sp,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            SizedBox(width: 10.w),
                                            Text(
                                              'Order 89x',
                                              style: TextStyle(
                                                  fontSize: 15.sp,
                                                  color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: ScreenUtil().setWidth(70),
                                    height: ScreenUtil().setHeight(70),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            'https://www.vegrecipesofindia.com/wp-content/uploads/2020/11/pizza-recipe-2-500x375.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.circular(
                                          ScreenUtil().setWidth(10)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.h, horizontal: 10.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            CupertinoIcons.home,
                            size: 30.w,
                          ),
                          SizedBox(width: 10.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 36),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '892 ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 60.sp,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' +2,7%',
                                      style: TextStyle(
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                textScaleFactor: 0.5,
                              ),
                              SizedBox(height: 5.h),
                              Text(
                                'Orders',
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 5.w),
                        ],
                      ),
                    ),
                    Container(
                      child: Echarts(
                        option: '''
                        {
                          xAxis: {
                            type: 'category',
                            data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
                          },
                          yAxis: {
                            type: 'value'
                          },
                          series: [{
                            data: [820, 932, 901, 934, 1290, 1330, 1320],
                            type: 'line'
                          }]
                        }
                      ''',
                      ),
                      width: 300,
                      height: 250,
                    )
                  ],
                ),
              ),
              Container(
                height: ScreenUtil().setHeight(200),
                color: Colors.yellow,
              ),
              Container(
                height: ScreenUtil().setHeight(200),
                color: Colors.orange,
              ),
              Container(
                height: ScreenUtil().setHeight(200),
                color: Colors.purple,
              ),
              Container(
                height: ScreenUtil().setHeight(200),
                color: Colors.pink,
              ),
              Container(
                height: ScreenUtil().setHeight(200),
                color: Colors.brown,
              ),
              Container(
                height: ScreenUtil().setHeight(200),
                color: Colors.grey,
              ),
              Container(
                height: ScreenUtil().setHeight(200),
                color: Colors.cyan,
              ),
              Container(
                height: ScreenUtil().setHeight(200),
                color: Colors.indigo,
              ),
              Container(
                height: ScreenUtil().setHeight(200),
                color: Colors.lime,
              ),
              Container(
                height: ScreenUtil().setHeight(200),
                color: Colors.teal,
              ),
              Container(
                height: ScreenUtil().setHeight(200),
                color: Colors.amber,
              ),
              Container(
                height: ScreenUtil().setHeight(200),
                color: Colors.deepOrange,
              ),
              Container(
                height: ScreenUtil().setHeight(200),
                color: Colors.deepPurple,
              ),
              Container(
                height: ScreenUtil().setHeight(200),
                color: Colors.indigo,
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData('samir', 0, Colors.transparent),
      GDPData(
        'samir',
        70,
        Colors.green,
      ),
    ];

    return chartData;
  }

  List<SalesData> getSealsData() {
    final List<SalesData> salesdata = [
      SalesData(
        33,
        0,
      ),
      SalesData(
        45,
        70,
      ),
    ];
    return salesdata;
  }
}

class TitleBandWidget extends StatelessWidget {
  const TitleBandWidget({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.w, horizontal: 10.w),
      child: Row(
        children: [
          Container(
            color: Colors.green,
            height: ScreenUtil().setHeight(50),
            width: ScreenUtil().setWidth(10),
          ),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10.h),
              Text(subTitle,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

class GDPData {
  GDPData(this.continent, this.gdp, this.color);
  final String continent;
  final double gdp;
  final Color color;
}

class SalesData {
  SalesData(this.year, this.sales);
  final double year;
  final double sales;
}
