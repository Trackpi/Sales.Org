//for gokul
import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';
import 'package:sales_org/views/passkey_screens/widget/common_button.dart';

class AddPasskey extends StatelessWidget {
  const AddPasskey({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        centerTitle: true,
        title: Text(
          "Operations",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        actions: [
          Icon(
            Icons.notifications_outlined,
            color: Colors.white,
          ),
          SizedBox(
            width: SizeUtils.width * 0.02,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create Your Four Digit Passkey",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: SizeUtils.height * 0.03),
            _buildPasskeyFields(),
            SizedBox(height: SizeUtils.height * 0.035),
            Text(
              "Confirm Passkey",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: SizeUtils.height * 0.025),
            _buildPasskeyFields(),
            SizedBox(height: SizeUtils.height * 0.08),
            Center(child: CommonButton()),
          ],
        ),
      ),
    );
  }

  Widget _buildPasskeyFields() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(4, (index) {
        return SizedBox(
          width: 60,
          height: 60,
          child: TextField(
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[800],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
            keyboardType: TextInputType.number,
            obscureText: true, // For security pin masking
          ),
        );
      }),
    );
  }
}
