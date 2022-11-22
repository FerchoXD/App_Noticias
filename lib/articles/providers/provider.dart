import 'package:get/get.dart';
import '../models/models.dart';

class Provider extends GetConnect {
  @override
  void onInit() {
    print('provider onint');
  }

  Future<List<Article>> getArticlesByCategory(String category) async {
    final response = await get(
        'https://newsapi.org/v2/top-headlines?country=us&category=business&apikey=fdf25212f75145ceb332a495162e4702');
    return [];
  }
}
