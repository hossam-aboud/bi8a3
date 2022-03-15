import 'package:baqa3/models/data_of_home/data_of_home_model.dart';

class DataModel {
  late final String photo;
  late final String title;
  List<DataOfHomeModel> data = [];

  DataModel.formJSON(Map<String, dynamic> json) {
    photo = json['photo'];
    title = json['title'];
    if (json['data'] != null) {
      json['data'].forEach((element) {
        data.add(DataOfHomeModel.fromJSON(element));
      });
    }
  }

  Map<String, dynamic> toMap() {
    return {
      'photo': photo,
      'title': title,
      'data': data,
    };
  }
}
