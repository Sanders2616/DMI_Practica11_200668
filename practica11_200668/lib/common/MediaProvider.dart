import 'dart:async';
import 'package:practica11_200668/model/Media.dart';
import 'package:practica11_200668/common/HttpHandler.dart';

abstract class MediaProvider{
  Future<List<Media>> fetchMedia();
}

class MovieProvider extends MediaProvider{
  HttpHandler _client = HttpHandler.get();
  @override
  Future<List<Media>> fetchMedia(){
    return _client.fetchMovies();
  }
}

class ShowProvider extends MediaProvider{
  HttpHandler _client = HttpHandler.get();
  @override
    Future<List<Media>> fetchMedia(){
      return _client.fetchShow();
    }
}