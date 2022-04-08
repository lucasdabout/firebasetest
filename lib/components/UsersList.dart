import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:firebasetest/models/User.dart';
import 'package:flutter/cupertino.dart';


class UsersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FirestoreBuilder<UserQuerySnapshot>(
        ref: usersRef,
        builder: (context, AsyncSnapshot<UserQuerySnapshot> snapshot, Widget? child) {
          if (snapshot.hasError) return Text('Something went wrong!');
          if (!snapshot.hasData) return Text('Loading users...');

          // Access the QuerySnapshot
          UserQuerySnapshot querySnapshot = snapshot.requireData;

          return ListView.builder(
            shrinkWrap: true,
            itemCount: querySnapshot.docs.length,
            itemBuilder: (context, index) {
              // Access the User instance
              User user = querySnapshot.docs[index].data;

              return Text('User name: ${user.name}, age ${user.age}');
            },
          );
        }
    );
  }
}