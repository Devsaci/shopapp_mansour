class HomeModel {
  late bool status;
  late HomeDataModel data;

  HomeModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = HomeDataModel.fromJson(json['data']);
  }
}

class HomeDataModel {
  List<BannerModel>? banners;

  List<ProductModel>? products;

  HomeDataModel.fromJson(Map<String, dynamic> json) {}
}

class BannerModel {
//Named Constructor
  BannerModel.fromJson(Map<String, dynamic> json);
}

class ProductModel {
//Named Constructor
  ProductModel.fromJson(Map<String, dynamic> json);
}
