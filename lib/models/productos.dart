class Producto {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  

  Producto(
      { this.id,
       this.title,
       this.price,
       this.description,
       this.category,
       this.image});

  factory Producto.fromJson(Map<String, dynamic> json)  {
    return Producto(
      id: json['id'] ,
      title: json['title'] ,
      price: double.parse(json['price'].toString()) ,
      description: json['description'] ,
      category: json['category'] ,
      image: json['image'] ,
    );
  }
}
