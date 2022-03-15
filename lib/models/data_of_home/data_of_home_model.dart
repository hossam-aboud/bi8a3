class DataOfHomeModel {
  late String picture, title, description, vr_mode, mode_3d;

  DataOfHomeModel({
    required this.picture,
    required this.title,
    required this.description,
    required this.vr_mode,
    required this.mode_3d,
  });

  DataOfHomeModel.fromJSON(Map<String, dynamic> json) {
    title = json['title'];
    picture = json['picture'];
    description = json['description'];
    vr_mode = json['vr_mode'];
    mode_3d = json['3d_mode'];
  }
}
