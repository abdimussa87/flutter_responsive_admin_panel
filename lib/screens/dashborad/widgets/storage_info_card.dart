import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard({
    Key key,
    @required this.title,
    @required this.svgSrc,
    @required this.numOfFiles,
    @required this.amountOfFiles,
  }) : super(key: key);
  final String title;
  final String svgSrc;
  final int numOfFiles;
  final String amountOfFiles;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      padding: EdgeInsets.all(
        defaultPadding,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: primaryColor.withOpacity(
            0.15,
          ),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        horizontalTitleGap: 0,
        leading: SvgPicture.asset(
          svgSrc,
          width: 20,
          height: 20,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          '$numOfFiles Files',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        trailing: Text(amountOfFiles),
      ),
    );
  }
}
