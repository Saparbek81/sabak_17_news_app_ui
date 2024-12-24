import 'package:dio/dio.dart';

class NewsService {
  final Dio dio = Dio();
  void fetchData() async {
    final response = dio.get(
        'https://newsapi.org/v2/everything?q=bitcoin&apiKey=8ffa38fee204451398a7c9c0a086ae27');
    print(response.toString());
  }
}
