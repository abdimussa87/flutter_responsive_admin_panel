import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Storage Details',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Chart(),
          StorageInfoCard(
            svgSrc: 'assets/icons/Documents.svg',
            title: 'Document Files',
            numOfFiles: 1328,
            amountOfFiles: '1.3GB',
          ),
          StorageInfoCard(
            svgSrc: 'assets/icons/media.svg',
            title: 'Media Files',
            numOfFiles: 1328,
            amountOfFiles: '15.13GB',
          ),
          StorageInfoCard(
            svgSrc: 'assets/icons/folder.svg',
            title: 'Other Files',
            numOfFiles: 1328,
            amountOfFiles: '1.3GB',
          ),
          StorageInfoCard(
            svgSrc: 'assets/icons/unknown.svg',
            title: 'Unknown Files',
            numOfFiles: 1328,
            amountOfFiles: '1.3GB',
          ),
        ],
      ),
    );
  }
}
