
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white, // Change background color to white
        extendBody: true,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(338),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/newbar.png',
                    fit: BoxFit.fitWidth,
                  ),
                  const Positioned(
                    bottom: 160, // Adjusted to center vertically
                    right: 107,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/whitejustice.png'),
                          backgroundColor: Colors.transparent,
                          radius: 65,
                        ),
                        Text(
                          'تسجيل الدخول',
                          style: TextStyle(
                            fontFamily: 'Almarai',
                            fontSize: 32,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            ListView(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        _buildTextFieldContainer(
                          hintText: 'اسم المستخدم',
                          iconPath: 'assets/person.png',
                          iconSize: 40,
                        ),
                        const SizedBox(height: 35),
                        _buildTextFieldContainerWithButton(
                          hintText: 'كلمة المرور',
                          iconPath: 'assets/key.png',
                          iconSize: 50.0,
                          isObscureText: true,
                          leftButtonText: '    تذكرني',
                          onLeftButtonPressed: () {
                            print('Remember Me button pressed');
                          },
                          rightButtonText: 'نسيت كلمة المرور  ',
                          onRightButtonPressed: () {
                            print('Forgot Password button pressed');
                          },
                          switchValue: false,
                          onSwitchChanged: (value) {
                            print('Switch button value: $value');
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 90, // Adjust the bottom position as per your requirement
              left: (MediaQuery.of(context).size.width - 174) / 2, // Center horizontally
              child: GestureDetector(
                onTap: () {
                  // Handle button tap
                  print('Button pressed');
                },
                child: Container(
                  width: 174,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F5F5), // Set background color
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Set shadow color
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                        fontFamily: 'Almarai',
                        fontSize: 20,
                        color: Colors.black,
                        shadows: [
                          Shadow(
                            color: Colors.grey.withOpacity(0.9),
                            offset: const Offset(2, 2),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              ),
            ),
            Positioned(
              bottom: 4,
                right: 10,
                child: Image.asset('assets/logo.png',scale: 5,))
          ],
        ),
      ),
    );
  }

  Widget _buildTextFieldContainer({
    required String hintText,
    required String iconPath,
    double iconSize = 36.0,
    bool isObscureText = false,
  }) {
    return Container(
      width: 332,
      height: 76,
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5), // Set background color
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Set shadow color
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Image.asset(iconPath, width: iconSize, height: iconSize),
          ),
          Expanded(
            child: TextField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: const TextStyle(
                  fontFamily: 'Almarai',
                  fontSize: 18,
                  color: Colors.black,
                ),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              ),
              obscureText: isObscureText,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextFieldContainerWithButton({
    required String hintText,
    required String iconPath,
    required double iconSize,
    bool isObscureText = false,
    required String leftButtonText,
    required VoidCallback onLeftButtonPressed,
    required String rightButtonText,
    required VoidCallback onRightButtonPressed,
    required bool switchValue,
    required ValueChanged<bool> onSwitchChanged,
  }) {
    return Column(
      children: [
        _buildTextFieldContainer(
          hintText: hintText,
          iconPath: iconPath,
          iconSize: iconSize,
          isObscureText: isObscureText,
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: onLeftButtonPressed,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),

                  ),
                ),
                _buildSwitchButton(switchValue, onSwitchChanged),
                Text(
                  leftButtonText,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Almarai',
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: onRightButtonPressed,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  rightButtonText,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontFamily: 'Almarai',
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }


  Widget _buildSwitchButton(bool value, ValueChanged<bool> onChanged) {
    return Container(
      width: 40,
      height: 17.22,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.black),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            left: value ? 17.5 : 0,
            child: Container(
              width: 14,
              height: 13.94,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              onChanged(!value);
            },
            behavior: HitTestBehavior.translucent,
          ),
        ],
      ),
    );
  }

}