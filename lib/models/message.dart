class Message {
  Message({
    required this.toid,
    required this.msg,
    required this.read,
    required this.type,
    required this.fromid,
    required this.sent,
  });

  late final String toid;
  late final String msg;
  late final String read;
  late final Type type;
  late final String fromid;
  late final String sent;

  Message.fromJson(Map<String, dynamic> json) {
    toid = json['toid'].toString();
    msg = json['msg'].toString();
    read = json['read'].toString();
    type = json['type'].toString() == Type.image.name ? Type.image : Type.text;
    fromid = json['fromid'].toString();
    sent = json['sent'].toString();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['toid'] = toid;
    _data['msg'] = msg;
    _data['read'] = read;
    _data['type'] = type.name;
    _data['fromid'] = fromid;
    _data['sent'] = sent;
    return _data;
  }
}

enum Type { text, image }
