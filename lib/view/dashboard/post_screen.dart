import 'package:expandable_richtext/expandable_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

import '../../util/color_resources.dart';
import '../../util/dimensions.dart';
import '../../util/images.dart';
import '../../util/styles.dart';
import '../../widgets/post_button.dart';
import '../../widgets/profile_avatar.dart';

class PostSection extends StatefulWidget {
  const PostSection({Key? key,this.onClick, this.isPopular = true, this.index = 0, this.isPost = false, this.isMyPost = false, this.isFollow = true, this.isTag = false,  this.isCommunity = false, this.isOthersProfile = false, this.isTopMargin = true}) : super(key: key);
  final int index;
  final bool isPopular, isPost, isFollow, isTag, isMyPost, isCommunity, isOthersProfile, isTopMargin;
  final VoidCallback? onClick;


  @override
  PostSectionState createState() => PostSectionState();
}

class PostSectionState extends State<PostSection>  with SingleTickerProviderStateMixin{
  var postId = [];
  bool autoplay = false;

  final List<String> _imageList = [AllImages.rectangle,AllImages.longHeight,AllImages.profile, AllImages.newImage, AllImages.newImage1 ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
                    margin:  EdgeInsets.only(top: (!widget.isTopMargin && widget.index == 0) ? 0 : 8),
                    child: PhysicalModel(
                      color: ColorResources.COLOR_WHITE,
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Column(
                          children: [

                            /// post header
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(12.0, 8, 12,0),
                                  child: PostHeader(isGroup: widget.index % 2 == 0 ? true : false,),
                                ),
                                Padding(
                                    padding: const EdgeInsets.fromLTRB(12.0, 8, 12,0),
                                    child: ExpandableRichText(
                                      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                                      expandText: 'Show more',
                                      collapseText: 'Show less',
                                      expanded: false,
                                      onExpandedChanged: (flag) => {},
                                      toggleTextColor: Colors.black,
                                      showEllipsis: true,
                                      toggleTextStyle: interRegular.copyWith(color: Colors.grey,fontSize: Dimensions.fontSizeDefault, decoration: TextDecoration.none),
                                      urlStyle: interRegular.copyWith(color: Colors.blueAccent,fontSize: Dimensions.fontSizeDefault, decoration: TextDecoration.none),
                                      onUrlTap: (url) {},
                                      hashtagStyle:  interRegular.copyWith(color: ColorResources.getPrimaryColor(context),fontSize: Dimensions.fontSizeDefault, decoration: TextDecoration.none),
                                      mentionStyle: interRegular.copyWith(color: ColorResources.getPrimaryColor(context),fontSize: Dimensions.fontSizeDefault, decoration: TextDecoration.none),
                                      onMentionTap: (mention) => {},
                                      customTagStyle: const TextStyle(fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 16,
                                          color: Colors.white,
                                          backgroundColor: Colors.lightBlueAccent,
                                          decoration: TextDecoration.none),
                                      onCustomTagTap: (tag) => {},
                                      expandOnTextTap: true,
                                      collapseOnTextTap: true,
                                      style: interRegular.copyWith(color: ColorResources.getTextColor(context),fontSize: Dimensions.fontSizeDefault, decoration: TextDecoration.none),
                                      textDirection: TextDirection.ltr,
                                      textAlign: TextAlign.start,
                                      textScaleFactor: 1.0,
                                      maxLines: 2,
                                      animation: true,
                                      animationDuration: const Duration(milliseconds: 200),
                                      animationCurve: Curves.fastLinearToSlowEaseIn,
                                    ))
                              ],
                            ),

                            if(widget.index ==1 || widget.index == 3)...[
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: SizedBox(
                                  height: 400,
                                  child: Stack( alignment: Alignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: (){},
                                        child: ShaderMask(
                                          shaderCallback: (Rect bounds) {
                                            return RadialGradient(
                                              center: Alignment.center,
                                              radius: 1.0,
                                              colors: [Colors.grey[400]!, Colors.grey.shade200],
                                              tileMode: TileMode.repeated,
                                            ).createShader(bounds);
                                          },
                                          child: Image.asset(AllImages.rectangle, height: double.infinity, width: double.infinity, fit: BoxFit.cover),
                                        ),
                                      ),
                                      ShaderMask(
                                        shaderCallback: (Rect bounds) {
                                          return RadialGradient(
                                            center: Alignment.center,
                                            radius: 1.0,
                                            colors: [Colors.grey[300]!, Colors.grey[200]!],
                                            tileMode: TileMode.repeated,
                                          ).createShader(bounds);
                                        },
                                        child: Container(
                                          height: 55,
                                          width: 55,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(color: Colors.white, width: 4)
                                          ),
                                          child: const Icon(Icons.play_arrow, size: 40, color: Colors.white,),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],

                            if(widget.index == 2 || widget.index == 5)...[
                              StaggeredGridView.countBuilder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                crossAxisCount: 6,
                                padding: const EdgeInsets.only(top: 5),
                                itemCount: _imageList.length,
                                itemBuilder: (context, idx) => InkWell(
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  onTap: (){},
                                  child: Stack(
                                    children: [
                                      Hero(
                                        tag: _imageList[idx],
                                        child: Container(
                                          alignment: Alignment.bottomLeft,
                                          // padding: const EdgeInsets.all(2),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(2),
                                            // image: DecorationImage(image: AssetImage(widget.postModel.images![index].fileUrl!), fit: BoxFit.cover, filterQuality: FilterQuality.high)
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(1.5),
                                            child: ClipRRect(
                                                borderRadius: BorderRadius.circular(2),
                                                child: Image.asset(_imageList[idx],height: double.infinity, width: double.infinity, fit: BoxFit.cover,)
                                            ),
                                          ),
                                        ),
                                      ),
                                      idx >= 4 ? Positioned(
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Text(_imageList.length - 5 != 0 ? '${_imageList.length - 5}+' : '', style: interBold.copyWith(color: Theme.of(context).cardColor)),
                                        ),
                                      ) : const SizedBox()
                                    ],
                                  ),
                                ),
                                staggeredTileBuilder: (index) => StaggeredTile.count(
                                    _imageList.length == 1 ? 7 : _imageList.length == 3 ? 2 :  _imageList.length > 4 ? index == 0 || index == 1 ? 3 : 2 : 3 ,
                                    _imageList.length == 1 ? 7 : _imageList.length == 3 ? 2 : 3),
                              )
                            ],
                            Padding(
                              padding: const EdgeInsets.fromLTRB(12.0, 0, 12,8),
                              child: PostBottomPart(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
  }
}

class PostHeader extends StatefulWidget {
  final bool isGroup;
  const PostHeader({super.key, this.isGroup = false});


