import 'dart:convert';

/// access_token : "1000.b60c32fd123427ad63d4687c1587d669.536c122d5b6a1f337f278196e63f6fc0"
/// refresh_token : "1000.123e6882a886f15a5a8c48e68fea3c9f.6d96583b0ba7967958621602acca96d0"
/// scope : "ZohoInvoice.invoices.CREATE ZohoInvoice.invoices.READ ZohoInvoice.invoices.UPDATE ZohoInvoice.invoices.DELETE"
/// api_domain : "https://www.zohoapis.com"
/// token_type : "Bearer"
/// expires_in : 3600

AccessToken accessTokenFromJson(String str) => AccessToken.fromJson(json.decode(str));
String accessTokenToJson(AccessToken data) => json.encode(data.toJson());

class AccessToken {
  AccessToken({
    this.accessToken,
    this.refreshToken,
    this.scope,
    this.apiDomain,
    this.tokenType,
    this.expiresIn,
  });

  AccessToken.fromJson(dynamic json) {
    accessToken = json['access_token'];
    refreshToken = json['refresh_token'];
    scope = json['scope'];
    apiDomain = json['api_domain'];
    tokenType = json['token_type'];
    expiresIn = json['expires_in'];
  }
  String? accessToken;
  String? refreshToken;
  String? scope;

  @override
  String toString() {
    return 'AccessToken{accessToken: $accessToken, refreshToken: $refreshToken, scope: $scope, apiDomain: $apiDomain, tokenType: $tokenType, expiresIn: $expiresIn}';
  }

  String? apiDomain;
  String? tokenType;
  num? expiresIn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['access_token'] = accessToken;
    map['refresh_token'] = refreshToken;
    map['scope'] = scope;
    map['api_domain'] = apiDomain;
    map['token_type'] = tokenType;
    map['expires_in'] = expiresIn;
    return map;
  }
}
