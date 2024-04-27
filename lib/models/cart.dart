import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  //list of items
  List<Shoe> shoeShop = [
    Shoe(
        name: 'ZOOM FREAK',
        price: '250',
        imagePath: 'lib/images/air_max',
        description:
            'The forward-thinking design of his latest signature shoe.'),
    Shoe(
        name: 'Air Jordan 1',
        price: '300',
        imagePath: 'lib/images/pngwing.com.png',
        description:
            'The forward-thinking design of his latest signature shoe.'),
    Shoe(
        name: 'Air Jordan 2',
        price: '150',
        imagePath: 'lib/images/nike_air.png',
        description:
            'The forward-thinking design of his latest signature shoe.'),
    Shoe(
        name: 'All Stars',
        price: '100',
        imagePath: 'lib/images/all_stars.png',
        description:
            'The forward-thinking design of his latest signature shoe.'),
    Shoe(
        name: 'Air Jordan 6',
        price: '200',
        imagePath: 'lib/images/pinkAir.png',
        description:
            'The forward-thinking design of his latest signature shoe.'),
    Shoe(
        name: 'Air Jordan 3',
        price: '100',
        imagePath: 'lib/images/red_jordan.png',
        description:
            'The forward-thinking design of his latest signature shoe.'),
    Shoe(
        name: 'Air Jordan 1 Hi FlyEase',
        price: '100',
        imagePath: 'lib/images/shoe_with_tick.png',
        description:
            'The forward-thinking design of his latest signature shoe.'),
    Shoe(
        name: 'JumpmanMVP',
        price: '230',
        imagePath: 'lib/images/yello_air.png',
        description:
            'The forward-thinking design of his latest signature shoe.'),
  ];

  //items in the cart
  List<Shoe> userCart = [];

  //get list of shoes
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items
  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item
  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
