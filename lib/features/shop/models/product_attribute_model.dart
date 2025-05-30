class ProductAttributeModel {
  String? name;
  final List<String>? values;

  ProductAttributeModel({
    this.name,
    this.values,
  });

  //json format
  toJson() {
    return {
      'Name': name,
      'Values': values,
    };
  }

  //map json data to documnet snapshot from firebase to usermodel
  factory ProductAttributeModel.fromJson(Map<String, dynamic> document) {
    final data = document;
    if (data.isEmpty) {
      return ProductAttributeModel();
    }
    return ProductAttributeModel(
      name: data.containsKey('Name') ? data['Name'] : '',
      values: List<String>.from(data['Values']),
    );
  }
}

# touched on 2025-05-28T23:01:18.141621Z
# touched on 2025-05-28T23:02:57.011090Z