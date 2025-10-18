import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String position;
  final String email;
  final String phoneNumber;
  final String imageUrl;

  ProfileCard({
    required this.name,
    required this.position,
    required this.email,
    required this.phoneNumber,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      margin: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Profile Image
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(imageUrl),
            ),
            SizedBox(height: 16),
            // Name and Position
            Text(
              name,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              position,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 16),
            Divider(),
            SizedBox(height: 10),
            // Email
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email, color: Colors.blue),
                SizedBox(width: 8),
                Text(
                  email,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 8),
            // Phone number
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone, color: Colors.green),
                SizedBox(width: 8),
                Text(
                  phoneNumber,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        
        body: Center(
          child: ProfileCard(
            name: 'natchanon tiangtam',
            position: 'Programmer',
            email: 'tiangtam_n@silpakorn.edu',
            phoneNumber: '0123456789',
            imageUrl:
                'https://scontent.fbkk7-3.fna.fbcdn.net/v/t1.6435-1/129724092_868685853942110_6058894233993946873_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=101&ccb=1-7&_nc_sid=e99d92&_nc_eui2=AeHBi-SopKWgcptrY--qco_Jb1ct7aOoC2xvVy3to6gLbJtU2Am1KeVjvXn4bLEf85H9MkQoAgYIlyfQoZHwbP4m&_nc_ohc=j9Ma08TcdmYQ7kNvwGQJoDA&_nc_oc=AdmEnNIySjYv5u3QocLqTjcoB6-z0Kvt6jGh8_sHAAk6wgO8n7YTf8gBuj1BgxA_KLQ&_nc_zt=24&_nc_ht=scontent.fbkk7-3.fna&_nc_gid=TYmyYnSAcCHi_2F-5yfMDg&oh=00_AfcmfZQwfOhXrUnu0n-wx39Ime48pXfVqiBKiAWe83SX2A&oe=691A6DB0',
          ),
        ),
      ),
    );
  }
}
