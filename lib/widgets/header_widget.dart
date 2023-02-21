import 'dart:async';

import 'package:flutter/material.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  //Page names
  final List<String> _pageNames = [
    'First Slider',
    'Second Slider',
    'Third Slider',
  ];

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 8), (timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      if(_pageController.hasClients){
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 1000),
        curve: Curves.easeIn,
      );

      }
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView.builder(          
          onPageChanged: (value) {
              _currentPage = value;
            
          },
          scrollDirection: Axis.horizontal,
          itemCount: _pageNames.length,
          controller: _pageController,
          itemBuilder: (context, index) => Container(
            color: Colors.teal,
            child: Center(
              child: Text(
                _pageNames[index],
                style: const TextStyle(fontSize: 60),
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 5,
                  backgroundColor: _currentPage == 0 ? Colors.red : Colors.grey,
                ),
                const SizedBox(width: 5),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: _currentPage == 1 ? Colors.red : Colors.grey,
                ),
                const SizedBox(width: 5),
                CircleAvatar(
                  radius: 5,
                  backgroundColor: _currentPage == 2 ? Colors.red : Colors.grey,
                ),
              ],
            ),
            const SizedBox(height: 5),
          ],
        ),
      ],
    );
  }
}
