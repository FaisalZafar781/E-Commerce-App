class PaymentMethodModel {
  String name;
  String image;

  PaymentMethodModel({
    required this.name,
    required this.image,
  });

  static PaymentMethodModel empty() => PaymentMethodModel(
        name: '',
        image: '',
      );
}

# touched on 2025-05-28T23:02:21.698327Z