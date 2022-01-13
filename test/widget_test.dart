import 'package:amanda_longo_esteticista/web_widget.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Amanda Longo Esteticista', (WidgetTester tester) async {
    await tester.pumpWidget(WebWidget());

    expect(tester.takeException(), null);
  });
}
