import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final HttpLink httpLink = HttpLink('uri');
  final ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(link: httpLink, cache: GraphQLCache()),
  );
  runApp( MyApp(client: client));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.client});
  final ValueNotifier<GraphQLClient> client;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: client,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WEATHER APP SUPER!!',
        theme:ThemeData(fontFamily:  ,
      ),
      
    );
  }
}
