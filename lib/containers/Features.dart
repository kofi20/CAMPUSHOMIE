import 'package:flutter/material.dart';

import 'FeauresTemp.dart';

class Features extends StatelessWidget {
  final tempList = Temp.generateFeatures();
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: GridView.builder(
          itemCount: tempList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) => tempList[index].isLast
              ? _buildAddFeature()
              : _buildFeature(context, tempList[index]),
        ));
  }
}

Widget _buildAddFeature() {
  return Text('Add Feature');
}

Widget _buildFeature(BuildContext context, Temp temp) {
  return Container(
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: temp.bgColor,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          temp.iconData,
          color: temp.iconColor,
          size: 35,
        ),
        SizedBox(height: 30),
        Text(
          temp.title!,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'assets\font\FontsFree-Net-SFProText-Regular.ttf'),
        ),
      ],
    ),
  );
}
