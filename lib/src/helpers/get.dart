class Get {
  Get._();
  static Get i = Get._();

  Map<String, dynamic> _data = Map();

  void put<T>(dynamic dependency) {
    final String key = T.runtimeType.toString();
    _data[key] = dependency;
  }

  T find<T>() {
    final String key = T.runtimeType.toString();
    return _data[key];
  }
}
