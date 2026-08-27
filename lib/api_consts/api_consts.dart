class ApiConstants {
  ApiConstants._();

  static const String baseUrl = "https://dummyjson.com";

  static const int connectTimeoutSeconds = 20;

  // Auth endpoints


//   user Model
  static const String allUsers = "users";
  static const String newUser = "users/add";
  static const String userPara = "users/search?q={{firstName}}";
  static const String userFilter = "users/filter?key=hair.color&value=Black";

//   Product model
  static const String allPorduct = "products";
  static const String productCategories = 'products/categories';
  static const String productFromCategores = "products/category/furniture";
  static const String newProduct = "products/add";
  static const String updateProduct = "products/1";
  static const String deleteProduct = "products/1";

//   static const String refreshToken = "/refresh-token";

  // Example authenticated endpoint (for future modules)
  static const String userProfile = "/users";
}
