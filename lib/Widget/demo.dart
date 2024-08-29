
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampark/Controller/ContactController.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    ContactController contactController = Get.put(ContactController());
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                contactController.getUserList();
              },
              child: Text("الحصول على قائمة المستخدمين"),
            ),
         
          ],
        ),
      ),
    );
  }
}
