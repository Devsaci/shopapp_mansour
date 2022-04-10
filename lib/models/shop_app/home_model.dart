class HomeModel {
  bool? status;
  HomeDataModel? data;

// named Constructor
  HomeModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = HomeDataModel.fromJson(json['data']);
  }
}

class HomeDataModel {
  List<BannerModel> banners = [];

  HomeDataModel.fromJson(Map<String, dynamic> json) {
    json['banners'].forEach();
  }
}

class BannerModel {}
