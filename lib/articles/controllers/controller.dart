import 'package:get/get.dart';
import 'package:app_noticias/articles/models/models.dart';
import 'package:app_noticias/articles/providers/provider.dart';

class ArticleController extends GetxController {
  final bussinesArticle = <Article>[];
  final articleProvider = Get.find<Provider>();
  ArticleController() {
    getArticlesByCategory('bussines');
  }

  Future getArticlesByCategory(String category) async {
    final articles = await articleProvider.getArticlesByCategory(category);
    bussinesArticle.addAll(articles);
    update();
  }
}
