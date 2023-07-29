import '../models/user_list_model/user_list_model.dart';
import 'package:http/http.dart' as http;

class UserListApi {
  static Future<UserListModel> fetchUser(int id) async {
    var result = await http.get(Uri.parse("https://sdw-2023-prd.up.railway.app/users/$id"));
    
    return UserListModel.fromJson(result.body);
  }
}