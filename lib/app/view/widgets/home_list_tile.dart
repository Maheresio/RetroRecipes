import 'package:flutter/material.dart';

class HomeListTile extends StatelessWidget {
  const HomeListTile({
    super.key,
    this.ownerName,
    this.ownerRole,
    this.ownerImageUrl,
  });
  final String? ownerName;
  final String? ownerRole;
  final String? ownerImageUrl;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        ownerName ?? "Hona Ci Minh",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 14,
        ),
      ),
      subtitle: Text(
        ownerRole ?? "Expert Chef",
        style: TextStyle(color: Colors.black45, fontSize: 12),
      ),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          ownerImageUrl ??
              "https://media.istockphoto.com/id/1213660289/photo/young-beautiful-chinese-chef-woman-wearing-cooker-uniform-and-hat-holding-tray-with-dome-with.jpg?s=612x612&w=0&k=20&c=Acr3SpWXvGhElDWXTo2Z7hfc7jpUQrXJuOs9SzuZEHA=",
        ),
      ),
    );
  }
}
