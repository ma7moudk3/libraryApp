import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:library_app/core/controllerViewModel.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ControllerViewModel());
  }
}
