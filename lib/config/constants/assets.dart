abstract class Assets {
  const Assets._();

  // ignore: library_private_types_in_public_api
  static _Icons get icons => const _Icons();

  // ignore: library_private_types_in_public_api
  static _Images get images => const _Images();
}

abstract class _AssetsHolder {
  final String basePath;

  const _AssetsHolder(this.basePath);
}

class _Icons extends _AssetsHolder {
  const _Icons() : super('assets/icons');

  String get icSend => "$basePath/ic_send.png";
}

class _Images extends _AssetsHolder {
  const _Images() : super('assets/images');

  String get modal => "$basePath/im_modal.png";
  String get welcome => "$basePath/im_welcome.png";
  String get carousel1 => "$basePath/im_carousel_one.png";
  String get carousel2 => "$basePath/im_carousel_two.png";
  String get carousel3 => "$basePath/im_carousel_three.png";
}
