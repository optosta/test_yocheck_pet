
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test_yocheck_pet/common/common.dart';
import 'package:test_yocheck_pet/common/util/branch.dart';
import 'package:test_yocheck_pet/layers/presentation/widget/bottomsheet/v_urine_define_info_bottom_sheet.dart';
import 'package:test_yocheck_pet/layers/presentation/widget/style_text.dart';


class UrineResultListItem extends StatelessWidget {
  final int index;
  final String status;

  const UrineResultListItem({
    Key? key,
    required this.index,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            enableDrag: true,
            backgroundColor: Colors.transparent,
            builder: (BuildContext context) {
              return UrineDefineInfoBottomSheetView(
                urineLabel: AppConstants.urineLabelList[index],
                index: index,
              );
            })
      },
      child: Container(
          height: 50,
          padding: const EdgeInsets.all(AppDim.xSmall),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                /// 항목
                SizedBox(
                  width: 120,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        StyleText(
                          maxLinesCount: 2,
                          softWrap: true,
                          size: AppDim.fontSizeLarge,
                          text: AppConstants.urineLabelList[index],
                          fontWeight: AppDim.weight500,
                          color: AppColors.blackTextColor,
                          align: TextAlign.start,
                        ),
                        const Gap(AppDim.xSmall),
                        const Icon(Icons.info_outline, size: 15, color: AppColors.grey),
                      ],
                    )
                ),
                const Gap(AppDim.small),

                /// 결과 Text
                Container(
                  constraints: const BoxConstraints(
                    minWidth: 50,
                    maxWidth: 60,
                    minHeight: 20,
                  ),
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    color: Branch.resultStatusToBgColor(status, index),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: StyleText(
                      text: status,
                      color: Branch.resultStatusToColor(status, index),
                      fontWeight: AppDim.weightBold,
                      maxLinesCount: 2,
                      softWrap: true,
                      align: TextAlign.center,
                    ),
                  ),
                ),
              ]
          )),
    );
  }



}