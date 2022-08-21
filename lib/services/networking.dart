import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHandler {
  NetworkHandler(this.url, this.body);

  final Uri url;
  final Map body;

  Future getData() async {
    var jsonBody = json.encode(body);
    // post request
    var response = await http.post(url, body: jsonBody, headers: {
      'Content-Type': 'application/json',
    });

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
