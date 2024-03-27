//Example 1

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:getx_state_management/counter_controller.dart';

// class HomeScreen extends StatefulWidget {
//   HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final CountController controller =
//       Get.put(CountController()); //dependency injectors

//   @override
//   Widget build(BuildContext context) {
//     print("rebuild");
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("GetX State Management"),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           controller
//               .incrementCounter(); //increment the count by using function in countController class
//         },
//         child: Icon(Icons.add),
//       ),
//       body: Center(
//           child: Obx(
//         () => Text(
//           controller.counter
//               .toString(), //printing counter from count controller class
//           style: TextStyle(fontSize: 50),
//         ),
//       )),
//     );
//   }
// }

//Example Two

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:getx_state_management/example_two.dart';

// class HomeScreen extends StatefulWidget {
//   HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final ExampleTwoController opacityController =
//       Get.put(ExampleTwoController());

//   @override
//   Widget build(BuildContext context) {
//     print("rebuild");
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("GetX State Management Ex2"),
//         ),
//         body: Column(
//           children: [
//             Obx(
//               () => Container(
//                 height: 200,
//                 width: 200,
//                 color:
//                     Colors.green.withOpacity(opacityController.opacity.value),
//               ),
//             ),
//             Obx(() => Slider(
//                   value: opacityController.opacity.value,
//                   onChanged: (value) {
//                     opacityController.setOpacity(value);
//                   },
//                 ))
//           ],
//         ));
//   }
// }

//
//Example Three

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:getx_state_management/example_three.dart';

// class HomeScreen extends StatefulWidget {
//   HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final ExampleThreeController notifier = Get.put(ExampleThreeController());

//   @override
//   Widget build(BuildContext context) {
//     print("rebuild");
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("GetX State Management Ex3"),
//       ),
//       body: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text("Notifications"),
//               Obx(() => Switch(
//                   value: notifier.notification.value,
//                   onChanged: (value) {
//                     notifier.notification.value = value;
//                     notifier.setNotification(value);
//                   }))
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

//Example favourite

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:getx_state_management/example_favourite.dart';

// class HomeScreen extends StatefulWidget {
//   HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final ExampleFavourite favouriteController = Get.put(ExampleFavourite());

//   @override
//   Widget build(BuildContext context) {
//     print("rebuild");
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("GetX State Management Favourites"),
//       ),
//       body: ListView.builder(
//         itemCount: favouriteController.fruits.length,
//         itemBuilder: (context, index) {
//           return Card(
//               margin: EdgeInsets.all(10),
//               child: ListTile(
//                   onTap: () {
//                     if (favouriteController.favourite
//                         .contains(favouriteController.fruits[index])) {
//                       favouriteController.removeFromFavourite(
//                           favouriteController.fruits[index]);
//                     } else {
//                       favouriteController
//                           .addToFavourite(favouriteController.fruits[index]);
//                     }
//                   },
//                   title: Text(favouriteController.fruits[index]),
//                   trailing: Obx(
//                     () => favouriteController.favourite
//                             .contains(favouriteController.fruits[index])
//                         ? Icon(
//                             Icons.favorite,
//                             color: Colors.red,
//                           )
//                         : Icon(
//                             Icons.favorite_border,
//                           ),
//                   )));
//         },
//       ),
//     );
//   }
// }

//Image picker

// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:getx_state_management/image_picker.dart';

// class HomeScreen extends StatefulWidget {
//   HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final ImagePickerController imagePickerController =
//       Get.put(ImagePickerController());

//   @override
//   Widget build(BuildContext context) {
//     print("rebuild");
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("GetX State Management Image Picker"),
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Obx(
//               () => Center(
//                 child: CircleAvatar(
//                     radius: 40,
//                     backgroundImage: imagePickerController.imagePath.isNotEmpty
//                         ? FileImage(
//                             File(imagePickerController.imagePath.toString()))
//                         : null),
//               ),
//             ),
//             TextButton(
//                 onPressed: () {
//                   imagePickerController.getImage();
//                 },
//                 child: Text("pick image"))
//           ],
//         ));
//   }
// }

//Patch API

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/login_controller.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX State Management Image Picker"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: loginController.emailController.value,
              decoration: InputDecoration(hintText: "Emial"),
            ),
            TextFormField(
              controller: loginController.passwordController.value,
              decoration: InputDecoration(hintText: "Password"),
            ),
            SizedBox(
              height: 50,
            ),
            Obx(() => InkWell(
                  onTap: loginController.loginApi,
                  child: loginController.loader.value
                      ? CircularProgressIndicator()
                      : Container(
                          color: Colors.blue[800],
                          height: 40,
                          child: Center(child: Text("Login")),
                        ),
                )),
          ],
        ),
      ),
    );
  }
}
