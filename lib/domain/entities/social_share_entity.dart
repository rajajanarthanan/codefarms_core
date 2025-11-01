import 'package:freezed_annotation/freezed_annotation.dart';
part 'social_share_entity.freezed.dart';

@freezed
abstract class SocialShareEntity with _$SocialShareEntity {
  const factory SocialShareEntity({
    String? linkedinCertificationUrl,
    String? linkedinPostUrl,
    String? instagramPostUrl,
    String? twitterPostUrl,
    String? redditPostUrl,
    String? devToPostUrl,
    String? discordPostUrl,
    String? rawLinkUrl,
  }) = _SocialShareEntity;

  static SocialShareEntity fromJson(Map<String, dynamic> json) {
    return SocialShareEntity(
      linkedinCertificationUrl: json['linkedinCertificationUrl'] as String?,
      linkedinPostUrl: json['linkedinPostUrl'] as String?,
      instagramPostUrl: json['instagramPostUrl'] as String?,
      twitterPostUrl: json['twitterPostUrl'] as String?,
      redditPostUrl: json['redditPostUrl'] as String?,
      devToPostUrl: json['devToPostUrl'] as String?,
      discordPostUrl: json['discordPostUrl'] as String?,
      rawLinkUrl: json['rawLinkUrl'] as String?,
    );
  }
}
