import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:lab5_activation/main.dart' as app;

void main(){
  group('App Test', () { 
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    testWidgets('full app test', (tester) async{
    app.main();
    tester.pumpAndSettle();
    
    final contactTestField = find.byType(TextField).first; 
    tester.enterText(contactTestField, "11113628550");
    tester.pumpAndSettle();

    final myCheckbox = find.byKey(Key('myChecknox'));
    tester.tap(myCheckbox);
    tester.pumpAndSettle();
    });
  });
}