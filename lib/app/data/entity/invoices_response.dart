import 'dart:convert';

/// code : 0
/// message : "success"
/// invoices : [{"ach_payment_initiated":false,"invoice_id":"4320524000000077289","zcrm_potential_id":"","customer_id":"4320524000000077262","zcrm_potential_name":"","customer_name":"Mr. Nowfal S","company_name":"","status":"draft","invoice_number":"INV-000001","reference_number":"12345","date":"2023-07-22","due_date":"2023-07-22","due_days":"","email":"","type":"invoice","project_name":"","billing_address":{"address":"","street2":"","city":"","state":"","zipcode":"","country":"","phone":"","fax":"","attention":""},"shipping_address":{"address":"","street2":"","city":"","state":"","zipcode":"","country":"","phone":"","fax":"","attention":""},"country":"","phone":"","created_by":"Nowfal Salahudeen","total":1000.00,"balance":1000.00,"payment_expected_date":"","salesperson_name":"","shipping_charge":0.00,"adjustment":0.00,"created_time":"2023-07-22T20:43:43+0530","last_modified_time":"2023-07-22T20:43:43+0530","updated_time":"2023-07-22T20:43:43+0530","is_viewed_by_client":false,"has_attachment":false,"client_viewed_time":"","is_emailed":false,"color_code":"","current_sub_status_id":"","current_sub_status":"draft","currency_id":"4320524000000000099","schedule_time":"","currency_code":"INR","currency_symbol":"₹","is_pre_gst":false,"template_type":"excel","no_of_copies":1,"show_no_of_copies":true,"transaction_type":"renewal","reminders_sent":0,"last_reminder_sent_date":"","last_payment_date":"","template_id":"4320524000000077162","documents":"","salesperson_id":"","write_off_amount":0.00,"exchange_rate":1.00}]
/// page_context : {"page":1,"per_page":200,"has_more_page":false,"report_name":"Invoices","applied_filter":"Status.All","sort_column":"created_time","sort_order":"D"}

InvoiceListResponse invoiceListResponseFromJson(String str) => InvoiceListResponse.fromJson(json.decode(str));
String invoiceListResponseToJson(InvoiceListResponse data) => json.encode(data.toJson());

class InvoiceListResponse {
  InvoiceListResponse({
    this.code,
    this.message,
    this.invoices,
  });

  InvoiceListResponse.fromJson(dynamic json) {
    code = json['code'];
    message = json['message'];
    if (json['invoices'] != null) {
      invoices = [];
      json['invoices'].forEach((v) {
        invoices?.add(Invoices.fromJson(v));
      });
    }
  }
  num? code;
  String? message;
  List<Invoices>? invoices;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['message'] = message;
    if (invoices != null) {
      map['invoices'] = invoices?.map((v) => v.toJson()).toList();
    }

    return map;
  }
}

/// page : 1
/// per_page : 200
/// has_more_page : false
/// report_name : "Invoices"
/// applied_filter : "Status.All"
/// sort_column : "created_time"
/// sort_order : "D"

