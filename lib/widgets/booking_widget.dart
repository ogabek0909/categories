import 'package:flutter/material.dart';

class BookingWidget extends StatelessWidget {
  const BookingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 15),
      width: double.infinity,
      height: 500,
      // padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 40),
      child: Stack(
        children: [
          const Placeholder(
            color: Colors.grey,
          ),
          Positioned(
            right: 20,
            bottom: 30,
            top: 30,
            child: Container(
              width: MediaQuery.of(context).size.width / 2.5,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const FittedBox(
                      child: Text(
                        'What do you want to get?',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Product name or Keyword',
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextField(
                      maxLines: 5,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Product Description',
                      ),
                    ),
                    SizedBox(height: 15),
                    SizedBox(
                      width: 120,
                      child: TextField(
                        
                        decoration: InputDecoration(
                          
                          hintText: 'Quantity',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    FittedBox(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Post Your Request Now',
                          style: TextStyle(
                            fontSize: 20,
                            wordSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
