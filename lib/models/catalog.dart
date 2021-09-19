class CatalogModels{
  
static final items  = [Item(
  id: 1,
  name: "iphone 12 pro",
  desc: "Apple iphone 12th generation",
  price: 999,
  color: "#33505a",
  image: "https://www.gizmochina.com/wp-content/uploads/2020/05/iphone-12-pro-max-family-hero-all-600x600.jpg"
  // image: "https://images.unsplash.com/photo-1620225678467-3bcbf4f140f0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=375&q=80"
)];

}
class Item{
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc,
   required this.price, required this.color, required this.image});

}