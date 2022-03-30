class HomeModel {
  bool? status;
  HomeDataModel? data;
// named Constructor
  HomeModel.fromJson(Map<String, dynamic> json)
  {
    status = json['status'];

  }
}

class HomeDataModel {
  HomeDataModel.fromJson(Map<String, dynamic> json);
}
