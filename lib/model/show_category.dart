class ShowCategoryModel{
  String? author;
  String? title;
  String? description;
  String? url;
  String urlToImage= 'https://dummyjson.com/image/400x200/008080/ffffff?text=Image+Not+Available';
  String? content;

  ShowCategoryModel({this.title,this.description,this.content,this.author,this.url, required String urlToImage});

}