/// ach_payment_initiated : false
/// invoice_id : "4320524000000077289"
/// zcrm_potential_id : ""
/// customer_id : "4320524000000077262"
/// zcrm_potential_name : ""
/// customer_name : "Mr. Nowfal S"
/// company_name : ""
/// status : "draft"
/// invoice_number : "INV-000001"
/// reference_number : "12345"
/// date : "2023-07-22"
/// due_date : "2023-07-22"
/// due_days : ""
/// email : ""
/// type : "invoice"
/// project_name : ""
/// billing_address : {"address":"","street2":"","city":"","state":"","zipcode":"","country":"","phone":"","fax":"","attention":""}
/// shipping_address : {"address":"","street2":"","city":"","state":"","zipcode":"","country":"","phone":"","fax":"","attention":""}
/// country : ""
/// phone : ""
/// created_by : "Nowfal Salahudeen"
/// total : 1000.00
/// balance : 1000.00
/// payment_expected_date : ""
/// salesperson_name : ""
/// shipping_charge : 0.00
/// adjustment : 0.00
/// created_time : "2023-07-22T20:43:43+0530"
/// last_modified_time : "2023-07-22T20:43:43+0530"
/// updated_time : "2023-07-22T20:43:43+0530"
/// is_viewed_by_client : false
/// has_attachment : false
/// client_viewed_time : ""
/// is_emailed : false
/// color_code : ""
/// current_sub_status_id : ""
/// current_sub_status : "draft"
/// currency_id : "4320524000000000099"
/// schedule_time : ""
/// currency_code : "INR"
/// currency_symbol : "₹"
/// is_pre_gst : false
/// template_type : "excel"
/// no_of_copies : 1
/// show_no_of_copies : true
/// transaction_type : "renewal"
/// reminders_sent : 0
/// last_reminder_sent_date : ""
/// last_payment_date : ""
/// template_id : "4320524000000077162"
/// documents : ""
/// salesperson_id : ""
/// write_off_amount : 0.00
/// exchange_rate : 1.00

Invoices invoicesFromJson(String str) => Invoices.fromJson(json.decode(str));
String invoicesToJson(Invoices data) => json.encode(data.toJson());

class Invoices {
  Invoices({
    this.achPaymentInitiated,
    this.invoiceId,
    this.zcrmPotentialId,
    this.customerId,
    this.zcrmPotentialName,
    this.customerName,
    this.companyName,
    this.status,
    this.invoiceNumber,
    this.referenceNumber,
    this.date,
    this.dueDate,
    this.dueDays,
    this.email,
    this.type,
    this.projectName,
    this.billingAddress,
    this.shippingAddress,
    this.country,
    this.phone,
    this.createdBy,
    this.total,
    this.balance,
    this.paymentExpectedDate,
    this.salespersonName,
    this.shippingCharge,
    this.adjustment,
    this.createdTime,
    this.lastModifiedTime,
    this.updatedTime,
    this.isViewedByClient,
    this.hasAttachment,
    this.clientViewedTime,
    this.isEmailed,
    this.colorCode,
    this.currentSubStatusId,
    this.currentSubStatus,
    this.currencyId,
    this.scheduleTime,
    this.currencyCode,
    this.currencySymbol,
    this.isPreGst,
    this.templateType,
    this.noOfCopies,
    this.showNoOfCopies,
    this.transactionType,
    this.remindersSent,
    this.lastReminderSentDate,
    this.lastPaymentDate,
    this.templateId,
    this.documents,
    this.salespersonId,
    this.writeOffAmount,
    this.exchangeRate,
  });

