class Coffee {
  String? name;
  String? price;
  String? image;
  Coffee({this.name, this.price, this.image});
}

List<Coffee> coffeeList = [
  Coffee(name: 'Cappuccino', price: '3000MMK', image: 'images/coffee4.jpg'),
  Coffee(name: 'Latte', price: '3000MMK', image: 'images/coffee4.jpg'),
  Coffee(name: 'Arabica', price: '3000MMK', image: 'images/coffee2.jpg'),
  Coffee(name: 'Black Coffee', price: '3000MMK', image: 'images/coffee4.jpg'),
  Coffee(name: 'Espresso', price: '3000MMK', image: 'images/coffee2.jpg'),
];
