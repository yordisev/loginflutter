import 'package:flutter/material.dart';

class LoginFondoScreen extends StatelessWidget {
  final Widget inputs;

  const LoginFondoScreen({super.key, required this.inputs});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.red,
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            _BoxVerde(),
            SafeArea(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 30),
                child:
                    Icon(Icons.shopping_cart, color: Colors.white, size: 100),
              ),
            ),
            inputs
          ],
        ),
      ),
    );
  }
}

class _BoxVerde extends StatelessWidget {
  const _BoxVerde({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(63, 156, 63, 1),
            Color.fromRGBO(90, 178, 70, 1),
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(child: _Burbujas(), top: 90, left: 30),
          Positioned(child: _Burbujas(), top: -40, left: -30),
          Positioned(child: _Burbujas(), top: -50, right: -20),
          Positioned(child: _Burbujas(), bottom: -30, right: 40),
          Positioned(child: _Burbujas(), bottom: -50, left: 10),
          Positioned(child: _Burbujas(), bottom: 120, right: 20),
        ],
      ),
    );
  }
}

class _Burbujas extends StatelessWidget {
  const _Burbujas({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color.fromRGBO(255, 255, 255, 0.05)),
    );
  }
}
