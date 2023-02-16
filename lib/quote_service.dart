import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';

class QuoteService {
  void getQuote() async {
    final url = Uri.parse("https://the-one-api.dev/v2/quote");
    final res = await http
        .get(url, headers: {HttpHeaders.authorizationHeader: 'Bearer mC_U_DJKnnMXUfUwoLLh'});
    final data = jsonDecode(res.body) as Map<String, dynamic>;
    print(data['docs'][0]['dialog']);
  }
}
