
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({ super.key });

  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
            accountName: const Text('Account Name'),
            accountEmail: const Text('accountEmail@email.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/images/GymAppIcon.png'),
              ),
            ),
          );
  }
}