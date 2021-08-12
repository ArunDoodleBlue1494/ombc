import 'package:flutter/material.dart';
import 'package:ombc/common/custom_colors.dart';
import 'package:ombc/common/image_path.dart';
import 'package:ombc/common/routes.dart';
import 'package:ombc/common/strings.dart';
import 'package:ombc/utils/code_snippet.dart';
import 'package:ombc/utils/extension_utils.dart';
import 'package:ombc/utils/navigation.dart';
import 'package:ombc/utils/typography.dart';

class MenuBar extends StatelessWidget with PreferredSizeWidget{
  const MenuBar({Key? key}) : super(key: key);

  Widget _renderHeaderButton(
    String title,
    VoidCallback? onPressed,
  ) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: buttonTextStyle,
        ),
        style: ButtonStyle(
          overlayColor:
              MaterialStateProperty.resolveWith((state) => Colors.transparent),
          textStyle: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.hovered))
              return TextStyle(color: CustomColors.hoverColor);
            return buttonTextStyle;
          }),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Row(
            children: <Widget>[
              SizedBox(
                width: CodeSnippet.instance.isDesktop(context)
                    ? 1.widthPercentage(context)
                    : 0,
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 0.05,
                  height: MediaQuery.of(context).size.width * 0.05,
                  child: ConstrainedBox(
                      constraints: BoxConstraints.expand(),
                      child: IconButton(
                          onPressed: () => {
                                Navigator.popUntil(
                                    context, ModalRoute.withName(Routes.home))
                              },
                          padding: EdgeInsets.all(0.0),
                          icon: Image.asset(ImagePath.ombcLogo)))),
              CodeSnippet.instance.isDesktop(context)
                  ? Flexible(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: <Widget>[
                            _renderHeaderButton(Strings.ourStory, () => {
                            Navigation.navigateAndFinish(context, Routes.ourStory)
                            }),
                            SizedBox(
                              width: 16,
                            ),
                            _renderHeaderButton(Strings.ourProducts, () => {
                            Navigation.navigateTo(context, Routes.ourProducts)
                            }),
                            SizedBox(
                              width: 16,
                            ),
                            _renderHeaderButton(Strings.storeLocator, () => {
                            Navigation.navigateTo(context, Routes.storeLocator)
                            }),
                            SizedBox(
                              width: 16,
                            ),
                            _renderHeaderButton(Strings.contactUs, () => {}),
                            SizedBox(
                              width: 8,
                            ),
                            _renderHeaderButton(Strings.faq, () => {}),
                            SizedBox(
                              width: 8,
                            ),
                            _renderHeaderButton(Strings.blog, () => {}),
                            SizedBox(
                              width: 8,
                            ),
                            _renderHeaderButton(Strings.login, () => {}),
                            SizedBox(
                              width: 8,
                            ),
                            InkWell(
                              onTap: (){
                                Navigation.navigateTo(context, Routes.subscribeNow);
                              },
                              child: Image.asset(
                                ImagePath.ombcSideBanner,
                                width: MediaQuery.of(context).size.width * 0.15,
                                height: MediaQuery.of(context).size.width * 0.05,
                                fit: BoxFit.contain,
                              ),
                            ),
                            SizedBox(
                              width: 1.widthPercentage(context),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Flexible(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          Icons.menu,
                          color: CustomColors.primaryColor,
                          size: 24,
                        ),
                      ),
                    ),
            ],
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>  Size.fromHeight(kToolbarHeight);
}
