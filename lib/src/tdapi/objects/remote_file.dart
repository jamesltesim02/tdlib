part of '../tdapi.dart';

class RemoteFile extends TdObject {
  String id;
  String uniqueId;
  bool isUploadingActive;
  bool isUploadingCompleted;
  int uploadedSize;

  /// Represents a remote file. 
  /// [id] Remote file identifier; may be empty. Can be used by the current user across application restarts or even from other devices. Uniquely identifies a file, but a file can have a lot of different valid identifiers.. If the remoteFile starts with "http://" or "https://", it represents the HTTP URL of the file. TDLib is currently unable to download files if only their URL is known.. If downloadFile is called on such a file or if it is sent to a secret chat, TDLib starts a file generation process by sending updateFileGenerationStart to the application with the HTTP URL in the original_path and "#url#" as the conversion string. Application should generate the file by downloading it to the specified location. 
  /// [uniqueId] Unique file identifier; may be empty if unknown. The unique file identifier which is the same for the same file even for different users and is persistent over time. 
  /// [isUploadingActive] True, if the file is currently being uploaded (or a remote copy is being generated by some other means). 
  /// [isUploadingCompleted] True, if a remote copy is fully available. 
  /// [uploadedSize] Size of the remote available part of the file; 0 if unknown
  RemoteFile({this.id,
    this.uniqueId,
    this.isUploadingActive,
    this.isUploadingCompleted,
    this.uploadedSize});

  /// Parse from a json
  RemoteFile.fromJson(Map<String, dynamic> json)  {
    this.id = json['id'];
    this.uniqueId = json['unique_id'];
    this.isUploadingActive = json['is_uploading_active'];
    this.isUploadingCompleted = json['is_uploading_completed'];
    this.uploadedSize = json['uploaded_size'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "unique_id": this.uniqueId,
      "is_uploading_active": this.isUploadingActive,
      "is_uploading_completed": this.isUploadingCompleted,
      "uploaded_size": this.uploadedSize,
    };
  }

  static const CONSTRUCTOR = 'remoteFile';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}