import 'package:flutter/material.dart';
class AccountInfo extends StatefulWidget {

  const AccountInfo({super.key});

  @override
  State<AccountInfo> createState() => _AccountInfoState();
}

class _AccountInfoState extends State<AccountInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0x900B0B).withOpacity(0.8),
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.account_circle, size: 40, color: Colors.white),
                SizedBox(width: 10),
                Text('Account Info', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    // Handle edit button tap
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Change button background color here
                    onPrimary: Color(0x900B0B).withOpacity(0.8), // Change text color here
                  ),
                  child: Text('Edit'),
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildInfoRow(Icons.person, 'John Doe'),
                _buildDivider(),
                _buildInfoRow(Icons.email, 'john.doe@example.com'),
                _buildDivider(),
                _buildInfoRow(Icons.phone, '+1 234 567 890'),
                _buildDivider(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: Colors.white, size: 20),
            SizedBox(width: 10),
            Text(text, style: TextStyle(color: Colors.white, fontSize: 20)),
          ],
        ),
        SizedBox(height: 10),
      ],
    );
  }

  Widget _buildDivider() {
    return Divider(color: Colors.white);
  }
}

