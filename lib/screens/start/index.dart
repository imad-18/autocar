import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 10),
              SizedBox(
                // color: Colors.blue,
                width: 500,
                height: 500,
                child: Image.asset('assets/images/phoenix_ev_full.png'),
              ),
              const SizedBox(height: 100),
              InkWell(
                onTap: () => {},
                child: TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: const Color(0xFFFFD04E),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 90,
                        vertical: 8,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  onPressed: () => {
                    Navigator.pushNamed(context, '/home'),
                  },
                  child: const Text(
                    'Start',
                    style: TextStyle(fontSize: 35),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
