import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String title, thumb, id;

  const DetailScreen({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 5,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black,
        foregroundColor: Colors.green,
        title: Text(
          title,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: id,
                child: Container(
                  width: 250,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          offset: Offset(0, 0),
                          color: Colors.black.withOpacity(0.8),
                        )
                      ]),
                  child: Image.network(
                    thumb,
                    headers: const {
                      'Referer': 'https://comic.naver.com',
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
