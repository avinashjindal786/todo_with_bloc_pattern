class Todo{

  String todoMessage;
  bool isComplete;
  int id;

  Todo(this.todoMessage,this.id,this.isComplete);
  Todo.fromJson(Map json) :
        todoMessage = json["todo"],
        isComplete = json["iscompleted"] == "true",
        id = json["id"] as int;


}