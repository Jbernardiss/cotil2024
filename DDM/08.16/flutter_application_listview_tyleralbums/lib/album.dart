class Album {

  String _title = "";
  String _release = "";
  String _coverImgPath = "";

  Album(this._title, this._release, this._coverImgPath);

  String get title => this._title;

  set title(String value) => this._title = value;

  get release => this._release;

  set release( value) => this._release = value;

  get coverImgPath => this._coverImgPath;

  set coverImgPath( value) => this._coverImgPath = value;

}