  Invoices.fromJson(dynamic json) {
    achPaymentInitiated = json['ach_payment_initiated'];
    invoiceId = json['invoice_id'];
    zcrmPotentialId = json['zcrm_potential_id'];
    customerId = json['customer_id'];
    zcrmPotentialName = json['zcrm_potential_name'];
    customerName = json['customer_name'];
    companyName = json['company_name'];
    status = json['status'];
    invoiceNumber = json['invoice_number'];
    referenceNumber = json['reference_number'];
    date = json['date'];
    dueDate = json['due_date'];
    dueDays = json['due_days'];
    email = json['email'];
    type = json['type'];
    projectName = json['project_name'];
    billingAddress = json['billing_address'] != null ? BillingAddress.fromJson(json['billing_address']) : null;
    shippingAddress = json['shipping_address'] != null ? ShippingAddress.fromJson(json['shipping_address']) : null;
    country = json['country'];
    phone = json['phone'];
    createdBy = json['created_by'];
    total = json['total'];
    balance = json['balance'];
    paymentExpectedDate = json['payment_expected_date'];
    salespersonName = json['salesperson_name'];
    shippingCharge = json['shipping_charge'];
    adjustment = json['adjustment'];
    createdTime = json['created_time'];
    lastModifiedTime = json['last_modified_time'];
    updatedTime = json['updated_time'];
    isViewedByClient = json['is_viewed_by_client'];
    hasAttachment = json['has_attachment'];
    clientViewedTime = json['client_viewed_time'];
    isEmailed = json['is_emailed'];
    colorCode = json['color_code'];
    currentSubStatusId = json['current_sub_status_id'];
    currentSubStatus = json['current_sub_status'];
    currencyId = json['currency_id'];
    scheduleTime = json['schedule_time'];
    currencyCode = json['currency_code'];
    currencySymbol = json['currency_symbol'];
    isPreGst = json['is_pre_gst'];
    templateType = json['template_type'];
    noOfCopies = json['no_of_copies'];
    showNoOfCopies = json['show_no_of_copies'];
    transactionType = json['transaction_type'];
    remindersSent = json['reminders_sent'];
    lastReminderSentDate = json['last_reminder_sent_date'];
    lastPaymentDate = json['last_payment_date'];
    templateId = json['template_id'];
    documents = json['documents'];
    salespersonId = json['salesperson_id'];
    writeOffAmount = json['write_off_amount'];
    exchangeRate = json['exchange_rate'];
  }
  bool? achPaymentInitiated;
  String? invoiceId;
  String? zcrmPotentialId;
  String? customerId;
  String? zcrmPotentialName;
  String? customerName;
  String? companyName;
  String? status;
  String? invoiceNumber;
  String? referenceNumber;
  String? date;
  String? dueDate;
  String? dueDays;
  String? email;
  String? type;
  String? projectName;
  BillingAddress? billingAddress;
  ShippingAddress? shippingAddress;
  String? country;
  String? phone;
  String? createdBy;
  num? total;
  num? balance;
  String? paymentExpectedDate;
  String? salespersonName;
  num? shippingCharge;
  num? adjustment;
  String? createdTime;
  String? lastModifiedTime;
  String? updatedTime;
  bool? isViewedByClient;
  bool? hasAttachment;
  String? clientViewedTime;
  bool? isEmailed;
  String? colorCode;
  String? currentSubStatusId;
  String? currentSubStatus;
  String? currencyId;
  String? scheduleTime;
  String? currencyCode;
  String? currencySymbol;
  bool? isPreGst;
  String? templateType;
  num? noOfCopies;
  bool? showNoOfCopies;
  String? transactionType;
  num? remindersSent;
  String? lastReminderSentDate;
  String? lastPaymentDate;
  String? templateId;
  String? documents;
  String? salespersonId;
  num? writeOffAmount;
  num? exchangeRate;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ach_payment_initiated'] = achPaymentInitiated;
    map['invoice_id'] = invoiceId;
    map['zcrm_potential_id'] = zcrmPotentialId;
    map['customer_id'] = customerId;
    map['zcrm_potential_name'] = zcrmPotentialName;
    map['customer_name'] = customerName;
    map['company_name'] = companyName;
    map['status'] = status;
    map['invoice_number'] = invoiceNumber;
    map['reference_number'] = referenceNumber;
    map['date'] = date;
    map['due_date'] = dueDate;
    map['due_days'] = dueDays;
    map['email'] = email;
    map['type'] = type;
    map['project_name'] = projectName;
    if (billingAddress != null) {
      map['billing_address'] = billingAddress?.toJson();
    }
    if (shippingAddress != null) {
      map['shipping_address'] = shippingAddress?.toJson();
    }
    map['country'] = country;
    map['phone'] = phone;
    map['created_by'] = createdBy;
    map['total'] = total;
    map['balance'] = balance;
    map['payment_expected_date'] = paymentExpectedDate;
    map['salesperson_name'] = salespersonName;
    map['shipping_charge'] = shippingCharge;
    map['adjustment'] = adjustment;
    map['created_time'] = createdTime;
    map['last_modified_time'] = lastModifiedTime;
    map['updated_time'] = updatedTime;
    map['is_viewed_by_client'] = isViewedByClient;
    map['has_attachment'] = hasAttachment;
    map['client_viewed_time'] = clientViewedTime;
    map['is_emailed'] = isEmailed;
    map['color_code'] = colorCode;
    map['current_sub_status_id'] = currentSubStatusId;
    map['current_sub_status'] = currentSubStatus;
    map['currency_id'] = currencyId;
    map['schedule_time'] = scheduleTime;
    map['currency_code'] = currencyCode;
    map['currency_symbol'] = currencySymbol;
    map['is_pre_gst'] = isPreGst;
    map['template_type'] = templateType;
    map['no_of_copies'] = noOfCopies;
    map['show_no_of_copies'] = showNoOfCopies;
    map['transaction_type'] = transactionType;
    map['reminders_sent'] = remindersSent;
    map['last_reminder_sent_date'] = lastReminderSentDate;
    map['last_payment_date'] = lastPaymentDate;
    map['template_id'] = templateId;
    map['documents'] = documents;
    map['salesperson_id'] = salespersonId;
    map['write_off_amount'] = writeOffAmount;
    map['exchange_rate'] = exchangeRate;
    return map;
  }
}

