import 'package:expandable_text/expandable_text.dart';
import 'package:feedis/components/feed_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FeedStruct extends StatelessWidget {

  final String userName;
  final String title;
  final bool isPrivate;
  final String content;

  FeedStruct({
    required this.userName,
    required this.title,
    required this.isPrivate,
    required this.content,
    super.key
});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  child: Icon(Icons.person),
                ),
                SizedBox(width: 20.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(userName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0
                        ),textAlign: TextAlign.right,
                        ),
                        Text(isPrivate ? 'Privada' : 'Pública',
                    style: TextStyle(fontSize: 12.0, color: isPrivate ? Colors.red : Colors.green
                      ),
                    ),
                      ],
                    ),
                    Text(title, style: TextStyle(fontSize: 14.0, color: Colors.grey[700]),
                    ),

                  ],
                ),
              ],
            ),
            SizedBox(height: 10.0),
            ExpandableText(content, expandText: 'mostrar mais', collapseText: 'mostrar menos', maxLines: 3, linkColor: Colors.grey),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FeedButton(icon: Icons.thumb_down, activeColor: Colors.black, inactiveColor: Colors.grey, text: '2'),
                FeedButton(icon: Icons.thumb_up, activeColor: Colors.black, inactiveColor: Colors.grey, text: '2')
              ],
            ),
          ],
        ),
      ),
    );
  }
}