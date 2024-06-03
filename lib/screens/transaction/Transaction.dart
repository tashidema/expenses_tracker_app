import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  const Transaction({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
     
      title: Text('titles'),
      // subtitle: Text(movie.year.toString(), style: TextStyle(
      subtitle: Text(
        'subtitle',
        style: const TextStyle(),
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
        "https://cdn.pixabay.com/photo/2023/06/25/11/12/orange-flowers-8087066_1280.jpg",
          height: 80,
          width: 80,
          fit: BoxFit.cover,
        ),
      ),
      trailing: Text(
       'tail', 
       // style: const TextStyle(fontSize: 24),
      ),
    );
  }
}
 