import 'package:http/http.dart' as http;

getRepositories({int since = 0}) async {
  return await http.get("https://api.github.com/repositories?since=$since");
}

getRepository(String fullName) async {
  return await http.get("https://api.github.com/$fullName");
}
