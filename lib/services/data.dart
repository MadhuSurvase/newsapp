import '../model/category_model.dart';

List<CategoryModel> getCategories(){
  List<CategoryModel> category =[];
  CategoryModel categoryModel = new CategoryModel();

  categoryModel.categoryName = 'Business';
  categoryModel.image = 'assets/images/bussiness.png';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryName = 'Science';
  categoryModel.image = 'assets/images/science.png';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryName = 'Enterprises';
  categoryModel.image = 'assets/images/enterprises.png';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryName = 'Network';
  categoryModel.image = 'assets/images/network.png';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryName = 'Health';
  categoryModel.image = 'assets/images/health.png';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  categoryModel.categoryName = 'Sports';
  categoryModel.image = 'assets/images/sports.png';
  category.add(categoryModel);
  categoryModel = new CategoryModel();

  return category;
}