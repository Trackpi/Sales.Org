import 'package:flutter/material.dart';

import '../../../utils/size_utils.dart';

class List_tile extends StatelessWidget {
  final IconData leadingIcon;

  final String text;

  final IconData trailingIcon;

  final Color? leadingIconColor;

  final Color? trailingIconColor;

  List_tile(
      {super.key, required this.leadingIcon, this.leadingIconColor, required this.text, required this.trailingIcon, this.trailingIconColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: SizeUtils.height * 0.013),
      child: Row(
        children: [
          Icon(
            leadingIcon,
            color: leadingIconColor??Colors.grey,
          ),
          SizedBox(
            // width: 10,
            width: SizeUtils.width * 0.02,
          ),
          Expanded(
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            // width: 15,
            width: SizeUtils.width * 0.03,
          ),
          Icon(
            trailingIcon,
            color: trailingIconColor??Colors.white,
          )
        ],
      ),
    );
  }
}
