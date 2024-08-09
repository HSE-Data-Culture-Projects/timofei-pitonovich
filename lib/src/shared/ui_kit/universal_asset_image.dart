import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:path/path.dart' as p;

enum _ImageAssetType { rasterImage, svg }

/// Widget for displaying images from assets.
/// Supports raster images, svg and binary svg.
class UniversalAssetImage extends StatelessWidget {
  /// Creates a widget that displays an image from an asset bundle.
  UniversalAssetImage(
    Object asset, {
    this.fit,
    this.alignment,
    this.width,
    this.height,
    Color? fillWithColor,
    ColorFilter? colorFilter,
    this.errorBuilder,
    super.key,
  })  : assert(
          fillWithColor == null || colorFilter == null,
          "You can't use both fillWithColor and colorFilter",
        ),
        assert(
          asset is String,
          'Invalid asset type',
        ),
        colorFilter = colorFilter ??
            (fillWithColor != null
                ? ColorFilter.mode(fillWithColor, BlendMode.srcIn)
                : null),
        _assetPath = switch (asset) {
          String() => asset,
          _ => throw ArgumentError('Invalid asset type'),
        };

  /// Path to the asset.
  final String _assetPath;

  /// BoxFit for the image.
  final BoxFit? fit;

  /// Alignment for the image.
  final AlignmentGeometry? alignment;

  /// Width of the image.
  final double? width;

  /// Height of the image.
  final double? height;

  /// ColorFilter for the svg image.
  final ColorFilter? colorFilter;

  /// Builder for the error widget.
  final Widget Function(BuildContext, [Object? error, StackTrace? stackTrace])?
      errorBuilder;

  late final _ImageAssetType _type = switch (p.extension(_assetPath)) {
    '.svg' => _ImageAssetType.svg,
    _ => _ImageAssetType.rasterImage,
  };

  @override
  Widget build(BuildContext context) {
    switch (_type) {
      case _ImageAssetType.rasterImage:
        return Image.asset(
          _assetPath,
          fit: boxFit,
          alignment: align,
          width: width,
          height: height,
          errorBuilder: errorBuilder,
        );
      case _ImageAssetType.svg:
        return SvgPicture.asset(
          _assetPath,
          fit: boxFit,
          alignment: align,
          width: width,
          height: height,
          colorFilter: colorFilter,
          placeholderBuilder: errorBuilder,
        );
    }
  }

  /// Returns BoxFit for the image.
  BoxFit get boxFit => fit ?? BoxFit.contain;

  /// Returns Alignment for the image.
  AlignmentGeometry get align => alignment ?? Alignment.center;
}
