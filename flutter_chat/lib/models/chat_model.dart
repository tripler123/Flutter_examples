class ChatModel {
  final String name;
  String message;
  final String time;
  final String imageUrl;

  ChatModel(this.name, this.message, this.time, this.imageUrl);
  
} 


List<ChatModel> messageData =[
  new ChatModel("Albert Einstein", "Hola...", "20:00 pm", "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Albert_Einstein_Head.jpg/220px-Albert_Einstein_Head.jpg"),
  new ChatModel("Renzo Rios", "Hola...", "20:00 pm", "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Albert_Einstein_Head.jpg/220px-Albert_Einstein_Head.jpg"),
  new ChatModel("Nicola Testa", "Hola...", "20:00 pm", "https://www.saberespractico.com/wp-content/uploads/2018/08/nikola-tesla.jpg"),
  new ChatModel("Renzo Rios", "Hola...", "20:00 pm", "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Albert_Einstein_Head.jpg/220px-Albert_Einstein_Head.jpg"),
  new ChatModel("Renzo Rios", "Hola...", "20:00 pm", "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/Albert_Einstein_Head.jpg/220px-Albert_Einstein_Head.jpg")
];