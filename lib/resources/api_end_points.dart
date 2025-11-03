// ignore_for_file: unintended_html_in_doc_comment

import 'package:codefarms_core/resources/code_farms_firebase_options.dart';
import 'package:codefarms_core/services/init_firebase_app.dart';

import 'firebase_emulators.dart';

class ApiEndPoints {
  /**
   * AgentiqResponse({ status: true, message: "Success", data: dynamic{} })
   */

  /// Callable
  /// params : {userId: string}
  /// Returns AgentiqResponse with data:AgentiqUserObject
  static const String getAgentiqUser = 'getAgentiqUser';

  /// Http Endpoint
  /// params: {email: string, name?: string}
  /// Sends OTP to email for verification
  /// Returns AgentiqResponse
  /// To be used before user sign up with Email and Password
  /// To be used on user requests reset password
  static const String sendEmailOtp = 'sendEmailOtp';

  /// Http Endpoint
  /// params: {email: string, otp: string}
  /// Verifies OTP sent to email
  /// Returns AgentiqResponse
  /// To be used before user sign up with Email and Password
  static const String verifyEmailOtp = 'verifyEmailOtp';

  /// Http Endpoint
  /// params: {email: string, newPassword: string, otp: string}
  /// Resets password for user with email
  /// Returns AgentiqResponse
  static const String resetPassword = 'resetPassword';

  /// Callable
  /// context must contain authenticated user
  /// params: ContributionEntity
  /// Returns AgentiqResponse with data: contributionId
  static const String claimContribution = 'claimContribution';

  /// Callable
  /// context must contain authenticated user
  /// authenticated user must be admin
  /// params: ContributionEntity
  /// Returns AgentiqResponse
  static const String claimContributionReview = 'claimContributionReview';

  /// Callable
  /// context must contain authenticated user
  /// Returns AgentiqResponse with data: List<ContributionEntity>
  static const String getContributions = 'getContributions';

  /// Callable
  /// context must contain authenticated user
  /// Returns AgentiqResponse with data: ProfileEntity
  static const String getCodeFarmsUserProfile = 'getCodeFarmsUserProfile';

  /// Callable
  /// context must contain authenticated user
  /// params: ProfileEntity
  /// kyc field updates are restricted to admin users only
  /// Returns AgentiqResponse
  static const String updateCodeFarmsUserProfile = 'updateCodeFarmsUserProfile';

  /// Callable
  /// context must contain authenticated user
  /// params: {fileName: String, fileCategory: , fileData: base64String}
  /// fileCategory: "profilePic" || "contribution" || "agreement" || "kyc_proof" || "other"
  /// allowed_fileTypes:'pdf', 'doc', 'docx', 'txt', 'md', 'png',
  /// 'jpg', 'jpeg', 'gif', 'bmp', 'tiff', 'svg', 'mp4', 'mov',
  ///  'avi', 'mkv', 'mp3', 'wav', 'flac', 'zip', 'rar'
  /// max file size: 50 MB
  /// Returns AgentiqResponse with data: List<String> downloadUrls
  static const String uploadUserFiles = 'uploadUserFiles';

  /// Callable
  /// context must contain authenticated user
  /// Returns AgentiqResponse with data: List<ProjectEntity>
  static const String getCodeFarmsProjects = 'getCodeFarmsProjects';

  /// Callable
  /// context must contain authenticated user
  /// authenticated user must be admin
  /// params: CodeFarmsProjectEntity
  /// Returns AgentiqResponse with data: projectId
  static const String createNewCodeFarmsProject = 'createNewCodeFarmsProject';

  /// Callable
  /// context must contain authenticated user
  /// authenticated user must be admin
  /// params: CodeFarmsPaymentEntity
  /// Returns AgentiqResponse with data: paymentId
  static const String createPaymentRecord = 'createPaymentRecord';

  /// Callable
  /// context must contain authenticated user
  /// Returns AgentiqResponse with data: List<CodeFarmsPaymentEntity>
  static const String getPaymentRecords = 'getPaymentRecords';

  /// Callable
  /// context must contain authenticated user
  /// authenticated user must be admin
  /// Returns AgentiqResponse with data: List<ContributionEntity>
  static const String getContributionsToReview = 'getContributionsToReview';

  /// Callable
  /// context must contain authenticated user
  /// authenticated user must be admin
  /// Returns AgentiqResponse with data: List<ProfileEntity>
  static const String getUserProfileReviewRequests =
      'getUserProfileReviewRequests';

  /// Callable
  /// returns List<PublicProfileEntity>
  static const String getPublicProfiles = 'getPublicProfiles';

  static String getFunctionUrl(
    String functionName,
    CodeFarmsFirebaseOptions options,
  ) {
    return isFirebaseEmulatorsInUse
        ? "http://127.0.0.1:$functionsEmulatorPort/${options.projectId}/${options.region}/$functionName"
        : "https://${options.region}-${options.projectId}.cloudfunctions.net/$functionName";
  }

  static String uploadAbi = 'uploadAbi';
  static String getSocialShareUrls = 'getSocialShareUrls';
}
