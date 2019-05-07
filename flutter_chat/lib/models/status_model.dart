import 'package:flutter_chat/models/chat_model.dart';

class StatusModel {
  final String name;
  final String imageUrl;
  final String time;

  StatusModel(this.name, this.imageUrl, this.time);
} 

List<StatusModel> status = [
  new StatusModel(messageData[0].name, messageData[0].imageUrl, "Hoy, 3:00 am"),
  new StatusModel(messageData[1].name, messageData[1].imageUrl, "Hoy, 3:00 am"),
  new StatusModel(messageData[2].name, messageData[2].imageUrl, "Hoy, 3:00 am"),
  new StatusModel(messageData[3].name, messageData[3].imageUrl, "Hoy, 3:00 am"),

];