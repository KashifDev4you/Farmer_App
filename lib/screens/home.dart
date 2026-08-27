import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: _buildBottomNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              const SizedBox(height: 20),
              _buildSearchBar(),
              const SizedBox(height: 20),
              _buildBannerSlider(),
              const SizedBox(height: 16),
              _buildSectionHeader(title: "Categories", onSeeAllPressed: () {}),
              const SizedBox(height: 8),
              _buildCategoryList(),
              const SizedBox(height: 16),
              _buildSectionHeader(title: "Explore products", onSeeAllPressed: () {}),
              const SizedBox(height: 12),
              _buildProductGrid(),
            ],
          ),
        ),
      ),
    );
  }

  // Header Bar (Title, Points Badge & Notification Icon)
  Widget _buildHeader() {
    return Row(
      children: [
        const Text(
          "Formers",
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xFFC7EAFA),
          ),
          child: Row(
            children: const [
              Icon(Icons.currency_exchange, color: Colors.green, size: 20),
              SizedBox(width: 6),
              Text(
                "50",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        const SizedBox(width: 10),
        Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xFFC7EAFA),
          ),
          child: const Icon(Icons.notifications_none, size: 24, color: Colors.black80),
        ),
      ],
    );
  }

  // Search Input Field
  Widget _buildSearchBar() {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search, color: Colors.grey),
              hintText: "Search..",
              contentPadding: const EdgeInsets.symmetric(vertical: 12),
              fillColor: Colors.grey.shade100,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFC7EAFA),
            borderRadius: BorderRadius.circular(50),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.tune, color: Colors.black),
          ),
        ),
      ],
    );
  }

  // Banner Carousel Container
  Widget _buildBannerSlider() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: SizedBox(
        height: 150,
        width: double.infinity,
        child: PageView(
          children: [
            Image.asset("assets/images/Frame88.png", fit: BoxFit.cover),
            Image.asset("assets/images/Frame89.png", fit: BoxFit.cover),
            Image.asset("assets/images/Frame88.png", fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }

  // Reusable Section Header with Title & Action Button
  Widget _buildSectionHeader({required String title, required VoidCallback onSeeAllPressed}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        GestureDetector(
          onTap: onSeeAllPressed,
          child: const Text(
            "see all",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }

  // Horizontal Category Chips
  Widget _buildCategoryList() {
    final categories = [
      {"name": "Organic", "image": "assets/images/organic.png"},
      {"name": "Fruits", "image": "assets/images/banana.png"},
      {"name": "Organic", "image": "assets/images/organic.png"},
      {"name": "Seeds", "image": "assets/images/seed.png"},
    ];

    return SizedBox(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final category = categories[index];
          return Container(
            padding: const EdgeInsets.only(right: 16, left: 4),
            decoration: BoxDecoration(
              color: const Color(0xFFC7EAFA),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(category["image"]!),
                ),
                const SizedBox(width: 8),
                Text(
                  category["name"]!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  // Dynamic Product Grid
  Widget _buildProductGrid() {
    final products = [
      {"name": "Tulsi", "price": "100", "rating": "4.8", "reviews": "(400)", "image": "assets/images/image2.png"},
      {"name": "Berry", "price": "100", "rating": "4.8", "reviews": "(400)", "image": "assets/images/image4.png"},
      {"name": "Tulsi", "price": "100", "rating": "4.8", "reviews": "(400)", "image": "assets/images/image3.png"},
      {"name": "Berry", "price": "100", "rating": "4.8", "reviews": "(400)", "image": "assets/images/image4.png"},
    ];

    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 16,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        final product = products[index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  product["image"]!,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              product["name"]!,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                const Icon(Icons.currency_pound, size: 16),
                Text(
                  product["price"]!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const Icon(Icons.star, color: Colors.yellow, size: 16),
                Text(" ${product['rating']} "),
                Text(
                  product["reviews"]!,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  // Fixed Bottom Navigation Bar
  Widget _buildBottomNavBar() {
    return BottomNavigationBar(
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.explore_outlined), label: "Explore"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: "Cart"),
        BottomNavigationBarItem(icon: Icon(Icons.perm_identity_outlined), label: "Profile"),
      ],
    );
  }
}
