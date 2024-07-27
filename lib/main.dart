import 'package:bazar/Core/Utils/AppRouter.dart';
import 'package:bazar/Core/Utils/Constants.dart';
import 'package:bazar/Features/Home/Manager/Get_Products_cubit/get_all_products_cubit.dart';
import 'package:bazar/Features/Home/Manager/Models/product_model.dart';
import 'package:bazar/Features/Home/Manager/Models/product_tyepAdapter.dart';
import 'package:bazar/Features/Home/Manager/cubit/store_fav_cubit.dart';
import 'package:bazar/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

bool? isLogin;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await Hive.initFlutter();
  Hive.registerAdapter(product_typeAdapter());
  await Hive.openBox(kProductsBox);
  await Hive.openBox(kfavbox);
  runApp(const Bazar());
}

class Bazar extends StatefulWidget {
  const Bazar({super.key});

  @override
  State<Bazar> createState() => _BazarState();
}

class _BazarState extends State<Bazar> {
  @override
  void initState() {
    super.initState();
    isLogin = false;
    FirebaseAuth.instance.authStateChanges().listen(
      (User? user) {
        if (user == null) {
          if (kDebugMode) {
            print('User is currently signed out!');
          }
        } else {
          setState(() {
            isLogin = true;
          });
          if (kDebugMode) {
            print('User is signed in!');
          }
          if (kDebugMode) {
            print(isLogin);
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetAllProductsCubit()..fechAllProducts(),
        ),
        BlocProvider(
          create: (context) => StoreFavCubit(),
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: Colors.black,
                fontFamily: Rfontfamily,
              ),
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: isLogin! ? appRouter.router_in : appRouter.router_out,
      ),
    );
  }
}
