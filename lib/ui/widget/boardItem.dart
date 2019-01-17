import 'package:flutter/material.dart';
import 'package:four_chan/model/Board.dart';

class BoardItemView extends StatelessWidget {
  final Board board;
  BoardItemView(this.board);
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        // add 
        print(board);
      },
      child: new Card(
        color: Colors.white,
        child: new Container(
          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
          child: new Container(
            padding: const EdgeInsets.all(10.0),
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Container(
                  child: new Text(
                    board.title
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}