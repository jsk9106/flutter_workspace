import 'package:core_util/util.dart';
import 'package:flutter/material.dart';
import 'package:tool_base_component/component.dart';
import 'package:tool_base_theme/gen/gen.dart';
import 'package:tool_base_theme/theme.dart';

class FThumbnailImage extends StatelessWidget {
  final List<String> imageUrls;
  final double width;
  final double height;

  FThumbnailImage({
    super.key,
    List<String>? imageUrls,
    this.width = 87.0,
    this.height = 78.0,
  }) : imageUrls = imageUrls?.where((url) => url.isWebUrl).toList() ?? [];

  @override
  Widget build(BuildContext context) {
    if (imageUrls.isEmpty) {
      return const SizedBox.shrink();
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: SizedBox(
        width: 87.0,
        height: 78.0,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: ColorName.lightGray,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.network(
                imageUrls.first,
                fit: BoxFit.cover,
                width: 87.0,
                height: 78.0,
              ),
              if (imageUrls.length > 1) ...[
                Positioned(
                  top: 6.0,
                  right: 6.0,
                  child: FIcon.filterNone(
                    color: context.colorScheme.white,
                    size: 15.0,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class FProfileImage extends StatelessWidget {
  final String imageUrl;
  final double size;

  const FProfileImage({super.key, required this.imageUrl, this.size = 34.0});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size / 2.0),
      child: SizedBox(
        width: size,
        height: size,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: imageUrl.isWebUrl
                ? ColorName.lightGray
                : context.colorScheme.gray500,
            borderRadius: BorderRadius.circular(size / 2.0),
          ),
          child: Center(
            child: imageUrl.isWebUrl
                ? Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    width: size,
                    height: size,
                  )
                : FIcon.personOn(color: context.colorScheme.gray300),
          ),
        ),
      ),
    );
  }
}
