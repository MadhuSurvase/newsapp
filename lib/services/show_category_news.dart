import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/show_category.dart';

class ShowCategoryNews {
  List<ShowCategoryModel> categories = [];

  Future<void> getCategoriesNews(String category) async {
    String url = 'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=b73142d5ad8a42798566a675d007892a';

    try {
      var response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        var jsonData = jsonDecode(response.body);

        if (jsonData['status'] == 'ok') {
          categories.clear();
          for (var element in jsonData['articles']) {
            String imageUrl = element['urlToImage'] ?? 'https://dummyjson.com/image/400x200/008080/ffffff?text=Image+Not+Available';

            ShowCategoryModel categoryModel = ShowCategoryModel(
              title: element['title'] ?? '',
              description: element['description'] ?? '',
              url: element['url'] ?? '',
              urlToImage: imageUrl,
              content: element['content'] ?? '',
              author: element['author'] ?? '',
            );
            categories.add(categoryModel);
          }
        } else {
          print('Failed to load data: ${jsonData['status']}');
        }
      } else {
        print('Failed to load data: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching data: $e');
    }
  }
}
