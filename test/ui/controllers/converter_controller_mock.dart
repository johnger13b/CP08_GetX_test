import 'package:calculadorabinariodecimalgetx/domain/use_case/converter.dart';
import 'package:calculadorabinariodecimalgetx/ui/controllers/converter_controller.dart';
import 'package:get/get.dart';
import 'package:mockito/mockito.dart';

/* Agrega las herencias, mixins e implementaciones necesarias */
class ConverterControllerMock extends GetxService
    with Mock
    implements ConverterController {
/* Implementa la logica del controlador mock */
  final _decimal = "0".obs;
  final _binary = "0".obs;

  @override
  String get decimal => _decimal.value;
  @override
  String get binary => _binary.value;

  @override
  void updateDecimal(int digit) {
    _decimal.value = Converter.adjustValue(decimal, digit);
    _binary.value = Converter.dec2bin(decimal);
  }

  @override
  void updateBinary(int digit) {
    _binary.value = Converter.adjustValue(binary, digit);
    _decimal.value = Converter.bin2dec(binary);
  }

  @override
  void reset() {
    _binary.value = "0";
    _decimal.value = "0";
  }
}
