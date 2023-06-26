class ClassList {
  String name;
  String address;
  ClassList({required this.name, required this.address});

  static List<ClassList> classList = [
    ClassList(name: "Hari", address: "Sanepa"),
    ClassList(name: "Shyam", address: "Balkhu"),
    ClassList(name: "Gita", address: "Kalanki"),
  ];
}
