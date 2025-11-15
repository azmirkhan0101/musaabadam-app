import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddressScreenController extends GetxController{

  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController postalCodeController = TextEditingController();
  final TextEditingController countryController = TextEditingController();

  RxBool isDefaultShippingChecked = false.obs;
  RxBool isReturnAddressChecked = false.obs;
}