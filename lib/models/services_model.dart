class ServicesModel {
  final int id;
  final String title;
  final String image;

  ServicesModel({
    required this.id,
    required this.title,
    required this.image,
  });
}

List<ServicesModel> services = [
  ServicesModel(
    id: 1,
    title: "Corporal",
    image: "",
  ),
  ServicesModel(
    id: 2,
    title: "Massagem",
    image: "",
  ),
  ServicesModel(
    id: 3,
    title: "Facial",
    image: "",
  ),
  ServicesModel(
    id: 4,
    title: "Drenagem",
    image: "",
  ),
];
