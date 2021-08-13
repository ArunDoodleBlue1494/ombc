import 'package:flutter/material.dart';
import 'package:ombc/common/custom_colors.dart';
import 'package:ombc/common/image_path.dart';
import 'package:ombc/utils/code_snippet.dart';
import 'package:ombc/utils/typography.dart';

class BlogItemUI extends StatelessWidget {
  const BlogItemUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black.withOpacity(0.1)),
        borderRadius: BorderRadius.all(
            Radius.circular(6.0) //                 <--- border radius here
            ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                height: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6.0),
                  child: Image.asset(
                    ImagePath.blogBg,
                    fit: BoxFit.fill,
                  ),
                )),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(children: [
                  WidgetSpan(
                    child: Icon(
                      Icons.access_time,
                      size: 14,
                      color: CustomColors.darkGreyTextColor.withOpacity(0.7),
                    ),
                  ),
                  WidgetSpan(
                    child: SizedBox(
                      width: 5,
                    ),
                  ),
                  TextSpan(
                      text: "October 8, 2018", style: textStyleRegularGray14),
                ]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              child: TextButton(
                  onPressed: () => {},
                  child: Expanded(
                    child: Text(
                      "Croissants at OMBC — More Authentic than in France?",
                      style: textStyleNormal26,
                      maxLines: 2,
                    ),
                  ),
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith(
                        (state) => Colors.transparent),
                    textStyle: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.hovered))
                        return TextStyle(decoration: TextDecoration.underline);
                      return textStyleNormal26;
                    }),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Text(
                  "By now you know that preservatives in food are bad for both our health and our taste buds. But you still might be buying industrially produced bread from the grocery store because it’s not always convenient to run into one of Old Madras Baking Company’s 7 locations in Chennai.",
                  overflow: TextOverflow.ellipsis,
                  style: textStyle10,
                  maxLines: CodeSnippet.instance.isMobile(context) ? 1 : 2),
            ),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith(
                    (state) => Colors.transparent),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Read More",
                  style: buttonTextStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
