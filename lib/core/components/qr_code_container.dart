import 'package:flutter/material.dart';
import 'package:qr_code/core/theme/colors.dart';
import 'package:qr_code/core/theme/dimens.dart';
import 'package:qr_code/core/theme/text_styles.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../lists/app_lists.dart';
import 'my_expansion_tile.dart';
import 'my_little_container.dart';

class QrCodeContainer extends StatefulWidget {
  const QrCodeContainer(
      {super.key,
      required TextEditingController urlController,
      required TextEditingController mailController})
      : _urlController = urlController,
        _mailController = mailController;

  final TextEditingController _urlController;
  final TextEditingController _mailController;

  @override
  State<QrCodeContainer> createState() => _QrCodeContainerState();
}

class _QrCodeContainerState extends State<QrCodeContainer> {
  bool isPatternExpanded = false;
  bool isColorExpanded = false;
  bool isLogoExpanded = false;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color(0xFF0C0035),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
          child: Column(
            children: [
              Container(
                  width: AppDimens.d200,
                  height: AppDimens.d200,
                  color: AppColors.white,
                  child: widget._urlController.text.isEmpty
                      ? Center(
                          child: Text(
                            "Url kiriting",
                            style: TextStyle(color: AppColors.grey),
                          ),
                        )
                      : QrImageView(
                          data: widget._urlController.text,
                          version: QrVersions.auto,
                          size: AppDimens.d200,
                          backgroundColor: AppColors.white,
                        ),
              ),
              AppDimens.h30,
              MyExpansionTile(
                isExpanded: isPatternExpanded,
                onExpansionChanged: (value) {
                  setState(() {
                    isPatternExpanded = value;
                  });
                },
                title: "PATTERN",
                list: AppLists.patterns,
              ),
              AppDimens.h16,
              MyExpansionTile(
                isExpanded: isColorExpanded,
                onExpansionChanged: (value) {
                  setState(() {
                    isColorExpanded = value;
                  });
                },
                title: "COLOR",
                list: AppLists.colors,
              ),
              AppDimens.h16,
              MyExpansionTile(
                isExpanded: isLogoExpanded,
                onExpansionChanged: (value) {
                  setState(() {
                    isLogoExpanded = value;
                  });
                },
                title: "LOGO",
                list: AppLists.logos,
              ),
              AppDimens.h16,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyLittleContainer(
                    text: "PNG",
                    index: 0,
                    currentIndex: currentIndex,
                    onTapped: (index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                  MyLittleContainer(
                    text: "JPG",
                    index: 1,
                    currentIndex: currentIndex,
                    onTapped: (index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                  MyLittleContainer(
                    text: "SVG",
                    index: 2,
                    currentIndex: currentIndex,
                    onTapped: (index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ],
              ),
              AppDimens.h20,
              TextField(
                controller: widget._mailController,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Your mail address",
                    hintStyle: AppTextStyles.whiteText,
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.white,
                    )),
                    enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.white, width: 2)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: AppColors.white, width: 3))),
              ),
              AppDimens.h16,
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.maxFinite, 50),
                    backgroundColor: AppColors.blueAccent,
                    shape: RoundedRectangleBorder(borderRadius: AppDimens.c8)),
                onPressed: () {},
                child: Text(
                  "Download Code",
                  style: AppTextStyles.whiteText
                ),
              )
            ],
          ),
        ));
  }
}
