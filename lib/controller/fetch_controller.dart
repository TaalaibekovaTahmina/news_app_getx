import 'package:get/get.dart';
import 'package:news_app_getx/models/top_news.dart';
import 'package:news_app_getx/services/fetch_service.dart';

class FetchController extends GetxController {
  Rx<TopNews?> topNews = Rxn();

  Future<void> fetchNews() async {
    topNews.value = await TopNewsService().fetchTopNews();
  }

  @override
  void onInit() {
    super.onInit();
    fetchNews();
  }
}
