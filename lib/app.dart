import 'package:challenge/src/bloc/main_bloc/main_bloc.dart';
import 'package:challenge/src/bloc/show_data_bloc/show_info_bloc.dart';
import 'package:challenge/src/configs/app_routes.dart';
import 'package:challenge/src/core/services/http_client_service.dart';
import 'package:challenge/src/data/remote_info_data_source.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/core/constants/routes_constants.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => HttpClientService(),
          lazy: true,
        ),
        RepositoryProvider(
          create: (context) => RemoteInfoDataSource(
              httpClientService:
              RepositoryProvider.of<HttpClientService>(context)),
          lazy: true,
        ),
        RepositoryProvider(
          create: (context) => MainBloc(
              infoDataSource:
                  RepositoryProvider.of<RemoteInfoDataSource>(context)),
          lazy: true,
        ),
        RepositoryProvider(
          create: (context) => ShowInfoBloc(
              infoDataSource:
              RepositoryProvider.of<RemoteInfoDataSource>(context)),
          lazy: true,
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: kMainScreenRoute,
        onGenerateRoute: AppRoutes.generateRoute,
      ),
    );
  }
}
