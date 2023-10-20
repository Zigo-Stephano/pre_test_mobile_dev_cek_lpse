class BaseResponse<T> {
  bool? success;
  String? message;
  T? data;

  BaseResponse({
    this.success,
    this.message,
    this.data,
  });

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) create,
  ) {
    return BaseResponse<T>(
      success: json['success'],
      message: json['message'],
      data: json['user'] != null ? create(json['user']) : null,
    );
  }
}
