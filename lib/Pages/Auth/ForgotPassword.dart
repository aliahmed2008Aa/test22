import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampark/Controller/AuthController.dart';
import 'package:sampark/Widget/PrimaryButton.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    AuthController authController = Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(
        title: Text("هل نسيت كلمة السر"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "أدخل معرف البريد الإلكتروني الخاص بك وسوف نرسل لك رابط إعادة تعيين كلمة المرور على البريد الإلكتروني",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: email,
              decoration: InputDecoration(
                hintText: "أدخل معرف البريد الإلكتروني",
                fillColor: Theme.of(context).colorScheme.primaryContainer,
              ),
            ),
            SizedBox(height: 20),
            PrimaryButton(
              btnName: "إعادة الضبط الآن",
              icon: Icons.password_outlined,
              ontap: () {
                authController.resetPassword(email.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}
