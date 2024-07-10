import 'package:bazar/Features/Auth/View/FirstView.dart';
import 'package:bazar/Features/Auth/View/Login_View.dart';
import 'package:bazar/Features/Auth/View/Register.dart';
import 'package:bazar/Features/Auth/Widgets/Custom_Indicator.dart';
import 'package:bazar/Features/Auth/Widgets/Login_Body.dart';
import 'package:bazar/Features/Check_Out/View/Address_View.dart';
import 'package:bazar/Features/Check_Out/View/Cart_Vew.dart';
import 'package:bazar/Features/Check_Out/View/Payment_View.dart';
import 'package:bazar/Features/Check_Out/View/add_new_card_view.dart';
import 'package:bazar/Features/Check_Out/Widgets/Cart_Tile.dart';
import 'package:bazar/Features/Check_Out/Widgets/Payment_Body.dart';
import 'package:bazar/Features/Check_Out/Widgets/add_new_card_body.dart';
import 'package:bazar/Features/Check_Out/Widgets/address_body.dart';
import 'package:bazar/Features/Home/View/Home.View.dart';
import 'package:bazar/Features/Home/View/Search_View.dart';
import 'package:bazar/Features/Home/Widget/Search_Body.dart';
import 'package:bazar/Features/Favorite/View/favorite_view.dart';
import 'package:bazar/Features/My_Profile/View/edit_view.dart';
import 'package:bazar/Features/My_Profile/View/profile_view.dart';
import 'package:bazar/Features/My_Profile/Widgets/Profile_body.dart';
import 'package:bazar/Features/My_Profile/Widgets/edit_body.dart';
import 'package:bazar/Features/Order_Tracking/view/my_order_view.dart';
import 'package:bazar/Features/Order_Tracking/view/stepper_view.dart';
import 'package:bazar/Features/Order_Tracking/widgets/history.dart';
import 'package:bazar/Features/Order_Tracking/widgets/my_order.dart';
import 'package:bazar/Features/Order_Tracking/widgets/my_order_body.dart';
import 'package:bazar/Features/Product/View/Product_Details.dart';
import 'package:bazar/Features/Splash_Screen/Widgets/Splash_Body.dart';
import 'package:go_router/go_router.dart';

const kSplash_body = "/splashbody";
const khomeview = "/homeView";
const khomeview_body = "/homeViewbody";
const kfirestview = "/firstview";
const customindicator = "/customindicator";
const register_rout = "/registerrout";
const login_view_rout = "/loginview";
const login_body_rout = "/loginbody";
const search_view_rout = "/searchview";
const search_body_rout = "/searchbody";
const product_details_rout = "/productdetails";
const Cart_view_rout = "/cartview";
const Cart_View_Body_rout = "/cartviewbody";
const payment_view_rout = "/paymentview";
const payment_body_rout = "/paymentbody";
const address_page_rout = "/adresspage";
const address_body_rout = "/addressbody";
const add_new_card_rout = "/addnewcard";
const add_new_card_body_rout = "/addnewcardbody";
const my_order_view_rout = "/myorderview";
const my_order_body_rout = "/myorderbody";
const my_order_rout = "/myorder";
const history_rout = "/history";
const stepper_view_rout = "/stepperview";
const favorite_test_rout = "/favoritetest";
const profile_view_rout = "/myprofileview";
const profile_body_rout = "/myprofilebody";
const edit_body_rout = "/editbody";
const edit_view_rout = "/editview";

