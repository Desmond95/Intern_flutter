import 'package:fast_shop/components/constants.dart';
import 'package:fast_shop/components/square_button.dart';
import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<bool> _onBackPressedSuccessPage() {
      Navigator.popAndPushNamed(context, '/orders');
    }

    return SafeArea(
        child: WillPopScope(
      onWillPop: _onBackPressedSuccessPage,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 72,
                  height: 72,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // borderRadius: BorderRadius.circular(5),
                    color: Color(0xFF1DF619),
                  ),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Text(
                  'Success',
                  style: kLabelTextStyleBlue,
                ),
                Text(
                  'Thank you for shopping with Dovv',
                  style: kLabelDescriptionArticle,
                ),
                SizedBox(height: 20),
                SquareButton(
                  buttonText: 'Back to order',
                  onPress: () {
                    Navigator.pushNamed(context, '/orders');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
