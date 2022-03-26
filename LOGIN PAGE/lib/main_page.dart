

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  
final User user;
const MainPage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Homepage'),),
      body: const Center(
        child: Text('user.uid'),
      ),
      
    );
  }
}