/// address : ""
/// street2 : ""
/// city : ""
/// state : ""
/// zipcode : ""
/// country : ""
/// phone : ""
/// fax : ""
/// attention : ""

ShippingAddress shippingAddressFromJson(String str) => ShippingAddress.fromJson(json.decode(str));
String shippingAddressToJson(ShippingAddress data) => json.encode(data.toJson());

class ShippingAddress {
  ShippingAddress({
    this.address,
    this.street2,
    this.city,
    this.state,
    this.zipcode,
    this.country,
    this.phone,
    this.fax,
    this.attention,
  });

  ShippingAddress.fromJson(dynamic json) {
    address = json['address'];
    street2 = json['street2'];
    city = json['city'];
    state = json['state'];
    zipcode = json['zipcode'];
    country = json['country'];
    phone = json['phone'];
    fax = json['fax'];
    attention = json['attention'];
  }
  String? address;
  String? street2;
  String? city;
  String? state;
  String? zipcode;
  String? country;
  String? phone;
  String? fax;
  String? attention;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['address'] = address;
    map['street2'] = street2;
    map['city'] = city;
    map['state'] = state;
    map['zipcode'] = zipcode;
    map['country'] = country;
    map['phone'] = phone;
    map['fax'] = fax;
    map['attention'] = attention;
    return map;
  }
}

/// address : ""
/// street2 : ""
/// city : ""
/// state : ""
/// zipcode : ""
/// country : ""
/// phone : ""
/// fax : ""
/// attention : ""

BillingAddress billingAddressFromJson(String str) => BillingAddress.fromJson(json.decode(str));
String billingAddressToJson(BillingAddress data) => json.encode(data.toJson());

class BillingAddress {
  BillingAddress({
    this.address,
    this.street2,
    this.city,
    this.state,
    this.zipcode,
    this.country,
    this.phone,
    this.fax,
    this.attention,
  });

  BillingAddress.fromJson(dynamic json) {
    address = json['address'];
    street2 = json['street2'];
    city = json['city'];
    state = json['state'];
    zipcode = json['zipcode'];
    country = json['country'];
    phone = json['phone'];
    fax = json['fax'];
    attention = json['attention'];
  }
  String? address;
  String? street2;
  String? city;
  String? state;
  String? zipcode;
  String? country;
  String? phone;
  String? fax;
  String? attention;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['address'] = address;
    map['street2'] = street2;
    map['city'] = city;
    map['state'] = state;
    map['zipcode'] = zipcode;
    map['country'] = country;
    map['phone'] = phone;
    map['fax'] = fax;
    map['attention'] = attention;
    return map;
  }
}
