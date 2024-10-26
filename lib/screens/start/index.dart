import 'package:flutter/material.dart';

class index extends StatelessWidget {
  const index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 10),
              Container(
                // color: Colors.blue,
                width: 500,
                height: 500,
                child: Image.asset('assets/images/phoenix_ev_full.png'),
              ),
              SizedBox(height: 100),
              InkWell(
                onTap: () => {Navigator.pushNamed(context, '/home')},
                child: TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Color(0xFFFFD04E),
                      padding: EdgeInsets.symmetric(
                        horizontal: 90,
                        vertical: 8,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  onPressed: () => {},
                  child: Text(
                    'Start',
                    style: TextStyle(fontSize: 35),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
