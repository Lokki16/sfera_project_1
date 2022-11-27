import 'dart:developer';
import 'package:get/get.dart';

logger(str, {String? hint}) {
  log(hint ?? 'LOGGER');
  log(str.toString().tr);
  log(hint ?? 'LOGGER');
}
