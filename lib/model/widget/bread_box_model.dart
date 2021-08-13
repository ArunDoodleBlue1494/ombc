import 'package:ombc/common/image_path.dart';

class BreadBoxModel{
  String? productImage;
  String? productName;
  String? ingredient;
  String? price;
  bool? isSelected;
  int? quantity;
  BreadBoxModel({this.productImage,this.productName,this.ingredient,this.price,this.isSelected,this.quantity});
}
List<BreadBoxModel> breadBoxList=[
  BreadBoxModel(productImage:ImagePath.cerealBread,productName: "Whole Wheat Bread",ingredient: "100 % atta bread ",price: "Rs 70",isSelected: false,quantity: 0),
  BreadBoxModel(productImage:ImagePath.countryLoaf,productName: "Cereal Bread",ingredient: "100 % atta bread with 11 grains ",price: "Rs 80",isSelected: false,quantity: 0),
  BreadBoxModel(productImage:ImagePath.wheatBread,productName: "Country Loaf",ingredient: "Traditional white bread ",price: "Rs 60",isSelected: false,quantity: 0),
  BreadBoxModel(productImage:ImagePath.cerealBread,productName: "Whole Wheat Bread",ingredient: "100 % atta bread ",price: "Rs 70",isSelected: false,quantity: 0),
  BreadBoxModel(productImage:ImagePath.countryLoaf,productName: "Cereal Bread",ingredient: "100 % atta bread with 11 grains ",price: "Rs 80",isSelected: false,quantity: 0),
  BreadBoxModel(productImage:ImagePath.wheatBread,productName: "Country Loaf",ingredient: "Traditional white bread ",price: "Rs 60",isSelected: false,quantity: 0),
  BreadBoxModel(productImage:ImagePath.cerealBread,productName: "Whole Wheat Bread",ingredient: "100 % atta bread ",price: "Rs 70",isSelected: false,quantity: 0),
  BreadBoxModel(productImage:ImagePath.countryLoaf,productName: "Cereal Bread",ingredient: "100 % atta bread with 11 grains ",price: "Rs 80",isSelected: false,quantity: 0),
  BreadBoxModel(productImage:ImagePath.wheatBread,productName: "Country Loaf",ingredient: "Traditional white bread ",price: "Rs 60",isSelected: false,quantity: 0),
  BreadBoxModel(productImage:ImagePath.wheatBread,productName: "Country Loaf",ingredient: "Traditional white bread ",price: "Rs 60",isSelected: false,quantity: 0),

];