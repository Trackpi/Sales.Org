import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';
import 'package:sales_org/views/faqs_screen/widgets/list_tile.dart';

class FaqAddquestion extends StatelessWidget {
  const FaqAddquestion({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> savedSearches = [
      {
        "question": "How to add payment method to this app?",
        "answer":
            "To add a payment method, go to Settings > Payment Methods > Add."
      },
      {
        "question": "How to reset my password?",
        "answer":
            "Click on 'Forgot Password' on the login screen and follow the instructions."
      },
      {
        "question": "How to change my account settings?",
        "answer":
            "Navigate to Settings and select the options you want to modify."
      },
      {
        "question": "What is the refund policy?",
        "answer":
            "Refunds are processed within 7 business days. Terms and conditions apply."
      },
      {
        "question": "How to contact customer support?",
        "answer":
            "You can reach customer support via the Help Center in the app."
      },
    ];

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
          "FAQs",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Icon(
            Icons.star_outline,
            color: Colors.white,
          ),
          SizedBox(
            width: SizeUtils.width * 0.05,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: SizeUtils.height * 0.01,
          horizontal: SizeUtils.width * 0.04,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "How can we help you?",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: SizeUtils.height * 0.02),
            // Search bar
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: SizeUtils.width * 0.05,
                vertical: SizeUtils.height * 0.01,
              ),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.grey),
                  SizedBox(width: SizeUtils.width * 0.015),
                  Text(
                    "Search",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.mic, color: Colors.white),
                ],
              ),
            ),
            SizedBox(height: SizeUtils.height * 0.02),
            // List of FAQs
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => ExpansionTile(
                  trailing: Icon(Icons.star_outline, color: Colors.white),
                  title: List_tile(
                    textStyle: TextStyle(color: Colors.white),
                    isExpanded: true,
                    leadingIcon: Icons.saved_search_outlined,
                    text: savedSearches[index]['question']!,
                    trailingIcon: Icons.star_outline,
                  ),
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        savedSearches[index]['answer']!,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                separatorBuilder: (context, index) => Divider(
                  color: Color(0xffffffff).withAlpha(75),
                ),
                itemCount: savedSearches.length,
              ),
            ),
            // Bottom Submit Question Section
            Text(
              "Would you like to submit your Question to us?",
              style: TextStyle(
                color: Colors.orange,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: SizeUtils.height * 0.01),
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[900],
                hintText: "Enter your question",
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: SizeUtils.height * 0.02),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeUtils.width * 0.2,
                    vertical: SizeUtils.height * 0.015,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
