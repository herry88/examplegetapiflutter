import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ProjectApi(),
    );
  }
}

class ProjectApi extends StatefulWidget {
  const ProjectApi({super.key});

  @override
  State<ProjectApi> createState() => _ProjectApiState();
}

class _ProjectApiState extends State<ProjectApi> {
  //function untuk getApi
  Future getApi() async {
    Response response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts"),
    );
    //jika konek
    if (response.statusCode == 200) {
      print(response.body);
    } else{
      print('Object Not Found');
    }
  }

  //memanggil function
  @override
  void initState() {
    getApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
