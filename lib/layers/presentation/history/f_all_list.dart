import 'package:flutter/material.dart';
import 'package:test_yocheck_pet/common/common.dart';
import 'package:test_yocheck_pet/layers/presentation/widget/w_dotted_line.dart';

import '../../entity/history_dto.dart';
import '../widget/w_data_empty.dart';
import 'w_history_list_item.dart';

class AllListFragment extends StatelessWidget {
  final ScrollController allScrollController;
  final List<HistoryDataDTO> historyList;

  const AllListFragment({
    super.key,
    required this.allScrollController,
    required this.historyList,
  });

  String get emptyText => '검사 이력이 없습니다.';

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: AppDim.paddingLarge,
        child: historyList.isEmpty
            ? DataEmpty(message: emptyText)
            : ListView.separated(
                controller: allScrollController,
                physics: const BouncingScrollPhysics(),
                itemCount: historyList.length,
                itemBuilder: (BuildContext context, int index) {
                  return HistoryListItem(history: historyList[index]);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const DottedLine(mWidth: double.infinity);
                },
              ),
    );
  }
}
