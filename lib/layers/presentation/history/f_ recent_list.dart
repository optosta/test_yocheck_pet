import 'package:flutter/material.dart';
import 'package:test_yocheck_pet/common/common.dart';
import 'package:test_yocheck_pet/layers/presentation/history/w_history_list_item.dart';

import '../../entity/history_dto.dart';
import '../widget/w_data_empty.dart';
import '../widget/w_dotted_line.dart';


class RecentListFragment extends StatelessWidget {
  final List<HistoryDataDTO> historyList;

  const RecentListFragment({
    super.key,
    required this.historyList,
  });

  int get recentListMaxCount => 5;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppDim.paddingLarge,
      child: historyList.isEmpty
          ? DataEmpty(message: 'history_empty'.tr())
          : ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemCount: historyList.length > recentListMaxCount
                  ? recentListMaxCount
                  : historyList.length,
              itemBuilder: (BuildContext context, int index) =>
                  HistoryListItem(history: historyList[index],
              ),
              separatorBuilder: (BuildContext context, int index) {
                return const DottedLine(mWidth: double.infinity);
              },
            ),
    );
  }
}
