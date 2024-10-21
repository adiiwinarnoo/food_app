part of 'models.dart';

class FoodModels extends Equatable {
  final int id;
  final String imagePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;

  FoodModels(this.id, this.imagePath, this.name, this.description,
      this.ingredients, this.price, this.rate);

  @override
  List<Object?> get props => [id,imagePath,name,description,ingredients,price,rate];
}

List<FoodModels> mockFood = [
  FoodModels(
      1,
      'https://th.bing.com/th/id/R.278108f18bc4629b698cb408fd1d0b97?rik=5UV3PjOV6Ryt0A&riu=http%3a%2f%2fimage.shutterstock.com%2fz%2fstock-photo-nasi-goreng-with-fried-egg-chicken-and-shrimps-93367168.jpg&ehk=APYGFw2u7zoIGyWwb%2bPKh85h0x5%2bSgfWwWX1zOrldjI%3d&risl=&pid=ImgRaw&r=0',
      'Nasi Goreng Seafood',
      'Nasi Goreng Seafood adalah Nasi Goreng yang dibuat oleh bahan-bahan seafood yang masih Fresh',
      'nasi, bawang putih, bawang merah, timun,udang,cumi',
      45000,
      4.0),
  FoodModels(
      2,
      'https://th.bing.com/th/id/OIP.bo1gn_f6Bp12jIMEX41HpgHaE7?rs=1&pid=ImgDetMain',
      'Ayam Pedas Manis',
      'Nasi Goreng Seafood adalah Nasi Goreng yang dibuat oleh bahan-bahan seafood yang masih Fresh',
      'nasi, bawang putih, bawang merah, timun,udang,cumi',
      45000,
      4.0),
  FoodModels(
      3,
      'https://1.bp.blogspot.com/-hdzJZTQU8Y8/XovTD4iDzfI/AAAAAAAACVY/2IvYc5LzILw78-dk-0tzdrGnurw-j9wXwCLcBGAsYHQ/s1600/gado%2Bgado.jpg',
      'Gado-Gado',
      'Nasi Goreng Seafood adalah Nasi Goreng yang dibuat oleh bahan-bahan seafood yang masih Fresh',
      'nasi, bawang putih, bawang merah, timun,udang,cumi',
      35000,
      4.0),
  FoodModels(
      4,
      'https://1.bp.blogspot.com/-hdzJZTQU8Y8/XovTD4iDzfI/AAAAAAAACVY/2IvYc5LzILw78-dk-0tzdrGnurw-j9wXwCLcBGAsYHQ/s1600/gado%2Bgado.jpg',
      'Ketoprak',
      'Nasi Goreng Seafood adalah Nasi Goreng yang dibuat oleh bahan-bahan seafood yang masih Fresh',
      'nasi, bawang putih, bawang merah, timun,udang,cumi',
      35000,
      4.0),
  FoodModels(
      5,
      'https://1.bp.blogspot.com/-hdzJZTQU8Y8/XovTD4iDzfI/AAAAAAAACVY/2IvYc5LzILw78-dk-0tzdrGnurw-j9wXwCLcBGAsYHQ/s1600/gado%2Bgado.jpg',
      'Karedok',
      'Nasi Goreng Seafood adalah Nasi Goreng yang dibuat oleh bahan-bahan seafood yang masih Fresh',
      'nasi, bawang putih, bawang merah, timun,udang,cumi',
      35000,
      4.0),
  FoodModels(
      6,
      'https://1.bp.blogspot.com/-hdzJZTQU8Y8/XovTD4iDzfI/AAAAAAAACVY/2IvYc5LzILw78-dk-0tzdrGnurw-j9wXwCLcBGAsYHQ/s1600/gado%2Bgado.jpg',
      'Pecel',
      'Nasi Goreng Seafood adalah Nasi Goreng yang dibuat oleh bahan-bahan seafood yang masih Fresh',
      'nasi, bawang putih, bawang merah, timun,udang,cumi',
      35000,
      4.0)
];
