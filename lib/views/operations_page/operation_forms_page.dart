import 'package:flutter/material.dart';
import 'package:sales_org/theme/constants.dart';
import 'package:sales_org/utils/size_utils.dart';
import 'package:sales_org/views/operations_page/dummydb/dummydb.dart';

class FormsPageOperations extends StatelessWidget {
  const FormsPageOperations({super.key});

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
          "Forms",
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
            horizontal: SizeUtils.width * 0.04,
            vertical: SizeUtils.height * 0.01),
        child: ListView.separated(
            itemBuilder: (context, index) => Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: SizeUtils.width * 0.06),
                  height: SizeUtils.height * 0.13,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          OperationDummydb.formList[index].toString(),
                          style: TextStyle(
                              color: pureWhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: pureWhite,
                        size: 22,
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: containerBlackColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: SizeUtils.height * 0.02,
                ),
            itemCount: OperationDummydb.formList.length),
      ),
    );
  }
}
