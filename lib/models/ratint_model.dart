class RatintModel {
  final int rate;
  final int count;
  
  RatintModel({required this.rate, required this.count});
    factory RatintModel.fromJson(jsonDara) {
    return RatintModel(
      rate: jsonDara['rate'],
      count: jsonDara['count'],
    );
}
}