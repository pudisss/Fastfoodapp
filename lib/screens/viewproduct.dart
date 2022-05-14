import "package:flutter/material.dart";


class ViewProduct extends StatefulWidget {
  final filepath;
  final title;
  final String price;
  ViewProduct(this.filepath, this.title, this.price);

  @override
  State<ViewProduct> createState() => _ViewProductState(this.filepath, this.title, this.price);
}

class _ViewProductState extends State<ViewProduct> {
  final filepath;
  final title;
  final String price;

  int amount = 1;
  _ViewProductState(this.filepath, this.title, this.price);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset("assets/images/back.png")
        ),
        actions: [
          GestureDetector(
            child: Image.asset("assets/images/3dots.png")
          )
        ],
        backgroundColor: Color.fromRGBO(36, 35, 41, 1),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color.fromRGBO(36, 35, 41, 1),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 365.34,
                child: Image.asset(filepath)
              ),
              // Text section
              Container(
                margin: EdgeInsets.only(left: 20),
                
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(title, style: TextStyle(fontFamily: "Gothem", fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white))
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(right: 30),
                      width: 315,
                      height: 110,
                      child: Text("Burger with a huge pork cutlet, pickled cucumbers, blue onions, grilled vegetables (green beans, bell peppers, carrots), oyster dressing, black cuttlefish ink bun.", style: TextStyle(fontFamily: "Gothem", fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white))
                    )
                  ]
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 25),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 134,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Color.fromRGBO(255, 255, 255, 0.05)

                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                amount++;
                              });
                            },
                            child: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Color.fromRGBO(25, 25, 29, 1),
                            ),
                            child: Center(
                              child: Image.asset("assets/images/Plusproduct.png")
                            )

                          )),
                          Container(
                            child: Text(amount.toString(), style: TextStyle(fontFamily: "Gothem", fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white))
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                amount--;
                              });
                            },
                            child: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Color.fromRGBO(25, 25, 29, 1),

                            ),
                            child: Center(
                              child: Image.asset('assets/images/minus.png')
                            )
                          ))
                        ]
                      )
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 25),
                      child: Column(
                        children: [
                          Container(
                            child: Text("Total Price", style: TextStyle(fontFamily: "Gothem", fontSize: 10, color: Colors.white, fontWeight: FontWeight.w400))
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Text((double.parse(price.substring(1, price.length)) * amount).toString(), style: TextStyle(fontFamily: "Gothem", fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white,))
                          ),
                        ]
                      )
                    )

                  ]
                )
              ),
              
              Container(
                margin: EdgeInsets.only(top: 50),
               
                child: GestureDetector(
                  child: Container(
                    width: 315,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(225, 210, 74, 1),
                          Color.fromRGBO(198, 146, 35, 1),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Image.asset('assets/images/Basket.png')
                          ),

                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text("ADD TO CART", style: TextStyle(fontFamily: "Gothem", fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white))
                          )
                        ]
                      )
                    )
                  )
                )
              )
            ]
          )
        )
      )

    );
}}