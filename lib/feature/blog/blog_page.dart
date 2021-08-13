import 'package:flutter/material.dart';
import 'package:ombc/common/image_path.dart';
import 'package:ombc/common/strings.dart';
import 'package:ombc/feature/blog/blog_item.dart';
import 'package:ombc/utils/code_snippet.dart';
import 'package:ombc/utils/extension_utils.dart';
import 'package:ombc/utils/typography.dart';
import 'package:ombc/widget/footer.dart';
import 'package:ombc/widget/menubar.dart';

class BlogPage extends StatelessWidget {
  Widget _blogListUI(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.all(50),
        itemCount: 8,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: CodeSnippet.instance.isDesktop(context)
                ? 3
                : CodeSnippet.instance.isTablet(context)
                    ? 2
                    : 1,
            crossAxisSpacing: 50.0,
            mainAxisSpacing: 50.0,
            childAspectRatio: CodeSnippet.instance.isTablet(context) ? 0.8 : 1),
        itemBuilder: (context, index) {
          return BlogItemUI();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //You should use `Scaffold` if you have `TextField` in body.
      //Otherwise on focus your `TextField` won`t scroll when keyboard popup.
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //Header Container
            MenuBar(),

            //Body Container
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      ImagePath.blogBg,
                      height: 5.heightPercentage(context),
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      color: Colors.black.withOpacity(0.2),
                      height: 5.heightPercentage(context),
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text(
                        Strings.ombcBlog,
                        style: textStyleWhite32,
                      ),
                    )
                  ],
                ),
                _blogListUI(context)
              ],
            ),
            //Footer Container
            FooterBar(),
          ],
        ),
      ),
    );
  }
}
