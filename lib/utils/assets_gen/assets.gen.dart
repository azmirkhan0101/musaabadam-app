// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/camera.svg
  String get camera => 'assets/icons/camera.svg';

  /// File path: assets/icons/eye.svg
  String get eye => 'assets/icons/eye.svg';

  /// File path: assets/icons/eye_filled.svg
  String get eyeFilled => 'assets/icons/eye_filled.svg';

  /// File path: assets/icons/facebook_login.svg
  String get facebookLogin => 'assets/icons/facebook_login.svg';

  /// File path: assets/icons/google_login.svg
  String get googleLogin => 'assets/icons/google_login.svg';

  /// List of all assets
  List<String> get values => [
    camera,
    eye,
    eyeFilled,
    facebookLogin,
    googleLogin,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bags.png
  AssetGenImage get bags => const AssetGenImage('assets/images/bags.png');

  /// File path: assets/images/beauty.png
  AssetGenImage get beauty => const AssetGenImage('assets/images/beauty.png');

  /// File path: assets/images/books.png
  AssetGenImage get books => const AssetGenImage('assets/images/books.png');

  /// File path: assets/images/check_email_onboarding.png
  AssetGenImage get checkEmailOnboarding =>
      const AssetGenImage('assets/images/check_email_onboarding.png');

  /// File path: assets/images/forgot_password_onboarding.png
  AssetGenImage get forgotPasswordOnboarding =>
      const AssetGenImage('assets/images/forgot_password_onboarding.png');

  /// File path: assets/images/jwelery.png
  AssetGenImage get jwelery => const AssetGenImage('assets/images/jwelery.png');

  /// File path: assets/images/new_password_onboarding.png
  AssetGenImage get newPasswordOnboarding =>
      const AssetGenImage('assets/images/new_password_onboarding.png');

  /// File path: assets/images/shoes.png
  AssetGenImage get shoes => const AssetGenImage('assets/images/shoes.png');

  /// File path: assets/images/signin_onboarding.png
  AssetGenImage get signinOnboarding =>
      const AssetGenImage('assets/images/signin_onboarding.png');

  /// File path: assets/images/signup_onboarding.png
  AssetGenImage get signupOnboarding =>
      const AssetGenImage('assets/images/signup_onboarding.png');

  /// File path: assets/images/splash_logo.png
  AssetGenImage get splashLogo =>
      const AssetGenImage('assets/images/splash_logo.png');

  /// File path: assets/images/splash_logo1024.png
  AssetGenImage get splashLogo1024 =>
      const AssetGenImage('assets/images/splash_logo1024.png');

  /// File path: assets/images/tools.png
  AssetGenImage get tools => const AssetGenImage('assets/images/tools.png');

  /// File path: assets/images/user_photo.png
  AssetGenImage get userPhoto =>
      const AssetGenImage('assets/images/user_photo.png');

  /// File path: assets/images/watch.png
  AssetGenImage get watch => const AssetGenImage('assets/images/watch.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    bags,
    beauty,
    books,
    checkEmailOnboarding,
    forgotPasswordOnboarding,
    jwelery,
    newPasswordOnboarding,
    shoes,
    signinOnboarding,
    signupOnboarding,
    splashLogo,
    splashLogo1024,
    tools,
    userPhoto,
    watch,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
