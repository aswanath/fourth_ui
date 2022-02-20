import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  Color? color;
  double? size;
  TextAlign? align;
  FontWeight? weight;
  double? heightcustom;
  double? space;
  CustomText({Key? key,this.space,required this.text,this.heightcustom, this.color,this.size,this.align,this.weight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,textAlign:align,style: TextStyle(height:heightcustom,color: color??Colors.black,fontSize: size,fontWeight: weight,letterSpacing: space),);
  }
}


class Dukaancard extends StatelessWidget {
  double shrinkOffset;
   Dukaancard({Key? key,required this.shrinkOffset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(top:150/2.6-shrinkOffset,
        left:MediaQuery.of(context).size.width/21,
        child:
    Opacity(
      opacity: (1- shrinkOffset / 150),
      child: SizedBox(width: 355,
        height: 180,child:
      DecoratedBox(decoration:
      BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.grey)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 12,),
            ClipRRect(
              child: Image.asset('lib/images/logo.png',width: 170,height: 45,fit: BoxFit.fill,),
            ),
            SizedBox(height: 15,),
            CustomText(text: 'Get Dukaan Premium for just \n ₹4,999/year',align: TextAlign.center,size: 21,weight: FontWeight.w500,),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: CustomText(text: 'All the advanced features for scaling your business',align: TextAlign.center,color: Colors.grey[800],),
            )
          ],
        ),
      ),),
    ));
  }
}

class Features extends StatelessWidget {
  IconData icon;
  String header;
  String subhead;
  Features({Key? key,required this.icon,required this.header,required this.subhead}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 50,height: 50,
            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white,border: Border.all(color: Colors.blue.shade700)),
            child: Icon(icon,color: Colors.blue[700],size: 30,),
          ),
          SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 3,),
              CustomText(text: header,weight: FontWeight.w500,),
              SizedBox(height: 3,),
              CustomText(text: subhead,color: Colors.grey[800],)
            ],
          ),
        ],
      ),
    );
  }
}

class FAQ extends StatelessWidget {
  String text;
  FAQ({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // CustomText(text: text,size: 14,weight: FontWeight.w400),
            Text(text,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,letterSpacing: .5)),
            Icon(Icons.add),
          ],
        ),
        SizedBox(height: 10,),
        SizedBox(width: MediaQuery.of(context).size.width,child: DecoratedBox(decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1,color: Colors.grey),
        )),),),
        SizedBox(height: 10,),
      ],
    );
  }
}

class GetTouch extends StatelessWidget {
  IconData icon;
  String text;
  GetTouch({Key? key,required this.text,required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 70,
      width: 165,
      child: DecoratedBox(decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,color: Colors.grey[800],),
            SizedBox(height: 5,),
            CustomText(text: text,color: Colors.grey[800],)
          ],
        ),
      ),
    );
  }
}

class ExpandedListCustom extends StatelessWidget {
  void Function(bool) expansionchange;
  Widget trailing;
  String heading;
  String description;
   ExpandedListCustom({Key? key,required this.expansionchange,required this.trailing,required this.description,required this.heading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          childrenPadding: EdgeInsets.fromLTRB(0, 0, 0, 6),
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          expandedAlignment: Alignment.centerLeft,
          collapsedTextColor: Colors.red,
          textColor: Colors.red,
          onExpansionChanged: expansionchange,
          title: CustomText(text: heading,size: 15,),
          children: [
            CustomText(text: description,color: Colors.grey[700],heightcustom: 1.3,)
          ],
          trailing: trailing,
        ),
        SizedBox(width: MediaQuery.of(context).size.width,child: DecoratedBox(decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1,color: Colors.grey),
        )),),),
      ],
    );
  }
}
