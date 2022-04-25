class CategoriesModel {
  bool? status;
  CategoriesDataModel? data;

// named Constructor
  CategoriesModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = (json['data']);
  }
}

class CategoriesDataModel {
  late int currentPage;
}
