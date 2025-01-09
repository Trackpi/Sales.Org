//for abijith
import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:datepicker_dropdown/order_format.dart';
import 'package:flutter/material.dart';
import 'package:sales_org/theme/constants.dart';
import 'package:sales_org/utils/size_utils.dart';

class PasskeySecurityQuestionPage extends StatelessWidget {
  const PasskeySecurityQuestionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: pureWhite,
          ),
        ),
        title: Text(
          "Operations",
          style: TextStyle(
              color: pureWhite, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.search,
            color: pureWhite,
          ),
          SizedBox(
            width: SizeUtils.width * 0.055,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeUtils.width * 0.055,
            vertical: SizeUtils.width * 0.055),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: SizeUtils.height * 0.055,
          children: [
            Text(
              "Security Question",
              style: TextStyle(
                  color: pureWhite, fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: pureWhite),
              ),
              child: ExpansionTile(
                iconColor: pureWhite,
                title: Text(
                  "What's your data of birth?",
                  style: TextStyle(color: Colors.white),
                ),
                children: [
                  Divider(
                    color: pureWhite,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeUtils.width * 0.055),
                    child: TextFormField(
                      readOnly: true,
                      decoration: InputDecoration(
                        hintText: "_ _ / _ _ / _ _ _ _",
                        hintStyle: TextStyle(color: pureWhite),
                        border: InputBorder.none,
                      ),
                      onTap: () async {
                        final DateTime? picked = await showDatePicker(
                          context: context,
                          initialDate: DateTime
                              .now(), // The initial date displayed in the picker
                          firstDate: DateTime(
                              1900), // The earliest date the picker can select
                          lastDate: DateTime
                              .now(), // The latest date the picker can select
                        );

                        if (picked != null) {
                          // Handle the selected date
                          print("Selected Date: ${picked.toLocal()}"
                              .split(' ')[0]);
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: SizeUtils.height * 0.055,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeUtils.width * 0.075,
                      vertical: SizeUtils.height * 0.01),
                  decoration: BoxDecoration(
                    gradient: buttonGradientColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    "Submit",
                    style: TextStyle(
                        color: pureWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
