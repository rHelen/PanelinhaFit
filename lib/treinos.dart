import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Treinos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Treinos(title: 'Treinos'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Treinos extends StatefulWidget {
  final String title;

  Treinos({required this.title});

  @override
  _TreinosState createState() => _TreinosState();
}

class _TreinosState extends State<Treinos> {
  late Timer _timer;
  int _counter = 0;
  int _selectedTime = 30;
  bool _isTimerRunning = false;

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter < _selectedTime) {
          _counter++;
        } else {
          _stopTimer();
        }
      });
    });
    setState(() {
      _isTimerRunning = true;
    });
  }

  void _stopTimer() {
    _timer.cancel();
    setState(() {
      _isTimerRunning = false;
    });
  }

  void _resetTimer() {
    _timer.cancel();
    setState(() {
      _counter = 0;
      _isTimerRunning = false;
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xFF040116),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Color(0xFF040116),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 110,
                  backgroundImage: AssetImage('assets/logo.png'),
                  backgroundColor: Colors.transparent,
                ),
              ),
              SizedBox(height: 20),
              Text(
                widget.title,
                style: TextStyle(fontSize: 36, color: Colors.white),
              ),
              SizedBox(height: 20),
              Text(
                '$_counter',
                style: TextStyle(fontSize: 48, color: Colors.white),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: _isTimerRunning ? null : _startTimer,
                    child: Text(
                      'Iniciar',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Escolha o tempo (segundos)'),
                            content: TextField(
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                                setState(() {
                                  _selectedTime = int.tryParse(value) ?? 30;
                                });
                              },
                            ),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  _startTimer();
                                },
                                child: Text(
                                  'Confirmar',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Icon(Icons.timer),
                  ),
                  ElevatedButton(
                    onPressed: _stopTimer,
                    child: Text(
                      'Parar',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _resetTimer,
                    child: Text(
                      'Reset',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
