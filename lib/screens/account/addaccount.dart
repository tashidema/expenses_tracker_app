import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class AddAccount extends StatefulWidget {
  const AddAccount({super.key});

  @override
  State<AddAccount> createState() => _AddAccountState();
}

class _AddAccountState extends State<AddAccount> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,      
      children: [

        Container(         
          child: Column(
            children: [
              Center(
                child:ClipOval(
                child: Image.network('https://cdn.pixabay.com/photo/2023/06/25/11/12/orange-flowers-8087066_1280.jpg',
                width:150,height:150,
                fit:BoxFit.cover)
                )
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Account Name'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Type'),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Opening Balance'),
                  ))
            ],
          ),
        ),
        Container(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            padding: EdgeInsets.only(top:150),
            margin: EdgeInsets.only(bottom: 10),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                'Confirm',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                // Background color
              ),
            ),
          ),
        )
      ],
    ));
  }
}
