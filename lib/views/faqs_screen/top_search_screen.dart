//for aparna
import 'package:flutter/material.dart';

class TopSearchScreen extends StatelessWidget {
  const TopSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a0a0a),
      appBar: AppBar(
        backgroundColor: Color(0xff0a0a0a),
        leading: Icon(
          Icons.arrow_back,
          color: Color(0xffffffff),
          size: 24,
        ),
        centerTitle: true,
        title: Text(
          "FAQs",
          style: TextStyle(
              color: Color(0xffffffff),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.star_outline_rounded,
            color: Color(0xffffffff),
            size: 24,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          //column with padding containing searchfield , top search heading ...
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "How can we help you?",
                  style: TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 15,
                ),
                //search field
                SizedBox(
                  height: 40,
                  child: TextFormField(
                    cursorColor: Color(0xffffffff),
                    decoration: InputDecoration(
                      fillColor: Color(0xff2A2A2A),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xffffffff).withAlpha(50),
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(
                        height: 0,
                        color: Color(0xffffffff).withAlpha(50),
                      ),
                      suffixIcon: Icon(
                        Icons.mic,
                        color: Color(0xffffffff),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //heading top searches
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Top Search",
                      style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //top searched list
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Divider(
                    color: Color(0xffffffff).withAlpha(75),
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.saved_search_outlined,
                                  size: 20,
                                  color: Color(0xffffffff),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Text(
                                    "How to add a payment method by this app?",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Color(0xffffffff),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(
                                  index == 0
                                      ? Icons.star_rounded
                                      : Icons.star_outline_rounded,
                                  size: 20,
                                  color: Color(0xffFFB300),
                                )
                              ],
                            ),
                          ),
                      separatorBuilder: (context, index) => Divider(
                            color: Color(0xffffffff).withAlpha(75),
                          ),
                      itemCount: 15),
                  Divider(
                    color: Color(0xffffffff).withAlpha(75),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
