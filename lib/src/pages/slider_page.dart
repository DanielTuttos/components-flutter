import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valueSlider = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            Expanded(child: _createImage()),
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamano de la imagen',
      value: _valueSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (value) {
        setState(() {
          _valueSlider = value;
        });
      },
    );
  }

  Widget _createImage() {
    return Image(
      image: const NetworkImage(
          'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/8e4c3336-0621-4c1d-ad77-dee35d7a12d2/dd0uqo9-8a046c11-e93d-4007-a586-5e078a252b41.png/v1/fill/w_1280,h_1397/batman_png_by_arkhamanger_dd0uqo9-fullview.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTM5NyIsInBhdGgiOiJcL2ZcLzhlNGMzMzM2LTA2MjEtNGMxZC1hZDc3LWRlZTM1ZDdhMTJkMlwvZGQwdXFvOS04YTA0NmMxMS1lOTNkLTQwMDctYTU4Ni01ZTA3OGEyNTJiNDEucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.RKtZ7cdmmQUPaW1S1AQr4_qRmFMH-y5EqpfuIsbrlOA'),
      width: _valueSlider,
      fit: BoxFit.contain,
    );
  }
}
