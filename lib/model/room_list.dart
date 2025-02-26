class RoomListModel {
  List<Rooms>? rooms;

  RoomListModel({this.rooms});

  RoomListModel.fromJson(Map<String, dynamic> json) {
    if (json['rooms'] != null) {
      rooms = <Rooms>[];
      json['rooms'].forEach((v) {
        rooms!.add(new Rooms.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.rooms != null) {
      data['rooms'] = this.rooms!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Rooms {
  int? id;
  String? comment;
  String? image;
  String? name;
  String? subName;
  String? price;

  Rooms(
      {this.id, this.comment, this.image, this.name, this.subName, this.price});

  Rooms.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    comment = json['comment'];
    image = json['image'];
    name = json['name'];
    subName = json['subName'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['comment'] = this.comment;
    data['image'] = this.image;
    data['name'] = this.name;
    data['subName'] = this.subName;
    data['price'] = this.price;
    return data;
  }
}
