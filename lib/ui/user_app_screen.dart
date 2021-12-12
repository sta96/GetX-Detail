import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_details/ui/user_app_screen_controller.dart';

// class UserApp extends StatelessWidget {
class UserApp extends StatelessWidget {
  const UserApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller_ = Get.put(UserAppScreenController());
    controller_.placeholder();

    return Scaffold(
      appBar: AppBar(
        title: const Text('User API'),
        centerTitle: true,
      ),
      // body: GetBuilder<UserAppScreenController>(
      //   builder: (controller) {
      //     return controller_.isLoadingPlaceHolders.value
      //         ? const Center(
      //             child: CircularProgressIndicator(),
      //           )
      //         : ListView.builder(
      //             itemCount: controller_.listOfPlaceHolers.length,
      //             itemBuilder: (context, index) => ListTile(
      //               leading: Text(
      //                   controller_.listOfPlaceHolers[index].id.toString()),
      //               title: Text(
      //                   controller_.listOfPlaceHolers[index].name.toString()),
      //               subtitle: Text(controller_.listOfPlaceHolers[index].username
      //                   .toString()),
      //               trailing: Text(
      //                   controller_.listOfPlaceHolers[index].phone.toString()),
      //             ),
      //           );
      //   },
      // ),

      // body: GetX<UserAppScreenController>(
      //   builder: (controller) {
      //     return controller_.isLoadingPlaceHolders.value
      //         ? const Center(
      //             child: CircularProgressIndicator(),
      //           )
      //         : ListView.builder(
      //             itemCount: controller_.listOfPlaceHolers.length,
      //             itemBuilder: (context, index) => ListTile(
      //               leading: Text(
      //                   controller_.listOfPlaceHolers[index].id.toString()),
      //               title: Text(
      //                   controller_.listOfPlaceHolers[index].name.toString()),
      //               subtitle: Text(controller_.listOfPlaceHolers[index].username
      //                   .toString()),
      //               trailing: Text(
      //                   controller_.listOfPlaceHolers[index].phone.toString()),
      //             ),
      //           );
      //   },
      // ),

      body: Obx(
        () {
          return controller_.isLoadingPlaceHolders.value
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: controller_.listOfPlaceHolers.length,
                  itemBuilder: (context, index) => ListTile(
                    leading: Text(
                        controller_.listOfPlaceHolers[index].id.toString()),
                    title: Text(
                        controller_.listOfPlaceHolers[index].name.toString()),
                    subtitle: Text(controller_.listOfPlaceHolers[index].username
                        .toString()),
                    trailing: Text(
                        controller_.listOfPlaceHolers[index].phone.toString()),
                  ),
                );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller_.placeholder();
          // setState(() {});
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
