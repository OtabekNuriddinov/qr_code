import 'package:flutter/material.dart';
import 'package:qr_code/core/lists/app_lists.dart';
import 'package:qr_code/core/theme/colors.dart';
import 'package:qr_code/core/theme/dimens.dart';
import 'package:qr_code/core/theme/text_styles.dart';
import 'core/components/destinations.dart';
import 'core/components/my_elevated_button.dart';
import 'core/components/qr_code_container.dart';
import 'core/components/url_text_field.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QrCode(),
    );
  }
}

class QrCode extends StatefulWidget {
  const QrCode({super.key});

  @override
  State<QrCode> createState() => _QrCodeState();
}

class _QrCodeState extends State<QrCode> {
  int currentIndex = 0;
  late TextEditingController _urlController;
  late TextEditingController _mailController;
  late double screenWidth;

  @override
  void initState() {
    super.initState();
    _urlController = TextEditingController();
    _mailController = TextEditingController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    screenWidth = MediaQuery.of(context).size.width;
  }

  @override
  Widget build(BuildContext context) {
    if (screenWidth < 1200) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            "FLOWCODE",
            style: AppTextStyles.flowCode
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: AppDimens.pAll20,
          child: SingleChildScrollView(
            child: Column(
              children: [
                UrlTextField(
                    onTapped: (value){
                      setState(() {});
                    },
                    urlController: _urlController,
                ),
                AppDimens.h20,
                QrCodeContainer(
                    urlController: _urlController,
                    mailController: _mailController,
                )
              ],
            ),
          ),
        ),
      );
    }
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Row(children: [
        Container(
          width: AppDimens.d220,
          decoration: BoxDecoration(
              color: AppColors.white,
              border: Border.all(color: AppColors.grey600),
          ),
          child: Padding(
            padding: AppDimens.ph10,
            child: Column(
              children: [
                Padding(
                  padding: AppDimens.pAll20,
                  child: Text(
                    "FLOWCODE",
                    style: AppTextStyles.flowCode
                  ),
                ),
                Divider(),
                Expanded(
                  child: ListView.builder(
                    itemCount: AppLists.navItems.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        child: Destinations(
                          navItems: AppLists.navItems,
                          currentIndex: currentIndex,
                          index: index,
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding:
                      AppDimens.phv20,
                  child: MyElevatedButton(),
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Enter your website URL',
                  style: AppTextStyles.enter
                ),
                AppDimens.h12,
                Text(
                  'Your QR code will be generated automatically.',
                  style: AppTextStyles.generated,
                ),
                AppDimens.h20,
                Padding(
                  padding: AppDimens.ph100,
                  child: UrlTextField(
                      onTapped: (value){
                        setState(() {});
                      },
                      urlController: _urlController,
                  )
                )
              ],
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child: QrCodeContainer(
              urlController: _urlController,
              mailController: _mailController,
            ))
      ]),
    );
  }
}


