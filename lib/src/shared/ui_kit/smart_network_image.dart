import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SmartNetworkImage extends StatelessWidget {
  const SmartNetworkImage({
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
          // TODO(kater): fix with new theme
          color: Colors.grey,
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
        height: height, // TODO(kater): fix with new theme
        color: Colors.grey,
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
    properties
      ..add(StringProperty('url', url))
      ..add(DoubleProperty('width', width))
      ..add(DoubleProperty('height', height));
    super.debugFillProperties(properties);
  }
}

class BrokenImageContainer extends StatelessWidget {
  const BrokenImageContainer({this.width, this.height, super.key});

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) => Container(
        width: width,
        height: height,
        // TODO(kater): fix with new theme
        color: Colors.grey,
        alignment: Alignment.center,
        child: const Icon(Icons.broken_image_outlined),
      );
}
