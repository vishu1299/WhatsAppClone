class StatusModel{
  final String name;
  final String time;
  final String avatarUrl;

  StatusModel({this.name,this.time,this.avatarUrl});
}


List<StatusModel> dummyData = [
  new StatusModel(
    name : "My Status",
    time: "Tap to add status update",
    avatarUrl: "assets/images/1.jpg"
  ),
];


List <StatusModel> dummyData_1 = [
  new StatusModel(
    name : "James Anderson",
    time: "Yesterday, 9:04 pm",
    avatarUrl: "assets/images/4.jpg",
  ),
];