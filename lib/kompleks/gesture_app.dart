import 'package:flutter/material.dart';

void main() => runApp(GestureApp());

class GestureApp extends StatefulWidget {
  @override
  State<GestureApp> createState() => _AllGestureFixedState();
}

class _AllGestureFixedState extends State<GestureApp> {
  String _gestureText = 'Belum ada interaksi';
  double _scale = 1.0;
  Offset _offset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gesture App',
      home: Scaffold(
        appBar: AppBar(title: Text('Deteksi Gesture')),
        body: GestureDetector(
          //
          onTap: () {
            setState(() => _gestureText = 'Tap (Ketukan Tunggal)');
            _scale = 1.0;
          },
          onDoubleTap: () {
            setState(() => _gestureText = 'Double Tap (Dua Ketukan)');
            _scale = 1.125;
          },
          onLongPress: () {
            setState(() => _gestureText = 'Long Press (Tahan Lama)');
            _scale = 0.75;
          },
          onScaleUpdate: (details) {
            setState(() {
              _scale = details.scale;
              _offset += details.focalPointDelta;

              if (details.focalPointDelta.dx > 2) {
                _gestureText = 'Geser ke Kanan';
              } else if (details.focalPointDelta.dx < -2) {
                _gestureText = 'Geser ke Kiri';
              } else if (details.focalPointDelta.dy > 2) {
                _gestureText = 'Geser ke Bawah';
              } else if (details.focalPointDelta.dy < -2) {
                _gestureText = 'Geser ke Atas';
              } else if (details.scale != 1.0) {
                _gestureText = 'Zoom: ${_scale.toStringAsFixed(2)}x';
              }
            });
          },
          child: Center(
            child: Transform.translate(
              offset: _offset,
              child: Transform.scale(
                scale: _scale,
                child: Container(
                  width: 150,
                  height: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'Sentuh Saya',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(16),
          color: Colors.black12,
          child: Text(
            _gestureText,
            style: TextStyle(fontSize: 16, fontFamily: 'Quicksand'),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
