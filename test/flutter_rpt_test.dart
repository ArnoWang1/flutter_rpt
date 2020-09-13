import 'package:flutter_rpt/flutter_rpt.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('responsive unit input values', () {
    ResponsiveUnit.init();
    print(375.rpt);
    print(375.vw);
    print(375.vh);
  });
}
