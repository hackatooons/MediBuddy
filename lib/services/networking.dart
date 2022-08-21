import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHandler {
  NetworkHandler(this.url, this.body);

  final Uri url;
  final Object body;

  Future getData() async {
    http.Response response = await http.post(url, body: json.encode(body));

    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
