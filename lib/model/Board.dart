
class Board {
  String board;
  String title;
  num wsBoard;
  num pages;
  num perPage;
  num maxFilesize;
  num maxWebmFilesize;
  num maxCommentChars;
  num maxWebmDuration;
  num bumpLimit;
  num imageLimit;
  String metaDescription;
  num isArchlived;

  Board.fromJson(jsonRes) {
    board = jsonRes['board'];
    title = jsonRes['title'];
    wsBoard = jsonRes['ws_board'];
    perPage = jsonRes['per_page'];
    pages = jsonRes['pages'];
    maxFilesize = jsonRes['max_filesize'];
    maxWebmFilesize = jsonRes['max_webm_filesize'];
    maxCommentChars = jsonRes['max_comment_chars'];
    maxWebmDuration = jsonRes['max_webm_duration'];
    bumpLimit = jsonRes['bump_limit'];
    metaDescription = jsonRes['meta_description'];
    isArchlived = jsonRes['is_archived'];
  }

}

class Boards {
  List<Board> list;
  // Boards.fromParams({this.list}) : super.fromParms();
  Boards.fromJson(jsonRes) {
    list = [];
    for (var listItem in jsonRes) {
        list.add(new Board.fromJson(listItem));
    }
  }
   getBoards(jsonRes){
    list = [];
    for (var listItem in jsonRes) {
        list.add(new Board.fromJson(listItem));
    }
  }
}