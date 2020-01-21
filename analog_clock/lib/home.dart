import 'dart:async';
import 'dart:math';
import 'package:analog_clock/shapes_painter.dart';
import 'package:analog_clock/utils/animback.dart';
import 'package:analog_clock/utils/animwave.dart';
import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Positioned.fill(child: AnimatedBackground()),
      (AnimatedWave(
        height: 400.0,
        speed: 1.0,
      )),
      (AnimatedWave(
        height: 400.0,
        speed: 0.9,
        offset: pi,
      )),
      (AnimatedWave(
        height: 400.0,
        speed: 1.2,
        offset: pi / 2,
      )),
      Positioned.fill(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(155.0),
              child: CustomPaint(
                painter: ShapesPainter(),
                child: Container(
                  height: 65.0,
                ),
              ),
            )
          ],
        ),
      ),
    ]);
  }
}
