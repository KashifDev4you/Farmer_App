import 'package:flutter/material.dart';

class Checkoutscreen extends StatelessWidget {
  const Checkoutscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              "assets/images/banana.png",
                            ),
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          "Banana",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "£100",
                            style: TextStyle(color: Colors.green, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "  Add more itoms",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.green,
                            ),
                            //child: Padding(
                            //padding: const EdgeInsets.all(0.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 13),
                                  child: Text(
                                    "- 1 +",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 4,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            //),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "  Apply Coupon",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Invoice",
                    style: TextStyle(
                      //color: Colors.green,
                      //fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),

                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        children: [
                          Text("Original Price"),
                          Spacer(),
                          Text("£100"),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        children: [
                          Text("Delivery Price"),
                          Spacer(),
                          Text("+ 40", style: TextStyle(color: Colors.red)),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        children: [
                          Text("GST "),
                          Spacer(),
                          Text("+ 18", style: TextStyle(color: Colors.red)),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        children: [Text("Discount"), Spacer(), Text("+ 20")],
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        children: [
                          Text(
                            "Total Price",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "£138",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Shopping Details",
                    style: TextStyle(
                      //color: Colors.green,
                      //fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                  TextButton(onPressed: () {}, child: Text("Edits")),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("  Michel Miller", style: TextStyle(fontSize: 20)),
                        Spacer(),
                        Text("Home", style: TextStyle(color: Colors.green)),
                        Icon(Icons.keyboard_arrow_down, color: Colors.green),
                      ],
                    ),
                    //SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "House 24, Street 5, Gulshan-e-Iqbal, Karachi\npakistan.",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "  Add delivery instructions",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 30,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: Text(
                    "Proceed to checkout",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
