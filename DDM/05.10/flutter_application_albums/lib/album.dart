
// ignore_for_file: prefer_final_fields, unused_field, unnecessary_this

import 'package:flutter_application_albums/track.dart';

class Album {

  String _title = "";
  String _author = "";
  String _albumCoverPath = "";
  List<Track> _tracklist = [];


  Album(this._title, this._author, this._tracklist, this._albumCoverPath);


  String get title => this._title;

  set title(String value) => this._title = value;

  get author => this._author;

  set author( value) => this._author = value;

  get tracklist => this._tracklist;

  set tracklist( value) => this._tracklist = value;

  String get albumCoverPath => this._albumCoverPath;

  set albumCoverPath(String value) => this._albumCoverPath = value;

}