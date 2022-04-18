import 'package:flutter/material.dart';
import 'package:flutter_echarts/flutter_echarts.dart';

class PieChart extends StatelessWidget {
  const PieChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Echarts(
        option: '''
   {
  title: {
    text: 'Referer of a Website',
    subtext: 'Fake Data',
    left: 'center'
  },
  tooltip: {
    trigger: 'item'
  },

  series: [
    {
      name: 'Access From',
      type: 'pie',
      radius: '50%',
      label: {
        position: 'inner',
        fontSize: 14
      },
      data: [
        { value: 1048, name: '10%' },
        { value: 735, name: '20%' },
        { value: 580, name: '30%' },
        { value: 484, name: '60%' },
        { value: 300, name: '200%' }
      ],
      emphasis: {
        itemStyle: {
          shadowBlur: 10,
          shadowOffsetX: 0,
          shadowColor: 'rgba(0, 0, 0, 0.5)'
        }
      }
    }
  ]
}
  ''',
      ),
      width: 300,
      height: 250,
    );
  }
}
