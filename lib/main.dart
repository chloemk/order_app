import 'package:flutter/material.dart';
import 'package:order_app/common/component/custom_text_form_field.dart';

void main() {
  runApp(
    // runApp 아래 바로 Material App을 넣었었는데 그렇게 하지 않은 이유는
    // 라우팅할 때 buildContext가 필요한 경우가 있어서 _App이라는 private 위젯을 한번 감싸서 MaterialApp을 넣어주었다.
    _App(),
  );
}

class _App extends StatelessWidget {
  const _App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFormField(
              hintText: '이메일을 입력해주세요',
              onChanged: (String value) {},
            ),
            CustomTextFormField(
              hintText: '비밀번호를 입력해주세요',
              onChanged: (String value) {},
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}
