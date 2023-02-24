import 'package:http/http.dart'as http;
import 'dart:convert';


class Networkhelper {
  Networkhelper(this.url);

  final String url;
  final openWeatherMapURl = '"https://api.stormglass.io/v2/weather/point?lat=58.7984&lng=17.8081&params=windSpeed"-H"Authorization:ce8ad28e-afab-11ed-b59d-0242ac130002-ce8ad306-afab-11ed-b59d-0242ac130002"';
 Future getdata() async {
    http.Response response = await http.get(Uri.parse(openWeatherMapURl));


    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    }
    else{
      print(response.statusCode);

  }
 }

}