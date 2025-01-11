//for gokul
import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';

class SelectCompany extends StatelessWidget {
  const SelectCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Ticket Raise',
          style: TextStyle(color: Colors.white),
        ),
        leading: Icon(Icons.arrow_back, color: Colors.white),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Against Client',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                Spacer(),
                Icon(Icons.folder_open, color: Colors.white),
                SizedBox(width: SizeUtils.width * 0.015),
                Text(
                  'Opened',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ],
            ),
            SizedBox(height: SizeUtils.height * 0.019),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.white),
                  SizedBox(width: SizeUtils.width * 0.01),
                  Expanded(
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  Icon(Icons.mic, color: Colors.white),
                ],
              ),
            ),
            SizedBox(height: SizeUtils.height * 0.02),
            Text(
              'Choose Client',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: SizeUtils.height * 0.024),
            Expanded(
              child: ListView.separated(
                itemCount: 5, // Number of clients
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                              'https://static.vecteezy.com/system/resources/previews/000/390/524/original/modern-company-logo-design-vector.jpg'),
                        ),
                        title: Text(
                          'Client Name',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        onTap: () {
                          // Handle client selection
                        },
                      ),
                      SizedBox(
                        height: SizeUtils.height * 0.019,
                      )
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.grey,
                    thickness: 1,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
