class EphemeralKeyModel {
  String? id;
  dynamic? object;
  List<AssociatedObjects>? associatedObjects;
  int? created;
  int? expires;
  bool? livemode;
  dynamic? secret;

  EphemeralKeyModel(
      {this.id,
        this.object,
        this.associatedObjects,
        this.created,
        this.expires,
        this.livemode,
        this.secret});

  EphemeralKeyModel.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    object = json['object'];
    if (json['associated_objects'] != null) {
      associatedObjects = <AssociatedObjects>[];
      json['associated_objects'].forEach((v) {
        associatedObjects!.add(new AssociatedObjects.fromJson(v));
      });
    }
    created = json['created'];
    expires = json['expires'];
    livemode = json['livemode'];
    secret = json['secret'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    data['id'] = this.id;
    data['object'] = this.object;
    if (this.associatedObjects != null) {
      data['associated_objects'] =
          this.associatedObjects!.map((v) => v.toJson()).toList();
    }
    data['created'] = this.created;
    data['expires'] = this.expires;
    data['livemode'] = this.livemode;
    data['secret'] = this.secret;
    return data;
  }
}

class AssociatedObjects {
  dynamic? id;
  dynamic? type;

  AssociatedObjects({this.id, this.type});

  AssociatedObjects.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    type = json['type'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    return data;
  }
}
