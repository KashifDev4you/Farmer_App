import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Formers",
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Spacer(),

                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 199, 234, 250),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.currency_exchange,
                                  color: Colors.green,
                                ),
                                Spacer(),
                                Text("50", style: TextStyle(fontSize: 18)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color.fromARGB(255, 199, 234, 250),
                          ),
                          child: Icon(Icons.notification_add, size: 30),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search..",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 199, 234, 250),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.tune),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    height: 150,
                    width: double.infinity,
                    child: PageView(
                      children: [
                        Image.asset(
                          "assets/images/Frame88.png",
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          "assets/images/Frame89.png",
                          fit: BoxFit.cover,
                        ),
                        Image.asset(
                          "assets/images/Frame88.png",
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "see all",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 199, 234, 250),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                "assets/images/organic.png",
                              ),
                            ),
                            SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Organic",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 199, 234, 250),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                "assets/images/banana.png",
                              ),
                            ),
                            SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Frouts",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 199, 234, 250),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                "assets/images/organic.png",
                              ),
                            ),
                            SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Organic",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 199, 234, 250),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage(
                                "assets/images/seed.png",
                              ),
                            ),
                            SizedBox(width: 10),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Seeds",
                                style: TextStyle(fontWeight: FontWeight.bold),
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
                      "Explore products",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Spacer(),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "see all",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "assets/images/image2.png",
                              width: double.infinity,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Tulsi",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.currency_pound, size: 18),
                              Text(
                                "100",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              SizedBox(width: 10),
                              Icon(Icons.star, color: Colors.yellow, size: 18),
                              Text("4.8"),
                              SizedBox(width: 5),
                              Text("(400)"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "assets/images/image4.png",
                              width: double.infinity,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Berry",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.currency_pound, size: 18),
                              Text(
                                "100",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              SizedBox(width: 10),
                              Icon(Icons.star, color: Colors.yellow, size: 18),
                              Text("4.8"),
                              SizedBox(width: 5),
                              Text("(400)"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "assets/images/image3.png",
                              width: double.infinity,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Tulsi",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.currency_pound, size: 18),
                              Text(
                                "100",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              SizedBox(width: 10),
                              Icon(Icons.star, color: Colors.yellow, size: 18),
                              Text("4.8"),
                              SizedBox(width: 5),
                              Text("(400)"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "assets/images/image4.png",
                              width: double.infinity,
                              height: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Berry",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.currency_pound, size: 18),
                              Text(
                                "100",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              SizedBox(width: 10),
                              Icon(Icons.star, color: Colors.yellow, size: 18),
                              Text("4.8"),
                              SizedBox(width: 5),
                              Text("(400)"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Center(
                  child: Container(
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.home,
                                  color: Colors.green,
                                  size: 30,
                                ),
                              ),
                              Text(
                                "Home",
                                style: TextStyle(color: Colors.green),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.explore_outlined,
                                //color: Colors.black,
                                size: 30,
                              ),
                            ),
                            Text("Explore"),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.shopping_bag_outlined,
                                //color: Colors.green,
                                size: 30,
                              ),
                            ),
                            Text("Cart"),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.perm_identity_outlined,
                                  //color: Colors.green,
                                  size: 30,
                                ),
                              ),
                              Text("Profile"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
