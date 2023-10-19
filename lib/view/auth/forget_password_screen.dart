import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_feed/widgets/custom_toast.dart';

import '../../util/color_resources.dart';
import '../../util/dimensions.dart';
import '../../util/images.dart';
import '../../util/styles.dart';
import '../../widgets/custom_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final TextEditingController _emailController = TextEditingController();
  final FocusNode _emailFocus = FocusNode();

  bool _isError = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorResources.COLOR_WHITE,
      appBar: AppBar(
        title: const Text('Forget Password'),
        centerTitle: true,),
      body:
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            focusColor: Colors.transparent,
            onTap: (){
              setState(() {
                _emailFocus.unfocus();
                _emailFocus.canRequestFocus = false;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Please enter your email address to receive a verification code',
                      textAlign: TextAlign.left,
                      style: interRegular.copyWith(color: ColorResources.COLOR_LIGHT_BLACK, fontSize: Dimensions.fontSizeDefault),
                    ),
                    const SizedBox(height: 16),

                    Align(alignment: Alignment.centerLeft,
                        child:Text("Email",style: interMedium.copyWith(fontSize: Dimensions.fontSizeSmall,color: ColorResources.grey700),)
                    ),
                    const SizedBox(height: 6,),


                    Container(
                      height: 40,
                      padding: const EdgeInsets.only(left: 4),
                      decoration: BoxDecoration(
                        //color: widget.backgroundColor,
                        borderRadius:  BorderRadius.circular(8),
                        border: Border.all(color: _isError ? ColorResources.red : Colors.grey.shade300),
                      ),
                      child: TextField(
                        controller: _emailController,
                        focusNode: _emailFocus,
                        style: interRegular.copyWith(fontSize: Dimensions.fontSizeDefault, color: ColorResources.getTextColor(context)),
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: Theme.of(context).primaryColor,
                        autofocus: false,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left: 12,right: 12,top: 17),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.horizontal(right: Radius.circular(8),left: Radius.circular(8)),
                            borderSide: BorderSide(style: BorderStyle.none, width: 0),
                          ),
                          isDense: true,
                          hintText: 'Email',
                          hintStyle: interRegular.copyWith(fontSize: Dimensions.fontSizeSmall, color: ColorResources.COLOR_GRAY),
                          prefixIconConstraints: const BoxConstraints(minWidth: 8, maxHeight: 20),
                          suffixIcon: _isError ? IconButton(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            onPressed: (){},
                            icon: SvgPicture.asset(
                              AllImages.requestsMsgInfo,
                              width: 18,
                              height: 13,
                              color: ColorResources.red,
                            ),
                          ) : const SizedBox(),
                        ),
                        onChanged: (text){
                          setState(() {
                            _isError = false;
                            text = _emailController.text;
                          });
                        },
                      ),
                    ),


                    if(_isError)...[
                      const SizedBox(height: 6,),
                      Align(alignment: Alignment.centerLeft,
                          child:Text("You have entered wrong email",style: interRegular.copyWith(fontSize: Dimensions.fontSizeSmall,color: ColorResources.red),)
                      ),
                    ],


                    const Spacer(),

                    CustomButton(
                      onTap: (){
                        showCustomToast('Email Sent');
                      },
                      isColor: _emailController.text.isNotEmpty ,
                      buttonText: 'Send',
                    ),
                  ]
              ),
            ),
          ),
    );
  }
}
