class ResponseModel {
  final bool _isSucces;
  final String _message;

  ResponseModel(this._isSucces, this._message);

  bool get isSuccess => _isSucces;
  String get message => _message;
}
