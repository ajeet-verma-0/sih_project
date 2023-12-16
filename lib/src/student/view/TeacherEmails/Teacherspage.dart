


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rural_education/src/student/models/user.dart';

import '../../../public/utils/constant.dart';
import '../../resources/chat/chat_api.dart';
import 'Teachers.body.dart';
import 'Teachersheader.dart';

class TeachersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
           
          },
          child: Icon(Icons.search),
          focusColor: primaryColor,
          hoverColor: primaryColor,
          splashColor: primaryColor,
          backgroundColor: primaryColor,
        ),
        backgroundColor: primaryColor,
        body: SafeArea(
          child: StreamBuilder<List<User>>(
            stream: FirebaseApi.getUsers(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return Center(child: CircularProgressIndicator());
                default:
                  if (snapshot.hasError) {
                    print(snapshot.error);
                    return buildText('Something Went Wrong Try later');
                  } else {
                    final users = snapshot.data!;

                    if (users.isEmpty) {
                      return buildText('No Users Found');
                    } else
                      return Column(
                        children: [
                          TeachersHeaderWidget(users: users),
                          TeachersBodyWidget(users: users)
                        ],
                      );
                  }
              }
            },
          ),
        ),
      );

  Widget buildText(String text) => Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      );
}
