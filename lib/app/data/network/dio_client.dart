import '../entity/invoices_response.dart';
import '../entity/invoice_details_response.dart';
import '../entity/access_token.dart';
import 'package:http/http.dart' as http;

class DioClient {
  Future<AccessToken> getAccessToken({required String code}) async {
    var accessTokenResponse = await http.post(Uri.parse(
        'https://accounts.zoho.com/oauth/v2/token?code=$code&client_id=1000.F7W17ACNFC39ON5UCTTIMG7YLMQOXJ&client_secret=44ff8e6c580b5695c9ecbdd5189ea81b814f30cd0c&redirect_uri=https://nowfal.in&grant_type=authorization_code'));
    if (accessTokenResponse.statusCode != 200) {
      throw Exception("Request  failed with status ${accessTokenResponse.statusCode}: ${accessTokenResponse.body}");
    } else {
      AccessToken accessToken = accessTokenFromJson(accessTokenResponse.body);
      return accessToken;
    }
  }

  Future<AccessToken> getAccessTokenFromRefreshToken({required String refreshToken}) async {
    var accessTokenResponse = await http.post(Uri.parse(
        'https://accounts.zoho.com/oauth/v2/token?refresh_token=$refreshToken&client_id=1000.F7W17ACNFC39ON5UCTTIMG7YLMQOXJ&client_secret=44ff8e6c580b5695c9ecbdd5189ea81b814f30cd0c&redirect_uri=https://nowfal.in&grant_type=refresh_token'));
    if (accessTokenResponse.statusCode != 200) {
      throw Exception("Request  failed with status ${accessTokenResponse.statusCode}: ${accessTokenResponse.body}");
    } else {
      AccessToken accessToken = accessTokenFromJson(accessTokenResponse.body);
      return accessToken;
    }
  }

  //get invoices from zoho invoice api
  Future<InvoiceListResponse> getInvoices({required String accessToken}) async {
    var headers = {
      'X-com-zoho-invoice-organizationid': '819359390',
      'Authorization': 'Zoho-oauthtoken $accessToken',
      'content-type': 'application/json'
    };
    var response = await http.get(Uri.parse('https://www.zohoapis.com/invoice/v3/invoices'), headers: headers);
    if (response.statusCode != 200) {
      throw Exception("Request  failed with status ${response.statusCode}: ${response.body}");
    } else {
      InvoiceListResponse invoiceList = invoiceListResponseFromJson(response.body);
      return invoiceList;
    }
  }

  Future<SingleInvoiceResponse> getInvoicesDetails({required String accessToken}) async {
    var headers = {
      'X-com-zoho-invoice-organizationid': '819359390',
      'Authorization': 'Zoho-oauthtoken $accessToken',
      'content-type': 'application/json'
    };
    var response =
        await http.get(Uri.parse('https://www.zohoapis.com/invoice/v3/invoices/4320524000000077289'), headers: headers);
    if (response.statusCode != 200) {
      throw Exception("Request  failed with status ${response.statusCode}: ${response.body}");
    } else {
      SingleInvoiceResponse invoiceDetails = singleInvoiceResponseFromJson(response.body);
      return invoiceDetails;
    }
  }
}
