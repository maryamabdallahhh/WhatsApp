class UserdataModel {
  String? name;
  String? massage;
  String? time;
  String? image;
  bool? isviewed;
  UserdataModel({
    required this.image,
    required this.name,
    required this.massage,
    required this.time,
    this.isviewed = false,
  });
}
