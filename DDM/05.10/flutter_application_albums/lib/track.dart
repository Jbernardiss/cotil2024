
// ignore_for_file: unnecessary_this

class Track {

  String _title = "";
  String _length = "";
 
  Track(this._title, this._length);


  String get title => this._title;

  set title(String value) => this._title = value;

  get length => this._length;

  set length( value) => this._length = value;
}