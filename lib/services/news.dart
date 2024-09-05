import 'dart:convert';
import '../model/article_model.dart';
import 'package:http/http.dart' as http;

class News{
  List<ArticleModel> news = [];

  Future<void> getNews()async{
    String url= 'https://newsapi.org/v2/everything?q=apple&from=2024-08-18&to=2024-08-18&sortBy=popularity&apiKey=b73142d5ad8a42798566a675d007892a';
    var response = await http.get(Uri.parse(url));


    if(response.statusCode == 200){
      var jsonData = jsonDecode(response.body);
      jsonData['articles'].forEach((element){
        if(element['urlToImage'] != null && element['description'] !=null) {
          ArticleModel articleModel = ArticleModel(
                title:element['title'],
                description : element['description'],
                url : element['url'],
                urlToImage: element['urlToImage'],
                content: element['content'],
                author: element['author']
          );
          news.add(articleModel);
        }
      });
      }
    }
}