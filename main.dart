import 'package:flutter/material.dart';

void main() => runApp(TasbeehApp());

class TasbeehApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'عداد التسبيح',
      theme: ThemeData(
        fontFamily: 'SF Pro Display',
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFF1E2A5E), 
          primary: Color(0xFF1E2A5E),
          secondary: Color(0xFFD6B5E2),
        ),
        useMaterial3: true,
      ),
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: TasbeehHome(),
      ),
    );
  }
}

class TasbeehHome extends StatefulWidget {
  @override
  _TasbeehHomeState createState() => _TasbeehHomeState();
}

class _TasbeehHomeState extends State<TasbeehHome> {
  int _count1 = 0;
  int _count2 = 0;
  int _count3 = 0;
  static const int maxCount = 33;

  void _increment1() {
    setState(() {
      if (_count1 == maxCount) {
        _count1 = 0;
      } else {
        _count1++;
      }
    });
  }

  void _increment2() {
    setState(() {
      if (_count2 == maxCount) {
        _count2 = 0;
      } else {
        _count2++;
      }
    });
  }

  void _increment3() {
    setState(() {
      if (_count3 == maxCount) {
        _count3 = 0;
      } else {
        _count3++;
      }
    });
  }

  Widget _buildButton(String label, VoidCallback onPressed) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: Offset(0, 2), 
          ),
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFD6B5E2),
          foregroundColor: Color(0xFF1E2A5E), 
          padding: EdgeInsets.symmetric(vertical: 16),
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(label),
      ),
    );
  }

  Widget _buildCounter(int value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        '$value / $maxCount',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Color(0xFF1E2A5E),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF1E2A5E),
        title: Text(
          'برنامج التسبيح',
          style: TextStyle(
            color: Color(0xFFD6B5E2),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildButton('سبحان الله', _increment1),
            _buildCounter(_count1),
            _buildButton('الحمد لله', _increment2),
            _buildCounter(_count2),
            _buildButton('الله أكبر', _increment3),
            _buildCounter(_count3),
            SizedBox(height: 24),
            Text(
              'اضغط على كل زر لزيادة العداد حتى $maxCount، بعدها يتصفّر تلقائياً.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xFF1E2A5E)),
            ),
          ],
        ),
      ),
    );
  }
}
