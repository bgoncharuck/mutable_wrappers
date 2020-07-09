import 'package:mutable_wrappers/mutable_wrappers.dart';

void main() {
  final wrapString = MutableString("Long life to you, my");
  final wrapInt = MutableInteger(0);
  final wrapFloat = MutableFloat(3.14);
  final wrapBool = MutableBool(false);

  wrapString.wrapped = "${wrapString.wrapped} Thane";
  ++wrapInt.wrapped;
  wrapFloat.wrapped /= 2;
  wrapBool.wrapped |= true;

  assert(wrapString.wrapped == "Long life to you, my Thane",
      "${wrapString.wrapped}");
  assert(wrapInt.wrapped == 1, "${wrapInt.wrapped}");
  assert(wrapFloat.wrapped == 3.14 / 2, "${wrapFloat.wrapped}");
  assert(wrapBool.wrapped == true, "${wrapBool.wrapped}");
}
