/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsPngGen {
  const $AssetsPngGen();

  /// File path: assets/png/calculator.png
  AssetGenImage get calculator =>
      const AssetGenImage('assets/png/calculator.png');

  /// File path: assets/png/company.png
  AssetGenImage get company => const AssetGenImage('assets/png/company.png');

  /// File path: assets/png/forms.png
  AssetGenImage get forms => const AssetGenImage('assets/png/forms.png');

  /// File path: assets/png/graph.png
  AssetGenImage get graph => const AssetGenImage('assets/png/graph.png');

  /// File path: assets/png/image.png
  AssetGenImage get image => const AssetGenImage('assets/png/image.png');

  /// File path: assets/png/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/png/logo.png');

  /// File path: assets/png/no result found.png
  AssetGenImage get noResultFound =>
      const AssetGenImage('assets/png/no result found.png');

  /// File path: assets/png/statement.png
  AssetGenImage get statement =>
      const AssetGenImage('assets/png/statement.png');

  /// File path: assets/png/ticket.png
  AssetGenImage get ticket => const AssetGenImage('assets/png/ticket.png');

  /// File path: assets/png/todolist.png
  AssetGenImage get todolist => const AssetGenImage('assets/png/todolist.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        calculator,
        company,
        forms,
        graph,
        image,
        logo,
        noResultFound,
        statement,
        ticket,
        todolist
      ];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/amico.svg
  String get amico => 'assets/svg/amico.svg';

  /// File path: assets/svg/noresult.svg
  String get noresult => 'assets/svg/noresult.svg';

  /// File path: assets/svg/searching_data.svg
  String get searchingData => 'assets/svg/searching_data.svg';

  /// File path: assets/svg/trackpi_logo.svg
  String get trackpiLogo => 'assets/svg/trackpi_logo.svg';

  /// File path: assets/svg/trackpilogo.svg
  String get trackpilogo => 'assets/svg/trackpilogo.svg';

  /// File path: assets/svg/trackpilogo1.svg
  String get trackpilogo1 => 'assets/svg/trackpilogo1.svg';

  /// File path: assets/svg/trackpislogo.svg
  String get trackpislogo => 'assets/svg/trackpislogo.svg';

  /// List of all assets
  List<String> get values => [
        amico,
        noresult,
        searchingData,
        trackpiLogo,
        trackpilogo,
        trackpilogo1,
        trackpislogo
      ];
}

class Assets {
  Assets._();

  static const $AssetsPngGen png = $AssetsPngGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
