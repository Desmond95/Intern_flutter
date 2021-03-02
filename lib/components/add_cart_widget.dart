import 'package:fast_shop/components/add_cart.dart';
import 'package:fast_shop/screens/cart_screen.dart';

class AddCartWidget {
  Future<CartWidget> addCartWidget() {
    try {
      cartWidgets.add(cartWidget);
    } catch (e) {
      print(e);
    }
  }
}
