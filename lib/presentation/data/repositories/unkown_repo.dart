import 'dart:convert';
import 'package:flux_bloc_onue/presentation/data/models/unknown_model.dart';
import 'package:http/http.dart' as http;

abstract class UnknownService {
  Future<List<Unknown>> getUnknown();
}

class UnknownServiceImpl extends UnknownService {
  @override
  Future<List<Unknown>> getUnknown() async {
    var res = await http.get(Uri.parse("https://reqres.in/api/unknown"));
    if (res.statusCode == 200) {
      final data = json.decode(res.body)['data'] as List;
      return List<Unknown>.from(data
          .map((json) => Unknown.fromJson(json as Map<String, dynamic>))
          .toList());
    }
    throw Exception('Failed');
  }
}
