import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_mind_app/constants/constants.dart';
import 'package:music_mind_app/model/widgets_model/missions_model.dart';
import 'package:music_mind_app/view/widgets/my_text.dart';

class MissionsWidget extends StatelessWidget {
  MissionsWidget({
    this.controller,
  });

  var controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return ListView(
        padding: const EdgeInsets.only(bottom: 30,left: 7,right: 7),
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        children: [
          ListTile(
            title: MyText(
              text: '${controller.missions[controller.currentIndex].levelName}',
              size: 24,
              weight: FontWeight.w700,
            ),
            subtitle: MyText(
              text: '${controller.missions[controller.currentIndex].tagLine}',
              size: 14,
              maxlines: 2,
              color: KGrey2Color,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 150,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 10.0,
            ),
            shrinkWrap: true,
            itemCount: controller
                .missions[controller.currentIndex].missionsData!.length,
            padding: const EdgeInsets.symmetric(horizontal: 7),
            physics: const ClampingScrollPhysics(),
            itemBuilder: (context, index) {
              MissionsData _missionsData = controller
                  .missions[controller.currentIndex].missionsData![index];
              return Container(
                margin: const EdgeInsets.only(
                  left: 7,
                  right: 7,
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 8,
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        margin: EdgeInsets.zero,
                        color: KPrimaryColor,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                '${_missionsData.thumbnail}',
                                fit: BoxFit.cover,
                                width: Get.width,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 8, 8),
                                child: MyText(
                                  text: '${_missionsData.duration}',
                                  size: 12,
                                  color: _missionsData.isCompleted == true
                                      ? KSecondaryColor
                                      : KGrey2Color,
                                ),
                              ),
                            ),
                            _missionsData.isCompleted == true
                                ? Center(
                                    child: Image.asset(
                                      'assets/biplay-fill.png',
                                      height: 30,
                                    ),
                                  )
                                : const SizedBox(),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Wrap(
                            spacing: 7.0,
                            children: [
                              MyText(
                                text: 'Mission',
                                size: 16,
                                weight: FontWeight.w600,
                              ),
                              MyText(
                                text: '${_missionsData.missionName}',
                                size: 18,
                                weight: FontWeight.w700,
                              ),
                            ],
                          ),
                          _missionsData.isCompleted == true
                              ? Image.asset(
                                  'assets/akar-iconscircle-check.png',
                                  height: 16,
                                )
                              : Image.asset(
                                  'assets/lock.png',
                                  height: 16,
                                ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      );
    });
  }
}
