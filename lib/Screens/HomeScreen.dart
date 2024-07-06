// ignore: file_names
import 'package:flutter/material.dart';
import 'package:responsive_course/view/Widgets/custom_drawe.dart';
import 'package:responsive_course/view/home_view_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(
        key: scaffoldKey,
        drawer: const CustomDrawer(),
        backgroundColor: const Color(0xffDBDBDB),
        appBar: MediaQuery.of(context).size.width - 32 < (900)
            ? AppBar(
                backgroundColor: Colors.black,
                leading: GestureDetector(
                  onTap: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  child: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
              )
            : null,
        body: const HomeViewBody());
  }
}

class CustomAdaptiveAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAdaptiveAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(56);
}

// class CustomAdaptiveAppBar extends StatelessWidget
//     implements PreferredSizeWidget {
//   const CustomAdaptiveAppBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, Constraints) {
//       if (Constraints.maxWidth < 900) {
//         return AppBar(
//           backgroundColor: Colors.black,
//           leading: GestureDetector(
//             onTap: () {
//               // scaffoldKey.currentState!.openDrawer();
//             },
//             child: const Icon(
//               Icons.menu,
//               color: Colors.white,
//             ),
//           ),
//         );
//       } else {
//         return const SizedBox();
//       }
//     });
//   }

//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => const Size.fromHeight(56);
// }