abstract class appRouter {
  static final router_in = GoRouter(
    routes: [
      // GoRoute(
      //   path: '/', // initial route
      //   builder: (context, state) => const Splash_View(),
      // ),
      GoRoute(path: "/", builder: (context, state) => const HomeView()),

      GoRoute(
        path: kSplash_body,
        builder: (context, state) => const Splash_Body(),
      ),
      GoRoute(
        path: kfirestview,
        builder: (context, state) => const FirstView(),
      ),
      GoRoute(
        path: customindicator,
        builder: (context, state) => const Custom_Slider(),
      ),
      GoRoute(
        path: register_rout,
        builder: (context, state) => const Register(),
      ),
      GoRoute(
        path: login_view_rout,
        builder: (context, state) => const Login_View(),
      ),
      GoRoute(
        path: login_body_rout,
        builder: (context, state) => Login_Body(),
      ),
      GoRoute(
        path: search_view_rout,
        builder: (context, state) => const Search_View(),
      ),
      GoRoute(
        path: search_body_rout,
        builder: (context, state) => const Search_Body(),
      ),
      GoRoute(
        path: product_details_rout,
        builder: (context, state) => const Product_Details(),
      ),
      GoRoute(
        path: Cart_view_rout,
        builder: (context, state) => const Cart_View(),
      ),
      GoRoute(
        path: Cart_View_Body_rout,
        builder: (context, state) => const Cart_Tile(),
      ),
      GoRoute(
        path: payment_view_rout,
        builder: (context, state) => const Payment_View(),
      ),
      GoRoute(
        path: payment_body_rout,
        builder: (context, state) => const Payment_Body(),
      ),
      GoRoute(
        path: address_page_rout,
        builder: (context, state) => const Address_View(),
      ),
      GoRoute(
        path: address_body_rout,
        builder: (context, state) => const address_body(),
      ),
      GoRoute(
        path: add_new_card_rout,
        builder: (context, state) => const add_new_card(),
      ),
      GoRoute(
        path: add_new_card_body_rout,
        builder: (context, state) => const add_new_card_body(),
      ),
      GoRoute(
        path: my_order_view_rout,
        builder: (context, state) => const my_order_view(),
      ),
      GoRoute(
        path: my_order_body_rout,
        builder: (context, state) => const my_order_body(),
      ),
      GoRoute(
        path: my_order_rout,
        builder: (context, state) => const my_order(),
      ),
      GoRoute(
        path: history_rout,
        builder: (context, state) => const history(),
      ),
      GoRoute(
        path: stepper_view_rout,
        builder: (context, state) => const stepper_view(),
      ),
      GoRoute(
        path: favorite_test_rout,
        builder: (context, state) => const favorive(),
      ),
      GoRoute(
        path: profile_view_rout,
        builder: (context, state) => const profile_view(),
      ),
      GoRoute(
        path: profile_body_rout,
        builder: (context, state) => const profile_body(),
      ),
      GoRoute(
        path: edit_body_rout,
        builder: (context, state) => const edit_body(),
      ),
      GoRoute(
        path: edit_view_rout,
        builder: (context, state) => const edit_view(),
      ),
    ],
  );
  static final router_out = GoRouter(
    routes: [
      // GoRoute(
      //   path: '/', // initial route
      //   builder: (context, state) => const Splash_View(),
      // ),
      GoRoute(
        path: "/",
        builder: (context, state) => const Register(),
      ),

      GoRoute(
        path: kSplash_body,
        builder: (context, state) => const Splash_Body(),
      ),
      GoRoute(
        path: kfirestview,
        builder: (context, state) => const FirstView(),
      ),
      GoRoute(
        path: customindicator,
        builder: (context, state) => const Custom_Slider(),
      ),
      GoRoute(
        path: register_rout,
        builder: (context, state) => const Register(),
      ),
      GoRoute(
        path: login_view_rout,
        builder: (context, state) => const Login_View(),
      ),
      GoRoute(
        path: login_body_rout,
        builder: (context, state) => Login_Body(),
      ),
      GoRoute(
        path: search_view_rout,
        builder: (context, state) => const Search_View(),
      ),
      GoRoute(
        path: search_body_rout,
        builder: (context, state) => const Search_Body(),
      ),
      GoRoute(
        path: product_details_rout,
        builder: (context, state) => const Product_Details(),
      ),
      GoRoute(
        path: Cart_view_rout,
        builder: (context, state) => const Cart_View(),
      ),
      GoRoute(
        path: Cart_View_Body_rout,
        builder: (context, state) => const Cart_Tile(),
      ),
      GoRoute(
        path: payment_view_rout,
        builder: (context, state) => const Payment_View(),
      ),
      GoRoute(
        path: payment_body_rout,
        builder: (context, state) => const Payment_Body(),
      ),
      GoRoute(
        path: address_page_rout,
        builder: (context, state) => const Address_View(),
      ),
      GoRoute(
        path: address_body_rout,
        builder: (context, state) => const address_body(),
      ),
      GoRoute(
        path: add_new_card_rout,
        builder: (context, state) => const add_new_card(),
      ),
      GoRoute(
        path: add_new_card_body_rout,
        builder: (context, state) => const add_new_card_body(),
      ),
      GoRoute(
        path: my_order_view_rout,
        builder: (context, state) => const my_order_view(),
      ),
      GoRoute(
        path: my_order_body_rout,
        builder: (context, state) => const my_order_body(),
      ),
      GoRoute(
        path: my_order_rout,
        builder: (context, state) => const my_order(),
      ),
      GoRoute(
        path: history_rout,
        builder: (context, state) => const history(),
      ),
      GoRoute(
        path: stepper_view_rout,
        builder: (context, state) => const stepper_view(),
      ),
      GoRoute(
        path: favorite_test_rout,
        builder: (context, state) => const favorive(),
      ),
      GoRoute(
        path: profile_view_rout,
        builder: (context, state) => const profile_view(),
      ),
      GoRoute(
        path: profile_body_rout,
        builder: (context, state) => const profile_body(),
      ),
      GoRoute(
        path: edit_body_rout,
        builder: (context, state) => const edit_body(),
      ),
      GoRoute(
        path: edit_view_rout,
        builder: (context, state) => const edit_view(),
      ),
    ],
  );
}
