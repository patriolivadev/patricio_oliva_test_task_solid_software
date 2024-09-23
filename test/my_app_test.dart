import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patricio_oliva_test_task_solid_software/my_app.dart';

void main() {
  testWidgets('Background color changes on tap', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    final animatedContainer =
        tester.widget<AnimatedContainer>(find.byType(AnimatedContainer));

    final boxDecoration = animatedContainer.decoration as BoxDecoration?;
    expect(
      boxDecoration?.color ?? Colors.transparent,
      Colors.white,
    );

    await tester.tap(find.byType(InkWell));
    await tester.pump();

    final animatedContainerAfterTap =
        tester.widget<AnimatedContainer>(find.byType(AnimatedContainer));

    final boxDecorationAfterTap =
        animatedContainerAfterTap.decoration as BoxDecoration?;
    expect(
      boxDecorationAfterTap?.color ?? Colors.transparent,
      isNot(Colors.white),
    );
  });
}
