import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';
import '../../../models/Blog.dart';
import '../../../responsive.dart';

class BlogPostCard extends StatelessWidget {
  final Blog blog;
  const BlogPostCard({
    Key key,
    @required this.blog
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.78,
            child: Image.asset(blog.image),
          ),
          Container(
            padding: EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0))),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Design".toUpperCase(),
                      style: TextStyle(
                        color: kDarkBlackColor,
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: kDefaultPadding),
                    Text(blog.date,
                        style: Theme.of(context).textTheme.caption),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(blog.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: Responsive.isDesktop(context) ? 32.0 : 24.0,
                          color: kDarkBlackColor,
                          fontFamily: 'Raleway',
                          height: 1.3,
                          fontWeight: FontWeight.w600)),
                ),
                Text(blog.description,
                    maxLines: 4, style: TextStyle(height: 1.5)),
                SizedBox(
                  height: kDefaultPadding,
                ),
                Row(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.only(bottom: kDefaultPadding / 4),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: kPrimaryColor, width: 3))),
                          child: Text("Read More",
                              style: TextStyle(color: kDarkBlackColor)),
                        )),
                    Spacer(),
                    IconButton(
                        icon: SvgPicture.asset(
                            'assets/icons/feather_thumbs-up.svg'),
                        onPressed: () {}),
                    IconButton(
                        icon: SvgPicture.asset(
                            'assets/icons/feather_message-square.svg'),
                        onPressed: () {}),
                    IconButton(
                        icon: SvgPicture.asset(
                            'assets/icons/feather_share-2.svg'),
                        onPressed: () {}),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
