import 'package:core_util/util.dart';
import 'package:flutter/material.dart';
import 'package:tool_base_component/component.dart';
import 'package:tool_base_component/gen/assets.gen.dart';

class FIcon extends StatelessWidget {
  final String path;
  final Color? color;
  final double? size;

  const FIcon({super.key, required this.path, this.color, this.size});

  factory FIcon.arrowBack({Color? color, double? size}) {
    return FIcon(
      path: Assets.images.svgs.icArrowBack,
      color: color,
      size: size,
    );
  }

  factory FIcon.bookmark({Color? color, double? size}) {
    return FIcon(path: Assets.images.svgs.icBookmark, color: color, size: size);
  }

  factory FIcon.cancel({Color? color, double? size}) {
    return FIcon(path: Assets.images.svgs.icCancel, color: color, size: size);
  }

  factory FIcon.chatBubble({Color? color, double? size}) {
    return FIcon(
      path: Assets.images.svgs.icChatBubble,
      color: color,
      size: size,
    );
  }

  factory FIcon.chevronRight({Color? color, double? size}) {
    return FIcon(
      path: Assets.images.svgs.icChevronRight,
      color: color,
      size: size,
    );
  }

  factory FIcon.circleNotifications({Color? color, double? size}) {
    return FIcon(
      path: Assets.images.svgs.icCircleNotifications,
      color: color,
      size: size,
    );
  }

  factory FIcon.close({Color? color, double? size}) {
    return FIcon(path: Assets.images.svgs.icClose, color: color, size: size);
  }

  factory FIcon.doNotDisturbOn({Color? color, double? size}) {
    return FIcon(
      path: Assets.images.svgs.icDoNotDisturbOn,
      color: color,
      size: size,
    );
  }

  factory FIcon.edit({Color? color, double? size}) {
    return FIcon(path: Assets.images.svgs.icEdit, color: color, size: size);
  }

  factory FIcon.expandMore({Color? color, double? size}) {
    return FIcon(
      path: Assets.images.svgs.icExpandMore,
      color: color,
      size: size,
    );
  }

  factory FIcon.favorite({Color? color, double? size}) {
    return FIcon(path: Assets.images.svgs.icFavorite, color: color, size: size);
  }

  factory FIcon.featuredSeasonalAndGifts({Color? color, double? size}) {
    return FIcon(
      path: Assets.images.svgs.icFeaturedSeasonalAndGifts,
      color: color,
      size: size,
    );
  }

  factory FIcon.filterNone({Color? color, double? size}) {
    return FIcon(
      path: Assets.images.svgs.icFilterNone,
      color: color,
      size: size,
    );
  }

  factory FIcon.flagCircle({Color? color, double? size}) {
    return FIcon(
      path: Assets.images.svgs.icFlagCircle,
      color: color,
      size: size,
    );
  }

  factory FIcon.homeOff({Color? color, double? size}) {
    return FIcon(path: Assets.images.svgs.icHomeOff, color: color, size: size);
  }

  factory FIcon.homeOn({Color? color, double? size}) {
    return FIcon(path: Assets.images.svgs.icHomeOn, color: color, size: size);
  }

  factory FIcon.imagesMode({Color? color, double? size}) {
    return FIcon(
      path: Assets.images.svgs.icImagesMode,
      color: color,
      size: size,
    );
  }

  factory FIcon.logo({Color? color, double? size}) {
    return FIcon(path: Assets.images.svgs.icLogo, color: color, size: size);
  }

  factory FIcon.logoSmall({Color? color, double? size}) {
    return FIcon(
      path: Assets.images.svgs.icLogoSmall,
      color: color,
      size: size,
    );
  }

  factory FIcon.logout({Color? color, double? size}) {
    return FIcon(path: Assets.images.svgs.icLogout, color: color, size: size);
  }

  factory FIcon.mail({Color? color, double? size}) {
    return FIcon(path: Assets.images.svgs.icMail, color: color, size: size);
  }

  factory FIcon.moreHoriz({Color? color, double? size}) {
    return FIcon(
      path: Assets.images.svgs.icMoreHoriz,
      color: color,
      size: size,
    );
  }

  factory FIcon.notificationsOff({Color? color, double? size}) {
    return FIcon(
      path: Assets.images.svgs.icNotificationsOff,
      color: color,
      size: size,
    );
  }

  factory FIcon.notificationsOn({Color? color, double? size}) {
    return FIcon(
      path: Assets.images.svgs.icNotificationsOn,
      color: color,
      size: size,
    );
  }

  factory FIcon.payments({Color? color, double? size}) {
    return FIcon(path: Assets.images.svgs.icPayments, color: color, size: size);
  }

  factory FIcon.personOff({Color? color, double? size}) {
    return FIcon(
      path: Assets.images.svgs.icPersonOff,
      color: color,
      size: size,
    );
  }

  factory FIcon.personOn({Color? color, double? size}) {
    return FIcon(path: Assets.images.svgs.icPersonOn, color: color, size: size);
  }

  factory FIcon.restartAlt({Color? color, double? size}) {
    return FIcon(
      path: Assets.images.svgs.icRestartAlt,
      color: color,
      size: size,
    );
  }

  factory FIcon.search({Color? color, double? size}) {
    return FIcon(path: Assets.images.svgs.icSearch, color: color, size: size);
  }

  factory FIcon.settings({Color? color, double? size}) {
    return FIcon(path: Assets.images.svgs.icSettings, color: color, size: size);
  }

  factory FIcon.sms({Color? color, double? size}) {
    return FIcon(path: Assets.images.svgs.icSms, color: color, size: size);
  }

  factory FIcon.sourceEnvironment({Color? color, double? size}) {
    return FIcon(
      path: Assets.images.svgs.icSourceEnvironment,
      color: color,
      size: size,
    );
  }

  factory FIcon.upload({Color? color, double? size}) {
    return FIcon(path: Assets.images.svgs.icUpload, color: color, size: size);
  }

  factory FIcon.visibility({Color? color, double? size}) {
    return FIcon(
      path: Assets.images.svgs.icVisibility,
      color: color,
      size: size,
    );
  }

  factory FIcon.volunteerActivism({Color? color, double? size}) {
    return FIcon(
      path: Assets.images.svgs.icVolunteerActivism,
      color: color,
      size: size,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FSvgPicture.asset(path, color: color, width: size, height: size);
  }
}

class FSvgPicture extends CoreSvgPicture {
  FSvgPicture.asset(
    super.assetName, {
    super.key,
    super.matchTextDirection,
    super.bundle,
    super.package = kToolBaseComponentPackageName,
    super.width,
    super.height,
    super.fit,
    super.alignment,
    super.allowDrawingOutsideViewBox,
    super.placeholderBuilder,
    super.semanticsLabel,
    super.excludeFromSemantics,
    super.clipBehavior,
    super.theme,
    super.colorFilter,
    super.color,
    super.colorBlendMode,
    super.cacheColorFilter,
  }) : super.asset();
}
