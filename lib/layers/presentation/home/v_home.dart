
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:test_yocheck_pet/layers/presentation/home/vm_urine.dart';
import 'package:test_yocheck_pet/layers/presentation/home/w_home_appbar.dart';
import 'package:test_yocheck_pet/layers/presentation/home/w_home_background_layout.dart';
import 'package:test_yocheck_pet/layers/presentation/home/w_urine_home_body.dart';
import 'package:test_yocheck_pet/layers/presentation/home/w_urine_lower.dart';

import '../../../../common/common.dart';


/// 소변검사 메인 화면
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _UrineHomeViewState();
}

class _UrineHomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(onPressed: ()=> {}),
      body: ChangeNotifierProvider(
        create: (BuildContext context) => UrineViewModel(),
        child: const SafeArea(
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: HomeBackgroundLayout(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:
                    [
                      /// 소변검사 헤더
                      //UrineHomeHeader(),

                      /// 버튼 4개(검사진행, 검사내역, 성분분석, 나의 추이)
                      Gap(AppDim.large),
                      UrineHomeBody(),
                    ],
                  ),
                ),
              ),

              /// 하단 이미지
              Align(
                  alignment: Alignment.bottomCenter,
                  child: UrineHomeLower(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
