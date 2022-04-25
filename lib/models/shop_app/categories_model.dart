class CategoriesModel {
  bool? status;
  CategoriesDataModel? data;

// named Constructor
  CategoriesModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = CategoriesDataModel.fromJson(json['data']);
  }
}

class CategoriesDataModel {
  late int currentPage;
  late List<DataModel> data = [];

  CategoriesDataModel.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    json['data'].forEach((element) {
      data.add(DataModel.fromJson(json['data']));
    });
  }
}

class DataModel {

  DataModel.fromJson(Map<String, dynamic> json);
}
