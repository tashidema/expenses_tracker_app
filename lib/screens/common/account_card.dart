import 'dart:ui';

import 'package:expenses/base/style/text_styles.dart';
import 'package:expenses/data/model/account/account_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AccountCard extends StatelessWidget {
 
      AccountModel account;

      AccountCard(this.account);

  @override
  Widget build(BuildContext context) {
    return Container(
                        height:180,
                        width:300,
                        //color:Colors.blueAccent,
                        margin: EdgeInsets.only(left:16),
                        padding:EdgeInsets.all(8),
                        decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                 border: Border.all(
                                  color: Colors.black, // Border color
                                  width: 2.0, // Border width
                                ),    
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.black.withOpacity(1),
                        //     spreadRadius: 2,
                        //     blurRadius: 6,
                        //     offset: Offset(4, 4), // changes position of shadow
                        //   ),
                        // ],
                        ),

                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                height:50,    
                                padding: EdgeInsets.all(6),                          
                                color:Colors.white,
                                margin: EdgeInsets.only(bottom: 4),                                                                 
                                child:Row(                                  
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                  Text(account.title,
                                  style:TypoStyles().kSectionHeader),

                                  CircleAvatar(
                                    backgroundImage:
                                    NetworkImage(account.img)                                      
                                  )
                    
                                  ],)
                               
                              ),
                            ),
                            Container(
                             // height:50,                              
                              //color:Colors.white,
                              margin: EdgeInsets.only(bottom: 4),
                               child:Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Nu.${account.openingBalance}',
                                  style:TypoStyles().kPageHeader),
                                  
                                  Text('Balance',
                                  style:TypoStyles().kSectionHeader),
                                  ],
                                  )
                            ),
                            
                            ],
                          )
                        

                      );
  }
}