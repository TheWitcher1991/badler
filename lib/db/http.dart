import 'package:http/http.dart' as http;

Future<http.Response> getData() async {
  const url = '';
  return await http.get(url);
}

void loadData() {
  getData()
    .then((data) => {
      if (data.statusCode == 200) {
        print(data.body)
      } else {
        print(data.statusCode)
      }
    })
    .catchError((err) { 
      print(err.toString()); 
    });
}