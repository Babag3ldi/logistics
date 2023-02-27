class BasicModel {
  String title;
  String image;
  String image2;
  String image3;


  BasicModel({
    required this.title,
    required this.image,
    required this.image2,
    required this.image3
  });
}

List<BasicModel> basicList = [
  BasicModel(title: 'Logistics', image: 'assets/11.jpg', image2: 'assets/12.jpg', image3: 'assets/13.jpg'),
  BasicModel(title: 'Environmental Concerns of Logistics', image: 'assets/21.jpg', image2: 'assets/null.jpg', image3: 'assets/null.jpg'),
  BasicModel(title: 'Logistics Decision Areas', image: 'assets/31.jpg', image2: 'assets/32.jpg', image3: 'assets/33.jpg'),
  BasicModel(title: 'Material Handling and Packaging', image: 'assets/41.jpg', image2: 'assets/42.jpg', image3: 'assets/43.jpg'),
  BasicModel(title: 'Case Study in Logistics', image: 'assets/51.jpg', image2: 'assets/52.jpg', image3: 'assets/53.jpg'),
  BasicModel(title: 'International Logistics', image: 'assets/61.jpg', image2: 'assets/62.jpg', image3: 'assets/63.jpg'),
  BasicModel(title: 'International Inventory Issues', image: 'assets/71.jpg', image2: 'assets/72.jpg', image3: 'assets/73.jpg'),
  BasicModel(title: 'Logistics Management', image: 'assets/81.jpg', image2: 'assets/null.jpg', image3: 'assets/null.jpg'),
  BasicModel(title: 'Supply Chain in Logistics', image: 'assets/91.jpg', image2: 'assets/92.jpg', image3: 'assets/93.jpg'),
  BasicModel(title: 'Outsourcing Logistics Services', image: 'assets/101.jpg', image2: 'assets/102.jpg', image3: 'assets/null.jpg'),
  BasicModel(title: 'Logistics and the Environment', image: 'assets/111.jpg', image2: 'assets/null.jpg', image3: 'assets/null.jpg'),
  BasicModel(title: 'Significance of Supply Chain and Logistics Management', image: 'assets/121.jpg', image2: 'assets/122.jpg', image3: 'assets/null.jpg'),
];