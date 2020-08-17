import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:httprequestapp/models/question.dart';

class Q_API {
  static Map<String, > get x => null;

  static Future<List<Question>> fetch() async {
    try {
      var url ='https://script.google.com/macros/s/AKfycby24Ae-6WrycXleG9fwKdyVmcf520qTyuxJFU4JZCalnv254qtN/exec';
      var response = await http.get(url);

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        return List<Question>.from(
          data['questions'].map((X) => Question.fromMap(x)));
      } else {
        return List<Question>();
      }

    } catch (error) {
      print(error);
      return List<Question>();
    }
  }
}