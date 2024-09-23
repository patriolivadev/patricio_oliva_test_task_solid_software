import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patricio_oliva_test_task_solid_software/my_app.dart';

void main() {
  testWidgets('Background color changes on tap', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    final animatedContainer =
        tester.widget<AnimatedContainer>(find.byType(AnimatedContainer));
    expect(
      (animatedContainer.decoration! as BoxDecoration).color,
      Colors.white,
    );

    await tester.tap(find.byType(InkWell));
    await tester.pump();

    final animatedContainerAfterTap =
        tester.widget<AnimatedContainer>(find.byType(AnimatedContainer));
    expect(
      (animatedContainerAfterTap.decoration! as BoxDecoration).color,
      isNot(Colors.white),
    );
  });
}
