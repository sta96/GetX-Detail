import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_details/models/user_model.dart';
import 'package:getx_details/shared-web-services/shared_web_services.dart';

class UserAppScreenController extends GetxController {
  ///reactive programming :when rx types eg;RxInt,RxBool etc
  RxList<Placeholer> listOfPlaceHolers = <Placeholer>[].obs;

  ///when obs value changes it calls Getx,GetBuilder,Obx;
  RxBool isLoadingPlaceHolders = true.obs;

  final SharedWebServices _sharedWebServices = SharedWebServices.instance;

  placeholder() async {
    List<Placeholer>? placeholers = await _sharedWebServices.placeholder();
    isLoadingPlaceHolders.value = false;
    log('response-------$placeholers');
    if (placeholers == null) {
      Get.snackbar('Warning', 'Please check your internet connection',
          colorText: Colors.white);
      log('response-------if  null');

      return;
    }
    listOfPlaceHolers.value = placeholers;
  }
}
