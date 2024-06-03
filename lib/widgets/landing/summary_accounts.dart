import 'package:expenses/base/style/text_styles.dart';
import 'package:expenses/data/model/account/account_model.dart';
import 'package:expenses/data/model/account/account_repo.dart';
import 'package:expenses/screens/common/account_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SummaryAccount extends StatefulWidget {
  const SummaryAccount({super.key});

  @override
  State<SummaryAccount> createState() => _SummaryAccountState();
}

class _SummaryAccountState extends State<SummaryAccount> {
 
  List<AccountModel> accounts = [];  
  
  @override
  void initState(){
  loadData();
  }

Future<void> loadData() async{
  List<AccountModel> res =await loadAccountData();  
  setState(() {
    accounts = res;
  });
} 
  
  
  @override
  Widget build(BuildContext context) {
    return  Container(
              height: 300,
            //  color:Colors.orange,
              margin:EdgeInsets.only(bottom: 16),
              padding: EdgeInsets.symmetric(vertical: 16),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Current Balances',
                    style:TypoStyles().kSectionHeader,),
                  ),
                
                Container(
                  color:Colors.white,
                  height:200,
                 // padding:,
                  margin: EdgeInsets.only(bottom:8),
                  child:SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children :accounts.map((val)=>AccountCard(val),
                      ).toList(),
                      
                      ),
                    )
                )
              ],)
            );
  }
}