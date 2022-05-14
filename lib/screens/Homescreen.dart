import "package:flutter/material.dart";
import "package:animations/animations.dart";
import "../data.dart";
import "package:animations/animations.dart";
import 'viewproduct.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({ Key? key }) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  double _gridviewwidth = 150;
  double _gridviewheight = 214;

  

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          
          child: GestureDetector(
          child: Image.asset('assets/images/Menu.png')
        )),
        backgroundColor: Color.fromRGBO(36, 35, 41, 1),
        elevation: 0,
        actions: [
          GestureDetector(
            child: Image.asset("assets/images/Notification.png")
          )
        ],
        

      ),
      
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Color.fromRGBO(36, 35, 41, 1),
            image: DecorationImage(
              fit: BoxFit.cover,
              scale: 1.0,
              alignment: Alignment.topCenter,

              
              image: AssetImage("assets/images/smoke.png")
            )
            
            
          ),
          child: Column(
            children: [
              // Welcome
              Container(
                
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 40, left: 20),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Every Bite a", style: TextStyle(fontFamily: "Gothem", fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white))
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 5),
                      child: Text("Better Buger", style: TextStyle(fontFamily: "Gothem", fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white,))
                    )

                  ]
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 50, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Row(
                        children: List.generate(3, (index) {
                          return Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(listview[index], style: TextStyle(fontFamily: "Gothem", fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white))
                          );
                        }),
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: GestureDetector(
                        child: Image.asset("assets/images/filter.png")
                      )
                    )
                  ]
                )
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  scrollDirection: Axis.vertical,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  clipBehavior: Clip.none,
                  childAspectRatio: (_gridviewwidth / _gridviewheight),
                  children: List.generate(burgers.length, (index) {
                    return OpenContainer(
                      closedColor: Colors.transparent,
                      openBuilder: (context, action) => ViewProduct(burgers[index], burgernames[index], burgerprice[index]),
                      closedBuilder: (context, action) => Container(
                      width: 150,
                      height: 214,
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset(burgers[index])

                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(burgernames[index], style: TextStyle(fontFamily: "Gothem", fontSize: 14, fontWeight: FontWeight.w700, color: Colors.white,))
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(top: 5),
                            child: Text(burgerdescription[index], style: TextStyle(fontFamily: "Gothem", fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white))
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(top: 50),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(burgerprice[index], style: TextStyle(fontFamily: "Gothem", fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white,))
                                ),
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Center(
                                    child: Image.asset("assets/images/plus.png")
                                  )
                                )
                              ]
                            )
                          )


                        ]
                      )
                      
                      

                    ));
                  })
                  
                  
                )
              )

            ]
          )

        )
      )
    );
  }
}