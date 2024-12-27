import 'package:flutter/material.dart';
import 'package:sales_org/utils/size_utils.dart';

class ListviewCards extends StatelessWidget {
  const ListviewCards({super.key, this.isPoster = false, required this.url});
  final bool isPoster;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isPoster ? SizeUtils.width * 0.35 : SizeUtils.width * 0.47,
      height: SizeUtils.height * 0.15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            url,
          ),
        ),
      ),
    );
  }
}
