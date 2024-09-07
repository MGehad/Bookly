import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/data/models/book_rating.dart';
import 'package:bookly/features/home/data/models/list_price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/utils/app_router.dart';
import 'core/utils/constants.dart';
import 'core/utils/service_locater.dart';
import 'features/home/domain/repos/home_remote_implementation.dart';
import 'features/home/presentation/view_model/feature_books_cubit/feature_books_cubit.dart';
import 'features/home/presentation/view_model/newest_books_cubit/newest_books_cubit.dart';

void main() async {
  setupServiceLocator();
  await Hive.initFlutter();

  Hive.registerAdapter(BookModelAdapter());
  Hive.registerAdapter(BookRatingAdapter());
  Hive.registerAdapter(ListPriceAdapter());

  await Hive.openBox(featuresBooksBox);
  await Hive.openBox(newestBooksBox);
  await Hive.openBox(similarBooksBox);

  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatureBooksCubit(
            getIt.get<HomeRemoteImplementation>(),
          )..getFeatureBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            getIt.get<HomeRemoteImplementation>(),
          )..getNewestBooks(),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: kPrimaryColor,
          brightness: Brightness.dark,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          useMaterial3: true,
        ),
      ),
    );
  }
}
