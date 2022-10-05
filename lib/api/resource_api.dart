// ignore_for_file: unused_field, unused_local_variable
import 'package:http/http.dart' as http;

class ResourceApi {
  final String _localUrl = 'http://10.42.0.1:8000/api/';
  final String _storageUrl = 'http://10.42.0.1:8000/storage/';

  getStorageUrl() {
    return _storageUrl;
  }

  getAllData({entryPoint = ""}) async {
    print(_localUrl + entryPoint);

    //
    http.Response response = await http.get(Uri.parse(_localUrl + entryPoint));
    try {
      if (response.statusCode == 200) {
        // print(response.statusCode);
        return response;
      }
      return 'false';
    } catch (e) {
      // print(e);
      return 'failed ';
    }
  }
//
}
