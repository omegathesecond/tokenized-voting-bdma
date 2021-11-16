import 'package:admin/app/modules/home/nomination_category_model.dart';
import 'package:admin/models/RecentFile.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../constants.dart';

class NomineeList extends GetResponsiveView {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Select who you want to vote for",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: defaultPadding,
              minWidth: 600,
              columns: [
                DataColumn(
                  label: Container(),
                ),
              ],
              rows: List.generate(
                sampleNomineeList.length,
                (index) => nomineeListDataRow(sampleNomineeList[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//represents a row in the nominee list
class NomineeListRow extends GetResponsiveView {
  SingleNominee? singleNominee;
}

nomineeListDataRow(SingleNominee singleNominee) {
  return DataRow(
    cells: [
      DataCell(Text(singleNominee.name!)),
    ],
  );
}
