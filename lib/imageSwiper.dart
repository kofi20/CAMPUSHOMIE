import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

Swiper imageSlider(context) {
  return new Swiper(
    autoplay: true,
    itemBuilder: (BuildContext context, int index) {
      return new Image.network(
        "https://media.istockphoto.com/photos/machine-learning-hands-of-robot-and-human-touching-on-big-data-picture-id1206796363?b=1&k=20&m=1206796363&s=170667a&w=0&h=orwXorGD_qw9BDX10sn8HMI3Wk5lX-8Lk4Vo6oculMc=",
        fit: BoxFit.fitHeight,
      );
    },
    itemCount: 10,
    viewportFraction: 0.7,
    scale: 0.8,
  );
}
