
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, unused_import

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_albums/album.dart';
import 'package:flutter_application_albums/track.dart';

class AlbumExhibit extends StatefulWidget {
  Album album = Album("", "", [], "");
  AlbumExhibit(this.album, {super.key});

  @override
  State<AlbumExhibit> createState() => _AlbumExhibitState();
}

class _AlbumExhibitState extends State<AlbumExhibit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.album.title),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage(widget.album.albumCoverPath),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Stack(),
        ),
      ),
    );
  }
}