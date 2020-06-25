import 'dropdown_button.dart';
import 'package:flutter/material.dart';
import 'package:custom_switch/custom_switch.dart';

class SelectedDividens extends StatefulWidget {

  @override
  _selected createState() => _selected();
}

class _selected extends State<SelectedDividens> {
  double height;
  double width;
  bool isSwitched = false;
  String dropdownValue="one";

  Bank data=Bank("YES Bank LTD (YES B)","5,789.20","+4.00(5.28%)");
  Dividens divdata=Dividens("0.77","2020-02-07","1.03%","NA","3M","2020-02-07");

  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    // Taking height and width using media Query to make App Resposive
    height = MediaQuery
        .of(context)
        .size
        .height;
    width = MediaQuery
        .of(context)
        .size
        .width;


    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.more_vert,
                  color: Colors.black,size: 24,), onPressed: null),
                  Container(
                    padding: const EdgeInsets.all(18.0),
                    width: 135/375*width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("BSE",
                        style: TextStyle(
                          color: Color(0XFF0C0E25),
                          fontSize: 10,
                          fontWeight: FontWeight.w600

                        ),),
                        CustomSwitch(
                          value: isSwitched,
                          onChanged: (value){
                            setState(() {
                              isSwitched=value;
                              print(isSwitched);
                            });
                          },
                          //activeTrackColor: Colors.lightGreenAccent,
                          activeColor: Colors.green,

                        ),
                        Text("NSE",
                          style: TextStyle(
                              color: Color(0XFFA3A3A3),
                              fontSize: 10,
                              fontWeight: FontWeight.w600

                          ),),
                      ],
                    ),
                  )
                ],
              ),
              Bankdetail(),                          //Bank Detail Container
              DropdownButtonHideUnderline(
              child:drop_down(),                     // Drop Down Button Using Seperate Class
              ),
              Dividens_card_Container()               // Data card
            ],
          ),
        ),
      ),
    );
  }
  Container Bankdetail(){
    return Container(
      padding: EdgeInsets.fromLTRB(20/375*width, 22/812*height, 0,0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(

                alignment: Alignment.topLeft,
                child: Text("${data.Name}",
                style: TextStyle(
                  color: Color(0XFFA3A3A3),
                  fontWeight: FontWeight.w500,
                  fontSize: 18
                ),),
              ),
              Container(
                padding: EdgeInsets.only(top: 8/812*height),
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text("\$${data.Amount}",
                      style: TextStyle(
                        color: Color(0XFF0C0E25),
                        fontSize: 26,
                        fontWeight: FontWeight.w600

                      ),),
                    ),
                    Container(
                      height: 28/812*height,
                      alignment: Alignment.bottomCenter,
                      padding: EdgeInsets.only(left: 13/375*width),
                      child:Row(
                        children: <Widget>[
                          Icon(Icons.keyboard_arrow_up,size: 17,color: Color(0XFF3FAE49),),
                          Text("${data.increment}",
                          style: TextStyle(
                            color: Color(0XFF3FAE49),
                            fontSize: 12,
                            fontWeight: FontWeight.w600
                          ),)
                        ],
                      )
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
              padding: EdgeInsets.only(right: 14/375*width),
              child: InkWell(
                onTap: (){},//Add on tap on star button
                  child: Image.asset("assets/star.png")),
            )
        ],
        
      ),
    );
  }
  Widget Dividens_card_Container(){
    return ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
    child:
    Container(

      height: 154/812*height,
      width: 354/390*width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
          boxShadow: [
      BoxShadow(
        color: Color.fromARGB(16, 0, 0, 0),
        offset: Offset(2.0, 10.0), //(x,y)
        blurRadius:6.0,
      ),]),
      child: Card(
        elevation: 0,
        child: Container(
          padding: EdgeInsets.fromLTRB(10/390*width, 20/812*height, 8/390*width, 19/812*height),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(

                child: Text("Dividens-Yields",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFF0C0E25)
                ),),
              ),
              Container(
                height: 76/812*height,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Divident Rate",
                          style: TextStyle(
                              color: Color(0XFF0C0E25).withOpacity(0.25),
                              fontWeight: FontWeight.w600,
                              fontSize: 11
                          ),),
                        Text("Announced date",
                          style: TextStyle(
                              color: Color(0XFF0C0E25).withOpacity(0.25),
                              fontWeight: FontWeight.w600,
                              fontSize: 11
                          ),),
                        Text("Yeild",
                          style: TextStyle(
                              color: Color(0XFF0C0E25).withOpacity(0.25),
                              fontWeight: FontWeight.w600,
                              fontSize: 11
                          ),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(divdata.rate,
                          style: TextStyle(
                              color: Color(0XFF0C0E25),
                              fontWeight: FontWeight.w600,
                              fontSize: 11
                          ),),
                        Text( divdata.date,
                          style: TextStyle(
                              color: Color(0XFF0C0E25),
                              fontWeight: FontWeight.w600,
                              fontSize: 11
                          ),),
                        Text(divdata.yield,
                          style: TextStyle(
                              color: Color(0XFF0C0E25),
                              fontWeight: FontWeight.w600,
                              fontSize: 11
                          ),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: <Widget>[
                        Text("Divident Period",
                          style: TextStyle(
                              color: Color(0XFF0C0E25).withOpacity(0.25),
                              fontWeight: FontWeight.w600,
                              fontSize: 11
                          ),),
                        Text("Period short",
                          style: TextStyle(
                              color: Color(0XFF0C0E25).withOpacity(0.25),
                              fontWeight: FontWeight.w600,
                              fontSize: 11
                          ),),
                        Text("Payment date",
                          style: TextStyle(
                              color: Color(0XFF0C0E25).withOpacity(0.25),
                              fontWeight: FontWeight.w600,
                              fontSize: 11
                          ),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(divdata.period,
                          style: TextStyle(
                              color: Color(0XFF0C0E25),
                              fontWeight: FontWeight.w600,
                              fontSize: 11
                          ),),
                        Text( divdata.short,
                          style: TextStyle(
                              color: Color(0XFF0C0E25),
                              fontWeight: FontWeight.w600,
                              fontSize: 11
                          ),),
                        Text(divdata.paymentDate,
                          style: TextStyle(
                              color: Color(0XFF0C0E25),
                              fontWeight: FontWeight.w600,
                              fontSize: 11
                          ),)
                      ],
                    ),
                  ],
                ),
              ),

            ],
              )

        ),

      ),
    )
    );
  }
  Container drop_down(){
    return Container(
      padding: EdgeInsets.fromLTRB(0, 17/812*height, 18/390*width, 17/812*height),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Dropdown(),
        ],
      )
    );
  }
}
class Bank{
  String Name;
  String Amount;
  String increment;

  Bank(this.Name,this.Amount,this.increment);
}
class Dividens{
  String rate;
  String date;
  String yield;
  String period;
  String short;
  String paymentDate;

  Dividens(this.rate,this.date,this.yield,this.period,this.short,this.paymentDate);

}
