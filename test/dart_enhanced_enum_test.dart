import 'package:dart_enhanced_enum/dart_enhanced_enum.dart';
import 'package:test/test.dart';

void main() {
  test('UserRole enum permissions property returns correct permissions', () {
    expect(UserRole.Admin.permissions,
        containsAll(['create', 'edit', 'delete', 'view']));
    expect(UserRole.Editor.permissions, containsAll(['edit', 'view']));
    expect(UserRole.Viewer.permissions, containsAll(['view']));
  });

  test('UserRole hasPermission method works correctly', () {
    expect(UserRole.Admin.hasPermission('create'), isTrue);
    expect(UserRole.Editor.hasPermission('create'), isFalse);
    expect(UserRole.Viewer.hasPermission('edit'), isFalse);
    expect(UserRole.Viewer.hasPermission('view'), isTrue);
  });
}
