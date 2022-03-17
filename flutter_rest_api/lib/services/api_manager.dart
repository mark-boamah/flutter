import 'dart:convert';

import 'package:flutter_rest_api/constants/strings.dart';
import 'package:flutter_rest_api/models/newsInfo.dart';
import 'package:flutter_rest_api/models/post.dart';
import 'package:http/http.dart' as http;

class API_Manager {
  Future<NewsModel> getNews() async {
    var client = http.Client();
    var newsModel = null;
    var uri = Uri.parse(Strings.news_url);
    client.get(uri);

    try {
      var response = await client.get(uri);

      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        newsModel = NewsModel.fromJson(jsonMap);
      }
    } on Exception {
      return newsModel;
    }

    return newsModel;
  }
}
