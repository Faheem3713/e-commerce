class Coupon {
  String couponCode;
  int percentage;
  Coupon({required this.couponCode, required this.percentage});

  factory Coupon.fromJson(Map<dynamic, dynamic> map) {
    return Coupon(
      couponCode: map['coupon'],
      percentage: map['percent'],
    );
  }
}
