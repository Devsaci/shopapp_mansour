class HomeModel{
  late bool status;
  late HomeDataModel data;

  HomeModel.fromJson(Map<String, dynamic> json){
    status = json['status'];
    data = json['data'];
  }
}

class HomeDataModel {

}