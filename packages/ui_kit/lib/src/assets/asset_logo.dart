/// Список констант для работы с логотипами различных форматов.
enum AssetLogo {
  logoErp('$_logosRoot/logo.svg');

  const AssetLogo(this.path);

  final String path;

  static const _assetRoot = 'assets';
  static const _logosRoot = '$_assetRoot/svg/logos';
}