  @override
  State<PostHeader> createState() => _PostHeaderState();
}

class _PostHeaderState extends State<PostHeader> {


  @override
  Widget build(BuildContext context) {
    return Row( crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            const ProfileAvatar(imageUrl: '', height: 36, weight: 36,),
            const SizedBox(width: 8.0),

            Expanded(child: Column( crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if(widget.isGroup )...[
                  RichText(
                    text: TextSpan(
                        text:  'Mr. John',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {

                          }, style: interMedium.copyWith(color: Colors.black, fontSize: Dimensions.fontSizeDefault),
                        children: [
                          TextSpan(
                              text: ' - with ',
                              style: interRegular.copyWith(color: Colors.black, fontSize: Dimensions.fontSizeSmall)
                          ),
                          TextSpan(
                              text: 'joya',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {

                                },
                              style: interMedium.copyWith(color: Colors.black, fontSize: Dimensions.fontSizeDefault)),
                        ]
                    ),
                    maxLines: 2,
                  ),
                ]else...[
                  RichText(
                    text: TextSpan(
                      text: 'strobing',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {

                        }, style: interMedium.copyWith(color: Colors.black, fontSize: Dimensions.fontSizeDefault),

                    ),
                    maxLines: 2,
                  ),
                ],

                const SizedBox(height: 5.0),
                if(widget.isGroup)...[
                  Text('12h', style: interRegular.copyWith(color: ColorResources.getHintColor(context), fontSize: Dimensions.fontSizeExtraSmall)),
                ]else...[
                  if(widget.isGroup)...[
                    Row( crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                                text: 'Michel',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {}, style: interMedium.copyWith(color: Colors.black, fontSize: Dimensions.fontSizeDefault),
                                children: [
                                  TextSpan(
                                      text: ' 04h',
                                      style: interRegular.copyWith(color: ColorResources.getHintColor(context), fontSize: Dimensions.fontSizeExtraSmall)
                                  ),
                                ]
                            ),
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                  ]else...[
                    Text('12h', style: interRegular.copyWith(color: ColorResources.getHintColor(context), fontSize: Dimensions.fontSizeExtraSmall)),
                  ]
                ],
              ],
            )),
            const SizedBox(width: 20,),
            InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,
              onTap: () {

              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 4),
                decoration: BoxDecoration(
                  color: ColorResources.COLOR_PRIMARY,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text('Follow', style: interSemiBold.copyWith(color:  ColorResources.COLOR_WHITE, fontSize: Dimensions.fontSizeSmall), overflow: TextOverflow.ellipsis, maxLines: 1,),
              ),
            ),

            const SizedBox(width: 6),
            InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                focusColor: Colors.transparent,
                onTap: (){

                },
                child: SvgPicture.asset(AllImages.verticalMenu,  height: 20, width: 20)),
          ],
        );
  }

}



class PostBottomPart extends StatefulWidget {

  @override
  State<PostBottomPart> createState() => _PostBottomPartState();
}

class _PostBottomPartState extends State<PostBottomPart> {

  @override
  Widget build(BuildContext context) {
    return Column( crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Divider(thickness: 0.9,),
                  Row( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// for share
                      Expanded(
                        child: PostButton(
                          icon: SvgPicture.asset(AllImages.share, height: 20, width: 20,),
                          label: '12k',
                          onTap: () async {},
                        ),
                      ),

                      /// for coin
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: PostButton(
                              icon: SvgPicture.asset(AllImages.coinBlack, color: ColorResources.colorBlack, height: 22, width: 22,),
                              label: '30',
                              //onTap: () => Get.bottomSheet(const DiamondBottomSheet()),
                              onTap: () {

                              }
                          ),
                        ),
                      ),

                      /// for comment
                      Expanded(
                        child: PostButton(
                          icon: SvgPicture.asset(AllImages.comment, height: 20, width: 20,),
                          label: '503',
                          onTap: () async{},
                        ),
                      ),

                      Expanded(
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            onTap: () {
                            },
                            onLongPress: () async{

                              // Get.bottomSheet(PostLikeBottomSheet(postId: widget.post!.id ?? 0,), isScrollControlled: true);
                            },
                            child: SizedBox(
                              height: 25.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(AllImages.like,height: 20, width: 20,),
                                  const SizedBox(width: 9,),
                                  Text('140k', style: interMedium.copyWith(color: ColorResources.colorBlack, fontSize: Dimensions.fontSizeSmall)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //const SizedBox(height: 5.0),
                ],
              );
  }
}