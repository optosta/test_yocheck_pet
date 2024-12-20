import 'package:flutter/material.dart';
import 'package:test_yocheck_pet/common/common.dart';

import '../../model/enum/home_button_type.dart';
import 'w_menu_button.dart';


class UrineHomeBody extends StatelessWidget {
  const UrineHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: AppDim.large),
      child: Column(
        children: [
          Row(
            children:
            [
              MenuButton(
                  type: HomeButtonType.inspection,
                  label: 'home_inspection'.tr(),
              ), // 검사 시작
              // MenuButton(
              //   type: HomeButtonType.history,
              //   label: 'home_history'.tr(),
              // ), // 검사 내역
            ],
          ),
          // Row(
          //   children:
          //   [
          //     MenuButton(
          //       type: HomeButtonType.ingredient,
          //       label: 'home_analysis'.tr(),), // 성분 분석
          //     MenuButton(
          //       type: HomeButtonType.transition,
          //       label: 'home_trends'.tr(),), // 나의 추이
          //   ],
          // ),
        ],
      ),
    );
  }

}
