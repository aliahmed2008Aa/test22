import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sampark/Config/Images.dart';
import 'package:sampark/Model/GroupModel.dart';
import 'package:sampark/Pages/Home/Widget/ChatTile.dart';

import '../UserProfile/Widgets/UserInfo.dart';
import 'GroupMemberInfo.dart';

class GroupInfo extends StatelessWidget {
  final GroupModel groupModel;
  const GroupInfo({super.key, required this.groupModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(groupModel.name!),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            GroupMemberInfo(
              groupId: groupModel.id!,
              profileImage: groupModel.profileUrl == ""
                  ? AssetsImage.defaultProfileUrl
                  : groupModel.profileUrl!,
              userName: groupModel.name!,
              userEmail: groupModel.description ?? "لا يوجد وصف متاح",
            ),
            SizedBox(height: 20),
            Text(
              "أعضاء",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            SizedBox(height: 10),
            Column(
              children: groupModel.members!
                  .map(
                    (member) => ChatTile(
                      imageUrl:
                          member.profileImage ?? AssetsImage.defaultProfileUrl,
                      name: member.name!,
                      lastChat: member.email!,
                      lastTime: member.role == "مسؤل" ? "مسؤل" : "مستخدم",
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
