import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/slider_model.dart';

class Sliders{
  List<SliderModel> sliders = [];

  Future<void> getSlider()async{
    String url= 'https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=b73142d5ad8a42798566a675d007892a';
    var response = await http.get(Uri.parse(url));


    if(response.statusCode == 200){
      var jsonData = jsonDecode(response.body);
      jsonData['articles'].forEach((element){
        if(element['urlToImage'] != null && element['description'] !=null) {
          SliderModel sliderModel = SliderModel(
              title:element['title'],
              description : element['description'],
              url : element['url'],
              urlToImage: element['urlToImage'],
              content: element['content'],
              author: element['author']
          );
          sliders.add(sliderModel);
        }
      });
    }
  }
}