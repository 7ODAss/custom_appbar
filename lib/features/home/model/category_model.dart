import '../../../core/utils/app_constants.dart';

class CategoryModel {
  final String name;
  final String image;

  CategoryModel({required this.name, required this.image});
}

List<CategoryModel>category=[
  CategoryModel(name: "Accessory", image: AppConstants.accessory),
  CategoryModel(name: "Animal", image: AppConstants.animal),
  CategoryModel(name: "Clothes", image: AppConstants.clothes),
  CategoryModel(name: "Electronics", image: AppConstants.electronics),
  CategoryModel(name: "Food", image: AppConstants.food),
  CategoryModel(name: "Shoes", image: AppConstants.shoes),
  CategoryModel(name: "Sports", image: AppConstants.sports),
];