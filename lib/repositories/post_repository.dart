import 'dart:async';
import 'package:flutter/material.dart';
import 'package:minicipalite_app/models/post.dart';
import 'package:minicipalite_app/shared/locator.dart';

import '../services/api.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class PostRepository extends ChangeNotifier {
  Api _api = locator<Api>();

  List<Post> posts;

  Future<List<Post>> getAllPosts() async {
    var result = await _api.getDataCollection();
    posts = result.documents
        .map((doc) => Post.fromMap(doc.data, doc.documentID))
        .toList();
    return posts;
  }

  Stream<QuerySnapshot> getAllPostsAsStream() {
    return _api.streamDataCollection();
  }

  Future<Post> getPostById(String id) async {
    var doc = await _api.getPostById(id);
    return Post.fromMap(doc.data, doc.documentID);
  }

  Future removePost(String id) async {
    await _api.removePost(id);
    return;
  }

  Future updatePost(Post data, String id) async {
    await _api.updatePost(data.toJson(), id);
    return;
  }

  Future addPost(Post data) async {
    var result = await _api.addPost(data.toJson());

    return;
  }
}
