import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';
import 'package:sales_org/widgets/tab_card.dart';

class Posters extends StatelessWidget {
  const Posters({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0A0A0A),
      appBar: AppBar(
        backgroundColor: Color(0xff0A0A0A),
        centerTitle: true,
        title: Text(
          "Posters",
          style: TextStyle(
              color: Color(0xffffffff),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            Icons.quiz_outlined,
            color: Color(0xffffffff),
          ),
          SizedBox(
            width: SizeUtils.width * 0.02,
          ),
          Icon(
            Icons.search,
            color: Color(0xffffffff),
            size: 30,
          ),
          SizedBox(
            width: SizeUtils.width * 0.025,
          )
        ],
      ),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(
            vertical: SizeUtils.height * 0.03,
            horizontal: SizeUtils.width * 0.03),
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            mainAxisExtent: 210),
        itemBuilder: (context, index) => TabCard(
            image:
                "https://media.licdn.com/dms/image/v2/D560BAQEDGA0mgxzP2g/company-logo_200_200/company-logo_200_200/0/1726567177130/trackpi_private_limited_logo?e=2147483647&v=beta&t=i11jD7Z7tqj9Qwr59_97UddJcghokMqZNp3PPtLwd4g",
            count: "10K"),
      ),
    );
  }
}
