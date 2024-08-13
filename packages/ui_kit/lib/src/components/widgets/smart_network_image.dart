import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/ui_kit.dart';

class DcSmartNetworkImage extends StatelessWidget {
  const DcSmartNetworkImage({
    required this.url,
    this.fit,
    this.width,
    this.height,
    this.errorBuilder,
    super.key,
  });

  final String url;
  final BoxFit? fit;
  final double? width;
  final double? height;
  final Widget Function(BuildContext, String, Object)? errorBuilder;

  @override
  Widget build(BuildContext context) {
    final isSvg = url.endsWith('.svg') || url.endsWith('.svg/');
    if (isSvg) {
      return SvgPicture.network(
        url,
        width: width,
        height: height,
        fit: fit ?? BoxFit.contain,
        placeholderBuilder: (_) => Container(
          width: width,
          height: height,
          color: context.colorScheme.secondary,
        ),
      );
    }
    return CachedNetworkImage(
      imageUrl: url,
      fit: fit,
      width: width,
      height: height,
      placeholder: (context, _) => Container(
        width: width,
        height: height,
        color: context.colorScheme.secondary,
      ),
      errorWidget: errorBuilder ??
          (_, __, ___) => BrokenImageContainer(
                width: width,
                height: height,
              ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties.add(StringProperty('url', url));
    properties.add(DoubleProperty('width', width));
    properties.add(DoubleProperty('height', height));
    super.debugFillProperties(properties);
  }
}

class BrokenImageContainer extends StatelessWidget {
  const BrokenImageContainer({this.width, this.height, super.key});

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: context.colorScheme.secondary,
      alignment: Alignment.center,
      child: const Icon(Icons.broken_image_outlined),
    );
  }
}
