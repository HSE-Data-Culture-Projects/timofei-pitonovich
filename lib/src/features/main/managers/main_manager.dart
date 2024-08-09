import 'package:app/src/services/routing/managers/managers.dart';

class MainManager {
  final NavigationManager _navigationManager;

  MainManager(this._navigationManager);

  Future<void> openSettings() async {
    _navigationManager.go('/settings');
  }
}
