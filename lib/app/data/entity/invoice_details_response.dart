import 'dart:convert';

/// code : 0
/// message : "success"
/// invoice : {"invoice_id":"4320524000000077289","invoice_number":"INV-000001","date":"2023-07-22","due_date":"2023-07-22","offline_created_date_with_time":"","customer_id":"4320524000000077262","customer_name":"Mr. Nowfal S","customer_custom_fields":[],"customer_custom_field_hash":{},"email":"","currency_id":"4320524000000000099","invoice_source":"Client","currency_code":"INR","currency_symbol":"₹","currency_name_formatted":"INR- Indian Rupee","status":"draft","custom_fields":[],"custom_field_hash":{},"recurring_invoice_id":"","payment_terms":0,"payment_terms_label":"Due on Receipt","payment_reminder_enabled":true,"payment_made":0.00,"zcrm_potential_id":"","zcrm_potential_name":"","reference_number":"12345","lock_details":{},"line_items":[{"line_item_id":"4320524000000077297","item_id":"","item_order":1,"name":"","description":"Test product","unit":"","quantity":1.00,"discount_amount":0.00,"discount":0.00,"discounts":[],"bcy_rate":1000.00,"rate":1000.00,"header_id":"","header_name":"","pricebook_id":"","tax_id":"","tax_name":"","tax_type":"tax","tax_percentage":0,"item_total":1000.00,"item_custom_fields":[],"documents":[],"image_document_id":"","line_item_taxes":[],"project_id":"","time_entry_ids":[],"expense_id":"","item_type":"","expense_receipt_name":"","purchase_rate":"","salesorder_item_id":"","cost_amount":0}],"exchange_rate":1.00,"is_autobill_enabled":false,"inprocess_transaction_present":false,"allow_partial_payments":false,"price_precision":2,"sub_total":1000.00,"tax_total":0.00,"discount_total":0.00,"discount_percent":0.00,"discount":0.00,"discount_applied_on_amount":0.00,"discount_type":"item_level","is_discount_before_tax":true,"adjustment":0.00,"adjustment_description":"Adjustment","shipping_charge_tax_id":"","shipping_charge_tax_name":"","shipping_charge_tax_type":"","shipping_charge_tax_percentage":"","shipping_charge_tax_exemption_id":"","shipping_charge_tax_exemption_code":"","shipping_charge_tax":"","bcy_shipping_charge_tax":"","shipping_charge_exclusive_of_tax":0.000,"shipping_charge_inclusive_of_tax":0.000,"shipping_charge_tax_formatted":"","shipping_charge_exclusive_of_tax_formatted":"₹0.00","shipping_charge_inclusive_of_tax_formatted":"₹0.00","shipping_charge":0.00,"bcy_shipping_charge":0.00,"bcy_adjustment":0.00,"bcy_sub_total":1000.00,"bcy_discount_total":0.00,"bcy_tax_total":0.00,"bcy_total":1000.000,"total":1000.00,"balance":1000.00,"write_off_amount":0.00,"roundoff_value":0.00,"transaction_rounding_type":"no_rounding","is_inclusive_tax":false,"sub_total_inclusive_of_tax":0.00,"contact_category":"","tax_rounding":"entity_level","taxes":[],"can_send_invoice_sms":true,"payment_expected_date":"","payment_discount":0.00,"stop_reminder_until_payment_expected_date":false,"last_payment_date":"","ach_supported":false,"ach_payment_initiated":false,"payment_options":{"payment_gateways":[]},"reader_offline_payment_initiated":false,"contact_persons":[],"attachment_name":"","documents":[],"computation_type":"basic","late_fee":{"name":"","type":"percentage","rate":0.00,"amount":0.00,"frequency_type":"month"},"debit_notes":[],"deliverychallans":[],"ewaybills":[],"dispatch_from_address":{},"is_eway_bill_required":false,"can_generate_ewaybill_using_irn":true,"merchant_id":"","merchant_name":"","ecomm_operator_id":"","ecomm_operator_name":"","salesorder_id":"","salesorder_number":"","salesorders":[],"shipping_bills":[],"contact_persons_details":[{"contact_person_id":"4320524000000077264","first_name":"Nowfal","last_name":"S","email":"","phone":"","mobile":"","is_primary_contact":true,"photo_url":"https://secure.gravatar.com/avatar/00000000000000000000000000000000?&d=mm"}],"salesperson_id":"","salesperson_name":"","is_emailed":false,"reminders_sent":0,"last_reminder_sent_date":"","next_reminder_date_formatted":"","is_viewed_by_client":false,"client_viewed_time":"","submitter_id":"","approver_id":"","submitted_date":"","submitted_by":"","submitted_by_name":"","submitted_by_email":"","submitted_by_photo_url":"","template_id":"4320524000000077162","template_name":"Spreadsheet Template","template_type":"excel","notes":"Thanks for your business.","terms":"","billing_address":{"street":"","address":"","street2":"","city":"","state":"","zip":"","country":"","fax":"","phone":"","attention":""},"shipping_address":{"street":"","address":"","street2":"","city":"","state":"","zip":"","country":"","fax":"","phone":"","attention":""},"invoice_url":"https://zohoinvoicepay.com/invoice/nowfal/secure?CInvoiceID=2-d956e017e6292da3c564b71ef59bbbfd489dab860f200127c1588cbe4757728dc84a53efdb8db99749e325a5134493916104d774697d3eb147434c7a113e03ab11e80a707f5b3196 ","subject_content":"Test Subject","can_send_in_mail":false,"created_time":"2023-07-22T20:43:43+0530","last_modified_time":"2023-07-22T20:43:43+0530","created_date":"2023-07-22","created_by_id":"4320524000000077001","last_modified_by_id":"4320524000000077001","page_width":"8.27in","page_height":"11.69in","orientation":"portrait","is_backorder":"","sales_channel":"direct_sales","is_pre_gst":false,"type":"invoice","color_code":"","current_sub_status_id":"","current_sub_status":"draft","sub_statuses":[],"reason_for_debit_note":"others","estimate_id":"","is_client_review_settings_enabled":false,"unused_retainer_payments":0.00,"credits_applied":0.00,"tax_amount_withheld":0.00,"schedule_time":"","no_of_copies":1,"show_no_of_copies":true,"customer_default_billing_address":{"zip":"","country":"","address":"","city":"","phone":"","street2":"","state":"","fax":"","state_code":""},"reference_invoice":{"reference_invoice_id":""},"includes_package_tracking_info":false,"approvers_list":[]}

SingleInvoiceResponse singleInvoiceResponseFromJson(String str) => SingleInvoiceResponse.fromJson(json.decode(str));
String singleInvoiceResponseToJson(SingleInvoiceResponse data) => json.encode(data.toJson());

class SingleInvoiceResponse {
  SingleInvoiceResponse({
    this.code,
    this.message,
    this.invoiceData,
  });

  SingleInvoiceResponse.fromJson(dynamic json) {
    code = json['code'];
    message = json['message'];
    invoiceData = json['invoice'] != null ? InvoiceData.fromJson(json['invoice']) : null;
  }
  num? code;
  String? message;
  InvoiceData? invoiceData;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['message'] = message;
    if (invoiceData != null) {
      map['invoice'] = invoiceData?.toJson();
    }
    return map;
  }
}

/// invoice_id : "4320524000000077289"
/// invoice_number : "INV-000001"
/// date : "2023-07-22"
/// due_date : "2023-07-22"
/// offline_created_date_with_time : ""
/// customer_id : "4320524000000077262"
/// customer_name : "Mr. Nowfal S"
/// customer_custom_fields : []
/// customer_custom_field_hash : {}
/// email : ""
/// currency_id : "4320524000000000099"
/// invoice_source : "Client"
/// currency_code : "INR"
/// currency_symbol : "₹"
/// currency_name_formatted : "INR- Indian Rupee"
/// status : "draft"
/// custom_fields : []
/// custom_field_hash : {}
/// recurring_invoice_id : ""
/// payment_terms : 0
/// payment_terms_label : "Due on Receipt"
/// payment_reminder_enabled : true
/// payment_made : 0.00
/// zcrm_potential_id : ""
/// zcrm_potential_name : ""
/// reference_number : "12345"
/// lock_details : {}
/// line_items : [{"line_item_id":"4320524000000077297","item_id":"","item_order":1,"name":"","description":"Test product","unit":"","quantity":1.00,"discount_amount":0.00,"discount":0.00,"discounts":[],"bcy_rate":1000.00,"rate":1000.00,"header_id":"","header_name":"","pricebook_id":"","tax_id":"","tax_name":"","tax_type":"tax","tax_percentage":0,"item_total":1000.00,"item_custom_fields":[],"documents":[],"image_document_id":"","line_item_taxes":[],"project_id":"","time_entry_ids":[],"expense_id":"","item_type":"","expense_receipt_name":"","purchase_rate":"","salesorder_item_id":"","cost_amount":0}]
/// exchange_rate : 1.00
/// is_autobill_enabled : false
/// inprocess_transaction_present : false
/// allow_partial_payments : false
/// price_precision : 2
/// sub_total : 1000.00
/// tax_total : 0.00
/// discount_total : 0.00
/// discount_percent : 0.00
/// discount : 0.00
/// discount_applied_on_amount : 0.00
/// discount_type : "item_level"
/// is_discount_before_tax : true
/// adjustment : 0.00
/// adjustment_description : "Adjustment"
/// shipping_charge_tax_id : ""
/// shipping_charge_tax_name : ""
/// shipping_charge_tax_type : ""
/// shipping_charge_tax_percentage : ""
/// shipping_charge_tax_exemption_id : ""
/// shipping_charge_tax_exemption_code : ""
/// shipping_charge_tax : ""
/// bcy_shipping_charge_tax : ""
/// shipping_charge_exclusive_of_tax : 0.000
/// shipping_charge_inclusive_of_tax : 0.000
/// shipping_charge_tax_formatted : ""
/// shipping_charge_exclusive_of_tax_formatted : "₹0.00"
/// shipping_charge_inclusive_of_tax_formatted : "₹0.00"
/// shipping_charge : 0.00
/// bcy_shipping_charge : 0.00
/// bcy_adjustment : 0.00
/// bcy_sub_total : 1000.00
/// bcy_discount_total : 0.00
/// bcy_tax_total : 0.00
/// bcy_total : 1000.000
/// total : 1000.00
/// balance : 1000.00
/// write_off_amount : 0.00
/// roundoff_value : 0.00
/// transaction_rounding_type : "no_rounding"
/// is_inclusive_tax : false
/// sub_total_inclusive_of_tax : 0.00
/// contact_category : ""
/// tax_rounding : "entity_level"
/// taxes : []
/// can_send_invoice_sms : true
/// payment_expected_date : ""
/// payment_discount : 0.00
/// stop_reminder_until_payment_expected_date : false
/// last_payment_date : ""
/// ach_supported : false
/// ach_payment_initiated : false
/// payment_options : {"payment_gateways":[]}
/// reader_offline_payment_initiated : false
/// contact_persons : []
/// attachment_name : ""
/// documents : []
/// computation_type : "basic"
/// late_fee : {"name":"","type":"percentage","rate":0.00,"amount":0.00,"frequency_type":"month"}
/// debit_notes : []
/// deliverychallans : []
/// ewaybills : []
/// dispatch_from_address : {}
/// is_eway_bill_required : false
/// can_generate_ewaybill_using_irn : true
/// merchant_id : ""
/// merchant_name : ""
/// ecomm_operator_id : ""
/// ecomm_operator_name : ""
/// salesorder_id : ""
/// salesorder_number : ""
/// salesorders : []
/// shipping_bills : []
/// contact_persons_details : [{"contact_person_id":"4320524000000077264","first_name":"Nowfal","last_name":"S","email":"","phone":"","mobile":"","is_primary_contact":true,"photo_url":"https://secure.gravatar.com/avatar/00000000000000000000000000000000?&d=mm"}]
/// salesperson_id : ""
/// salesperson_name : ""
/// is_emailed : false
/// reminders_sent : 0
/// last_reminder_sent_date : ""
/// next_reminder_date_formatted : ""
/// is_viewed_by_client : false
/// client_viewed_time : ""
/// submitter_id : ""
/// approver_id : ""
/// submitted_date : ""
/// submitted_by : ""
/// submitted_by_name : ""
/// submitted_by_email : ""
/// submitted_by_photo_url : ""
/// template_id : "4320524000000077162"
/// template_name : "Spreadsheet Template"
/// template_type : "excel"
/// notes : "Thanks for your business."
/// terms : ""
/// billing_address : {"street":"","address":"","street2":"","city":"","state":"","zip":"","country":"","fax":"","phone":"","attention":""}
/// shipping_address : {"street":"","address":"","street2":"","city":"","state":"","zip":"","country":"","fax":"","phone":"","attention":""}
/// invoice_url : "https://zohoinvoicepay.com/invoice/nowfal/secure?CInvoiceID=2-d956e017e6292da3c564b71ef59bbbfd489dab860f200127c1588cbe4757728dc84a53efdb8db99749e325a5134493916104d774697d3eb147434c7a113e03ab11e80a707f5b3196 "
/// subject_content : "Test Subject"
/// can_send_in_mail : false
/// created_time : "2023-07-22T20:43:43+0530"
/// last_modified_time : "2023-07-22T20:43:43+0530"
/// created_date : "2023-07-22"
/// created_by_id : "4320524000000077001"
/// last_modified_by_id : "4320524000000077001"
/// page_width : "8.27in"
/// page_height : "11.69in"
/// orientation : "portrait"
/// is_backorder : ""
/// sales_channel : "direct_sales"
/// is_pre_gst : false
/// type : "invoice"
/// color_code : ""
/// current_sub_status_id : ""
/// current_sub_status : "draft"
/// sub_statuses : []
/// reason_for_debit_note : "others"
/// estimate_id : ""
/// is_client_review_settings_enabled : false
/// unused_retainer_payments : 0.00
/// credits_applied : 0.00
/// tax_amount_withheld : 0.00
/// schedule_time : ""
/// no_of_copies : 1
/// show_no_of_copies : true
/// customer_default_billing_address : {"zip":"","country":"","address":"","city":"","phone":"","street2":"","state":"","fax":"","state_code":""}
/// reference_invoice : {"reference_invoice_id":""}
/// includes_package_tracking_info : false
/// approvers_list : []

InvoiceData invoiceFromJson(String str) => InvoiceData.fromJson(json.decode(str));
String invoiceToJson(InvoiceData data) => json.encode(data.toJson());

class InvoiceData {
  InvoiceData({
    this.invoiceId,
    this.invoiceNumber,
    this.date,
    this.dueDate,
    this.offlineCreatedDateWithTime,
    this.customerId,
    this.customerName,
    this.customerCustomFields,
    this.customerCustomFieldHash,
    this.email,
    this.currencyId,
    this.invoiceSource,
    this.currencyCode,
    this.currencySymbol,
    this.currencyNameFormatted,
    this.status,
    this.customFields,
    this.customFieldHash,
    this.recurringInvoiceId,
    this.paymentTerms,
    this.paymentTermsLabel,
    this.paymentReminderEnabled,
    this.paymentMade,
    this.zcrmPotentialId,
    this.zcrmPotentialName,
    this.referenceNumber,
    this.lockDetails,
    this.lineItems,
    this.exchangeRate,
    this.isAutobillEnabled,
    this.inprocessTransactionPresent,
    this.allowPartialPayments,
    this.pricePrecision,
    this.subTotal,
    this.taxTotal,
    this.discountTotal,
    this.discountPercent,
    this.discount,
    this.discountAppliedOnAmount,
    this.discountType,
    this.isDiscountBeforeTax,
    this.adjustment,
    this.adjustmentDescription,
    this.shippingChargeTaxId,
    this.shippingChargeTaxName,
    this.shippingChargeTaxType,
    this.shippingChargeTaxPercentage,
    this.shippingChargeTaxExemptionId,
    this.shippingChargeTaxExemptionCode,
    this.shippingChargeTax,
    this.bcyShippingChargeTax,
    this.shippingChargeExclusiveOfTax,
    this.shippingChargeInclusiveOfTax,
    this.shippingChargeTaxFormatted,
    this.shippingChargeExclusiveOfTaxFormatted,
    this.shippingChargeInclusiveOfTaxFormatted,
    this.shippingCharge,
    this.bcyShippingCharge,
    this.bcyAdjustment,
    this.bcySubTotal,
    this.bcyDiscountTotal,
    this.bcyTaxTotal,
    this.bcyTotal,
    this.total,
    this.balance,
    this.writeOffAmount,
    this.roundoffValue,
    this.transactionRoundingType,
    this.isInclusiveTax,
    this.subTotalInclusiveOfTax,
    this.contactCategory,
    this.taxRounding,
    this.taxes,
    this.canSendInvoiceSms,
    this.paymentExpectedDate,
    this.paymentDiscount,
    this.stopReminderUntilPaymentExpectedDate,
    this.lastPaymentDate,
    this.achSupported,
    this.achPaymentInitiated,
    this.paymentOptions,
    this.readerOfflinePaymentInitiated,
    this.contactPersons,
    this.attachmentName,
    this.documents,
    this.computationType,
    this.lateFee,
    this.debitNotes,
    this.deliverychallans,
    this.ewaybills,
    this.dispatchFromAddress,
    this.isEwayBillRequired,
    this.canGenerateEwaybillUsingIrn,
    this.merchantId,
    this.merchantName,
    this.ecommOperatorId,
    this.ecommOperatorName,
    this.salesorderId,
    this.salesorderNumber,
    this.salesorders,
    this.shippingBills,
    this.contactPersonsDetails,
    this.salespersonId,
    this.salespersonName,
    this.isEmailed,
    this.remindersSent,
    this.lastReminderSentDate,
    this.nextReminderDateFormatted,
    this.isViewedByClient,
    this.clientViewedTime,
    this.submitterId,
    this.approverId,
    this.submittedDate,
    this.submittedBy,
    this.submittedByName,
    this.submittedByEmail,
    this.submittedByPhotoUrl,
    this.templateId,
    this.templateName,
    this.templateType,
    this.notes,
    this.terms,
    this.billingAddress,
    this.shippingAddress,
    this.invoiceUrl,
    this.subjectContent,
    this.canSendInMail,
    this.createdTime,
    this.lastModifiedTime,
    this.createdDate,
    this.createdById,
    this.lastModifiedById,
    this.pageWidth,
    this.pageHeight,
    this.orientation,
    this.isBackorder,
    this.salesChannel,
    this.isPreGst,
    this.type,
    this.colorCode,
    this.currentSubStatusId,
    this.currentSubStatus,
    this.subStatuses,
    this.reasonForDebitNote,
    this.estimateId,
    this.isClientReviewSettingsEnabled,
    this.unusedRetainerPayments,
    this.creditsApplied,
    this.taxAmountWithheld,
    this.scheduleTime,
    this.noOfCopies,
    this.showNoOfCopies,
    this.customerDefaultBillingAddress,
    this.referenceInvoice,
    this.includesPackageTrackingInfo,
    this.approversList,
  });

  InvoiceData.fromJson(dynamic json) {
    invoiceId = json['invoice_id'];
    invoiceNumber = json['invoice_number'];
    date = json['date'];
    dueDate = json['due_date'];
    offlineCreatedDateWithTime = json['offline_created_date_with_time'];
    customerId = json['customer_id'];
    customerName = json['customer_name'];
    if (json['customer_custom_fields'] != null) {
      customerCustomFields = [];
      json['customer_custom_fields'].forEach((v) {
        // customerCustomFields?.add(Dynamic.fromJson(v));
      });
    }
    customerCustomFieldHash = json['customer_custom_field_hash'];
    email = json['email'];
    currencyId = json['currency_id'];
    invoiceSource = json['invoice_source'];
    currencyCode = json['currency_code'];
    currencySymbol = json['currency_symbol'];
    currencyNameFormatted = json['currency_name_formatted'];
    status = json['status'];
    if (json['custom_fields'] != null) {
      customFields = [];
      json['custom_fields'].forEach((v) {
        // customFields?.add(Dynamic.fromJson(v));
      });
    }
    customFieldHash = json['custom_field_hash'];
    recurringInvoiceId = json['recurring_invoice_id'];
    paymentTerms = json['payment_terms'];
    paymentTermsLabel = json['payment_terms_label'];
    paymentReminderEnabled = json['payment_reminder_enabled'];
    paymentMade = json['payment_made'];
    zcrmPotentialId = json['zcrm_potential_id'];
    zcrmPotentialName = json['zcrm_potential_name'];
    referenceNumber = json['reference_number'];
    lockDetails = json['lock_details'];
    if (json['line_items'] != null) {
      lineItems = [];
      json['line_items'].forEach((v) {
        lineItems?.add(LineItems.fromJson(v));
      });
    }
    exchangeRate = json['exchange_rate'];
    isAutobillEnabled = json['is_autobill_enabled'];
    inprocessTransactionPresent = json['inprocess_transaction_present'];
    allowPartialPayments = json['allow_partial_payments'];
    pricePrecision = json['price_precision'];
    subTotal = json['sub_total'];
    taxTotal = json['tax_total'];
    discountTotal = json['discount_total'];
    discountPercent = json['discount_percent'];
    discount = json['discount'];
    discountAppliedOnAmount = json['discount_applied_on_amount'];
    discountType = json['discount_type'];
    isDiscountBeforeTax = json['is_discount_before_tax'];
    adjustment = json['adjustment'];
    adjustmentDescription = json['adjustment_description'];
    shippingChargeTaxId = json['shipping_charge_tax_id'];
    shippingChargeTaxName = json['shipping_charge_tax_name'];
    shippingChargeTaxType = json['shipping_charge_tax_type'];
    shippingChargeTaxPercentage = json['shipping_charge_tax_percentage'];
    shippingChargeTaxExemptionId = json['shipping_charge_tax_exemption_id'];
    shippingChargeTaxExemptionCode = json['shipping_charge_tax_exemption_code'];
    shippingChargeTax = json['shipping_charge_tax'];
    bcyShippingChargeTax = json['bcy_shipping_charge_tax'];
    shippingChargeExclusiveOfTax = json['shipping_charge_exclusive_of_tax'];
    shippingChargeInclusiveOfTax = json['shipping_charge_inclusive_of_tax'];
    shippingChargeTaxFormatted = json['shipping_charge_tax_formatted'];
    shippingChargeExclusiveOfTaxFormatted = json['shipping_charge_exclusive_of_tax_formatted'];
    shippingChargeInclusiveOfTaxFormatted = json['shipping_charge_inclusive_of_tax_formatted'];
    shippingCharge = json['shipping_charge'];
    bcyShippingCharge = json['bcy_shipping_charge'];
    bcyAdjustment = json['bcy_adjustment'];
    bcySubTotal = json['bcy_sub_total'];
    bcyDiscountTotal = json['bcy_discount_total'];
    bcyTaxTotal = json['bcy_tax_total'];
    bcyTotal = json['bcy_total'];
    total = json['total'];
    balance = json['balance'];
    writeOffAmount = json['write_off_amount'];
    roundoffValue = json['roundoff_value'];
    transactionRoundingType = json['transaction_rounding_type'];
    isInclusiveTax = json['is_inclusive_tax'];
    subTotalInclusiveOfTax = json['sub_total_inclusive_of_tax'];
    contactCategory = json['contact_category'];
    taxRounding = json['tax_rounding'];
    if (json['taxes'] != null) {
      taxes = [];
      json['taxes'].forEach((v) {
        // taxes?.add(Dynamic.fromJson(v));
      });
    }
    canSendInvoiceSms = json['can_send_invoice_sms'];
    paymentExpectedDate = json['payment_expected_date'];
    paymentDiscount = json['payment_discount'];
    stopReminderUntilPaymentExpectedDate = json['stop_reminder_until_payment_expected_date'];
    lastPaymentDate = json['last_payment_date'];
    achSupported = json['ach_supported'];
    achPaymentInitiated = json['ach_payment_initiated'];
    paymentOptions = json['payment_options'] != null ? PaymentOptions.fromJson(json['payment_options']) : null;
    readerOfflinePaymentInitiated = json['reader_offline_payment_initiated'];
    if (json['contact_persons'] != null) {
      contactPersons = [];
      json['contact_persons'].forEach((v) {
        // contactPersons?.add(Dynamic.fromJson(v));
      });
    }
    attachmentName = json['attachment_name'];
    if (json['documents'] != null) {
      documents = [];
      json['documents'].forEach((v) {
        // documents?.add(Dynamic.fromJson(v));
      });
    }
    computationType = json['computation_type'];
    lateFee = json['late_fee'] != null ? LateFee.fromJson(json['late_fee']) : null;
    if (json['debit_notes'] != null) {
      debitNotes = [];
      json['debit_notes'].forEach((v) {
        // debitNotes?.add(Dynamic.fromJson(v));
      });
    }
    if (json['deliverychallans'] != null) {
      deliverychallans = [];
      json['deliverychallans'].forEach((v) {
        // deliverychallans?.add(Dynamic.fromJson(v));
      });
    }
    if (json['ewaybills'] != null) {
      ewaybills = [];
      json['ewaybills'].forEach((v) {
        // ewaybills?.add(Dynamic.fromJson(v));
      });
    }
    dispatchFromAddress = json['dispatch_from_address'];
    isEwayBillRequired = json['is_eway_bill_required'];
    canGenerateEwaybillUsingIrn = json['can_generate_ewaybill_using_irn'];
    merchantId = json['merchant_id'];
    merchantName = json['merchant_name'];
    ecommOperatorId = json['ecomm_operator_id'];
    ecommOperatorName = json['ecomm_operator_name'];
    salesorderId = json['salesorder_id'];
    salesorderNumber = json['salesorder_number'];
    if (json['salesorders'] != null) {
      salesorders = [];
      json['salesorders'].forEach((v) {
        // salesorders?.add(Dynamic.fromJson(v));
      });
    }
    if (json['shipping_bills'] != null) {
      shippingBills = [];
      json['shipping_bills'].forEach((v) {
        // shippingBills?.add(Dynamic.fromJson(v));
      });
    }
    if (json['contact_persons_details'] != null) {
      contactPersonsDetails = [];
      json['contact_persons_details'].forEach((v) {
        contactPersonsDetails?.add(ContactPersonsDetails.fromJson(v));
      });
    }
    salespersonId = json['salesperson_id'];
    salespersonName = json['salesperson_name'];
    isEmailed = json['is_emailed'];
    remindersSent = json['reminders_sent'];
    lastReminderSentDate = json['last_reminder_sent_date'];
    nextReminderDateFormatted = json['next_reminder_date_formatted'];
    isViewedByClient = json['is_viewed_by_client'];
    clientViewedTime = json['client_viewed_time'];
    submitterId = json['submitter_id'];
    approverId = json['approver_id'];
    submittedDate = json['submitted_date'];
    submittedBy = json['submitted_by'];
    submittedByName = json['submitted_by_name'];
    submittedByEmail = json['submitted_by_email'];
    submittedByPhotoUrl = json['submitted_by_photo_url'];
    templateId = json['template_id'];
    templateName = json['template_name'];
    templateType = json['template_type'];
    notes = json['notes'];
    terms = json['terms'];
    billingAddress = json['billing_address'] != null ? BillingAddress.fromJson(json['billing_address']) : null;
    shippingAddress = json['shipping_address'] != null ? ShippingAddress.fromJson(json['shipping_address']) : null;
    invoiceUrl = json['invoice_url'];
    subjectContent = json['subject_content'];
    canSendInMail = json['can_send_in_mail'];
    createdTime = json['created_time'];
    lastModifiedTime = json['last_modified_time'];
    createdDate = json['created_date'];
    createdById = json['created_by_id'];
    lastModifiedById = json['last_modified_by_id'];
    pageWidth = json['page_width'];
    pageHeight = json['page_height'];
    orientation = json['orientation'];
    isBackorder = json['is_backorder'];
    salesChannel = json['sales_channel'];
    isPreGst = json['is_pre_gst'];
    type = json['type'];
    colorCode = json['color_code'];
    currentSubStatusId = json['current_sub_status_id'];
    currentSubStatus = json['current_sub_status'];
    if (json['sub_statuses'] != null) {
      subStatuses = [];
      json['sub_statuses'].forEach((v) {
        // subStatuses?.add(Dynamic.fromJson(v));
      });
    }
    reasonForDebitNote = json['reason_for_debit_note'];
    estimateId = json['estimate_id'];
    isClientReviewSettingsEnabled = json['is_client_review_settings_enabled'];
    unusedRetainerPayments = json['unused_retainer_payments'];
    creditsApplied = json['credits_applied'];
    taxAmountWithheld = json['tax_amount_withheld'];
    scheduleTime = json['schedule_time'];
    noOfCopies = json['no_of_copies'];
    showNoOfCopies = json['show_no_of_copies'];
    customerDefaultBillingAddress = json['customer_default_billing_address'] != null
        ? CustomerDefaultBillingAddress.fromJson(json['customer_default_billing_address'])
        : null;
    referenceInvoice = json['reference_invoice'] != null ? ReferenceInvoice.fromJson(json['reference_invoice']) : null;
    includesPackageTrackingInfo = json['includes_package_tracking_info'];
    if (json['approvers_list'] != null) {
      approversList = [];
      json['approvers_list'].forEach((v) {
        // approversList?.add(Dynamic.fromJson(v));
      });
    }
  }
  String? invoiceId;
  String? invoiceNumber;
  String? date;
  String? dueDate;
  String? offlineCreatedDateWithTime;
  String? customerId;
  String? customerName;
  List<dynamic>? customerCustomFields;
  dynamic customerCustomFieldHash;
  String? email;
  String? currencyId;
  String? invoiceSource;
  String? currencyCode;
  String? currencySymbol;
  String? currencyNameFormatted;
  String? status;
  List<dynamic>? customFields;
  dynamic customFieldHash;
  String? recurringInvoiceId;
  num? paymentTerms;
  String? paymentTermsLabel;
  bool? paymentReminderEnabled;
  num? paymentMade;
  String? zcrmPotentialId;
  String? zcrmPotentialName;
  String? referenceNumber;
  dynamic lockDetails;
  List<LineItems>? lineItems;
  num? exchangeRate;
  bool? isAutobillEnabled;
  bool? inprocessTransactionPresent;
  bool? allowPartialPayments;
  num? pricePrecision;
  num? subTotal;
  num? taxTotal;
  num? discountTotal;
  num? discountPercent;
  num? discount;
  num? discountAppliedOnAmount;
  String? discountType;
  bool? isDiscountBeforeTax;
  num? adjustment;
  String? adjustmentDescription;
  String? shippingChargeTaxId;
  String? shippingChargeTaxName;
  String? shippingChargeTaxType;
  String? shippingChargeTaxPercentage;
  String? shippingChargeTaxExemptionId;
  String? shippingChargeTaxExemptionCode;
  String? shippingChargeTax;
  String? bcyShippingChargeTax;
  num? shippingChargeExclusiveOfTax;
  num? shippingChargeInclusiveOfTax;
  String? shippingChargeTaxFormatted;
  String? shippingChargeExclusiveOfTaxFormatted;
  String? shippingChargeInclusiveOfTaxFormatted;
  num? shippingCharge;
  num? bcyShippingCharge;
  num? bcyAdjustment;
  num? bcySubTotal;
  num? bcyDiscountTotal;
  num? bcyTaxTotal;
  num? bcyTotal;
  num? total;
  num? balance;
  num? writeOffAmount;
  num? roundoffValue;
  String? transactionRoundingType;
  bool? isInclusiveTax;
  num? subTotalInclusiveOfTax;
  String? contactCategory;
  String? taxRounding;
  List<dynamic>? taxes;
  bool? canSendInvoiceSms;
  String? paymentExpectedDate;
  num? paymentDiscount;
  bool? stopReminderUntilPaymentExpectedDate;
  String? lastPaymentDate;
  bool? achSupported;
  bool? achPaymentInitiated;
  PaymentOptions? paymentOptions;
  bool? readerOfflinePaymentInitiated;
  List<dynamic>? contactPersons;
  String? attachmentName;
  List<dynamic>? documents;
  String? computationType;
  LateFee? lateFee;
  List<dynamic>? debitNotes;
  List<dynamic>? deliverychallans;
  List<dynamic>? ewaybills;
  dynamic dispatchFromAddress;
  bool? isEwayBillRequired;
  bool? canGenerateEwaybillUsingIrn;
  String? merchantId;
  String? merchantName;
  String? ecommOperatorId;
  String? ecommOperatorName;
  String? salesorderId;
  String? salesorderNumber;
  List<dynamic>? salesorders;
  List<dynamic>? shippingBills;
  List<ContactPersonsDetails>? contactPersonsDetails;
  String? salespersonId;
  String? salespersonName;
  bool? isEmailed;
  num? remindersSent;
  String? lastReminderSentDate;
  String? nextReminderDateFormatted;
  bool? isViewedByClient;
  String? clientViewedTime;
  String? submitterId;
  String? approverId;
  String? submittedDate;
  String? submittedBy;
  String? submittedByName;
  String? submittedByEmail;
  String? submittedByPhotoUrl;
  String? templateId;
  String? templateName;
  String? templateType;
  String? notes;
  String? terms;
  BillingAddress? billingAddress;
  ShippingAddress? shippingAddress;
  String? invoiceUrl;
  String? subjectContent;
  bool? canSendInMail;
  String? createdTime;
  String? lastModifiedTime;
  String? createdDate;
  String? createdById;
  String? lastModifiedById;
  String? pageWidth;
  String? pageHeight;
  String? orientation;
  String? isBackorder;
  String? salesChannel;
  bool? isPreGst;
  String? type;
  String? colorCode;
  String? currentSubStatusId;
  String? currentSubStatus;
  List<dynamic>? subStatuses;
  String? reasonForDebitNote;
  String? estimateId;
  bool? isClientReviewSettingsEnabled;
  num? unusedRetainerPayments;
  num? creditsApplied;
  num? taxAmountWithheld;
  String? scheduleTime;
  num? noOfCopies;
  bool? showNoOfCopies;
  CustomerDefaultBillingAddress? customerDefaultBillingAddress;
  ReferenceInvoice? referenceInvoice;
  bool? includesPackageTrackingInfo;
  List<dynamic>? approversList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['invoice_id'] = invoiceId;
    map['invoice_number'] = invoiceNumber;
    map['date'] = date;
    map['due_date'] = dueDate;
    map['offline_created_date_with_time'] = offlineCreatedDateWithTime;
    map['customer_id'] = customerId;
    map['customer_name'] = customerName;
    if (customerCustomFields != null) {
      map['customer_custom_fields'] = customerCustomFields?.map((v) => v.toJson()).toList();
    }
    map['customer_custom_field_hash'] = customerCustomFieldHash;
    map['email'] = email;
    map['currency_id'] = currencyId;
    map['invoice_source'] = invoiceSource;
    map['currency_code'] = currencyCode;
    map['currency_symbol'] = currencySymbol;
    map['currency_name_formatted'] = currencyNameFormatted;
    map['status'] = status;
    if (customFields != null) {
      map['custom_fields'] = customFields?.map((v) => v.toJson()).toList();
    }
    map['custom_field_hash'] = customFieldHash;
    map['recurring_invoice_id'] = recurringInvoiceId;
    map['payment_terms'] = paymentTerms;
    map['payment_terms_label'] = paymentTermsLabel;
    map['payment_reminder_enabled'] = paymentReminderEnabled;
    map['payment_made'] = paymentMade;
    map['zcrm_potential_id'] = zcrmPotentialId;
    map['zcrm_potential_name'] = zcrmPotentialName;
    map['reference_number'] = referenceNumber;
    map['lock_details'] = lockDetails;
    if (lineItems != null) {
      map['line_items'] = lineItems?.map((v) => v.toJson()).toList();
    }
    map['exchange_rate'] = exchangeRate;
    map['is_autobill_enabled'] = isAutobillEnabled;
    map['inprocess_transaction_present'] = inprocessTransactionPresent;
    map['allow_partial_payments'] = allowPartialPayments;
    map['price_precision'] = pricePrecision;
    map['sub_total'] = subTotal;
    map['tax_total'] = taxTotal;
    map['discount_total'] = discountTotal;
    map['discount_percent'] = discountPercent;
    map['discount'] = discount;
    map['discount_applied_on_amount'] = discountAppliedOnAmount;
    map['discount_type'] = discountType;
    map['is_discount_before_tax'] = isDiscountBeforeTax;
    map['adjustment'] = adjustment;
    map['adjustment_description'] = adjustmentDescription;
    map['shipping_charge_tax_id'] = shippingChargeTaxId;
    map['shipping_charge_tax_name'] = shippingChargeTaxName;
    map['shipping_charge_tax_type'] = shippingChargeTaxType;
    map['shipping_charge_tax_percentage'] = shippingChargeTaxPercentage;
    map['shipping_charge_tax_exemption_id'] = shippingChargeTaxExemptionId;
    map['shipping_charge_tax_exemption_code'] = shippingChargeTaxExemptionCode;
    map['shipping_charge_tax'] = shippingChargeTax;
    map['bcy_shipping_charge_tax'] = bcyShippingChargeTax;
    map['shipping_charge_exclusive_of_tax'] = shippingChargeExclusiveOfTax;
    map['shipping_charge_inclusive_of_tax'] = shippingChargeInclusiveOfTax;
    map['shipping_charge_tax_formatted'] = shippingChargeTaxFormatted;
    map['shipping_charge_exclusive_of_tax_formatted'] = shippingChargeExclusiveOfTaxFormatted;
    map['shipping_charge_inclusive_of_tax_formatted'] = shippingChargeInclusiveOfTaxFormatted;
    map['shipping_charge'] = shippingCharge;
    map['bcy_shipping_charge'] = bcyShippingCharge;
    map['bcy_adjustment'] = bcyAdjustment;
    map['bcy_sub_total'] = bcySubTotal;
    map['bcy_discount_total'] = bcyDiscountTotal;
    map['bcy_tax_total'] = bcyTaxTotal;
    map['bcy_total'] = bcyTotal;
    map['total'] = total;
    map['balance'] = balance;
    map['write_off_amount'] = writeOffAmount;
    map['roundoff_value'] = roundoffValue;
    map['transaction_rounding_type'] = transactionRoundingType;
    map['is_inclusive_tax'] = isInclusiveTax;
    map['sub_total_inclusive_of_tax'] = subTotalInclusiveOfTax;
    map['contact_category'] = contactCategory;
    map['tax_rounding'] = taxRounding;
    if (taxes != null) {
      map['taxes'] = taxes?.map((v) => v.toJson()).toList();
    }
    map['can_send_invoice_sms'] = canSendInvoiceSms;
    map['payment_expected_date'] = paymentExpectedDate;
    map['payment_discount'] = paymentDiscount;
    map['stop_reminder_until_payment_expected_date'] = stopReminderUntilPaymentExpectedDate;
    map['last_payment_date'] = lastPaymentDate;
    map['ach_supported'] = achSupported;
    map['ach_payment_initiated'] = achPaymentInitiated;
    if (paymentOptions != null) {
      map['payment_options'] = paymentOptions?.toJson();
    }
    map['reader_offline_payment_initiated'] = readerOfflinePaymentInitiated;
    if (contactPersons != null) {
      map['contact_persons'] = contactPersons?.map((v) => v.toJson()).toList();
    }
    map['attachment_name'] = attachmentName;
    if (documents != null) {
      map['documents'] = documents?.map((v) => v.toJson()).toList();
    }
    map['computation_type'] = computationType;
    if (lateFee != null) {
      map['late_fee'] = lateFee?.toJson();
    }
    if (debitNotes != null) {
      map['debit_notes'] = debitNotes?.map((v) => v.toJson()).toList();
    }
    if (deliverychallans != null) {
      map['deliverychallans'] = deliverychallans?.map((v) => v.toJson()).toList();
    }
    if (ewaybills != null) {
      map['ewaybills'] = ewaybills?.map((v) => v.toJson()).toList();
    }
    map['dispatch_from_address'] = dispatchFromAddress;
    map['is_eway_bill_required'] = isEwayBillRequired;
    map['can_generate_ewaybill_using_irn'] = canGenerateEwaybillUsingIrn;
    map['merchant_id'] = merchantId;
    map['merchant_name'] = merchantName;
    map['ecomm_operator_id'] = ecommOperatorId;
    map['ecomm_operator_name'] = ecommOperatorName;
    map['salesorder_id'] = salesorderId;
    map['salesorder_number'] = salesorderNumber;
    if (salesorders != null) {
      map['salesorders'] = salesorders?.map((v) => v.toJson()).toList();
    }
    if (shippingBills != null) {
      map['shipping_bills'] = shippingBills?.map((v) => v.toJson()).toList();
    }
    if (contactPersonsDetails != null) {
      map['contact_persons_details'] = contactPersonsDetails?.map((v) => v.toJson()).toList();
    }
    map['salesperson_id'] = salespersonId;
    map['salesperson_name'] = salespersonName;
    map['is_emailed'] = isEmailed;
    map['reminders_sent'] = remindersSent;
    map['last_reminder_sent_date'] = lastReminderSentDate;
    map['next_reminder_date_formatted'] = nextReminderDateFormatted;
    map['is_viewed_by_client'] = isViewedByClient;
    map['client_viewed_time'] = clientViewedTime;
    map['submitter_id'] = submitterId;
    map['approver_id'] = approverId;
    map['submitted_date'] = submittedDate;
    map['submitted_by'] = submittedBy;
    map['submitted_by_name'] = submittedByName;
    map['submitted_by_email'] = submittedByEmail;
    map['submitted_by_photo_url'] = submittedByPhotoUrl;
    map['template_id'] = templateId;
    map['template_name'] = templateName;
    map['template_type'] = templateType;
    map['notes'] = notes;
    map['terms'] = terms;
    if (billingAddress != null) {
      map['billing_address'] = billingAddress?.toJson();
    }
    if (shippingAddress != null) {
      map['shipping_address'] = shippingAddress?.toJson();
    }
    map['invoice_url'] = invoiceUrl;
    map['subject_content'] = subjectContent;
    map['can_send_in_mail'] = canSendInMail;
    map['created_time'] = createdTime;
    map['last_modified_time'] = lastModifiedTime;
    map['created_date'] = createdDate;
    map['created_by_id'] = createdById;
    map['last_modified_by_id'] = lastModifiedById;
    map['page_width'] = pageWidth;
    map['page_height'] = pageHeight;
    map['orientation'] = orientation;
    map['is_backorder'] = isBackorder;
    map['sales_channel'] = salesChannel;
    map['is_pre_gst'] = isPreGst;
    map['type'] = type;
    map['color_code'] = colorCode;
    map['current_sub_status_id'] = currentSubStatusId;
    map['current_sub_status'] = currentSubStatus;
    if (subStatuses != null) {
      map['sub_statuses'] = subStatuses?.map((v) => v.toJson()).toList();
    }
    map['reason_for_debit_note'] = reasonForDebitNote;
    map['estimate_id'] = estimateId;
    map['is_client_review_settings_enabled'] = isClientReviewSettingsEnabled;
    map['unused_retainer_payments'] = unusedRetainerPayments;
    map['credits_applied'] = creditsApplied;
    map['tax_amount_withheld'] = taxAmountWithheld;
    map['schedule_time'] = scheduleTime;
    map['no_of_copies'] = noOfCopies;
    map['show_no_of_copies'] = showNoOfCopies;
    if (customerDefaultBillingAddress != null) {
      map['customer_default_billing_address'] = customerDefaultBillingAddress?.toJson();
    }
    if (referenceInvoice != null) {
      map['reference_invoice'] = referenceInvoice?.toJson();
    }
    map['includes_package_tracking_info'] = includesPackageTrackingInfo;
    if (approversList != null) {
      map['approvers_list'] = approversList?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// reference_invoice_id : ""

ReferenceInvoice referenceInvoiceFromJson(String str) => ReferenceInvoice.fromJson(json.decode(str));
String referenceInvoiceToJson(ReferenceInvoice data) => json.encode(data.toJson());

class ReferenceInvoice {
  ReferenceInvoice({
    this.referenceInvoiceId,
  });

  ReferenceInvoice.fromJson(dynamic json) {
    referenceInvoiceId = json['reference_invoice_id'];
  }
  String? referenceInvoiceId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['reference_invoice_id'] = referenceInvoiceId;
    return map;
  }
}

/// zip : ""
/// country : ""
/// address : ""
/// city : ""
/// phone : ""
/// street2 : ""
/// state : ""
/// fax : ""
/// state_code : ""

CustomerDefaultBillingAddress customerDefaultBillingAddressFromJson(String str) =>
    CustomerDefaultBillingAddress.fromJson(json.decode(str));
String customerDefaultBillingAddressToJson(CustomerDefaultBillingAddress data) => json.encode(data.toJson());

class CustomerDefaultBillingAddress {
  CustomerDefaultBillingAddress({
    this.zip,
    this.country,
    this.address,
    this.city,
    this.phone,
    this.street2,
    this.state,
    this.fax,
    this.stateCode,
  });

  CustomerDefaultBillingAddress.fromJson(dynamic json) {
    zip = json['zip'];
    country = json['country'];
    address = json['address'];
    city = json['city'];
    phone = json['phone'];
    street2 = json['street2'];
    state = json['state'];
    fax = json['fax'];
    stateCode = json['state_code'];
  }
  String? zip;
  String? country;
  String? address;
  String? city;
  String? phone;
  String? street2;
  String? state;
  String? fax;
  String? stateCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['zip'] = zip;
    map['country'] = country;
    map['address'] = address;
    map['city'] = city;
    map['phone'] = phone;
    map['street2'] = street2;
    map['state'] = state;
    map['fax'] = fax;
    map['state_code'] = stateCode;
    return map;
  }
}

/// street : ""
/// address : ""
/// street2 : ""
/// city : ""
/// state : ""
/// zip : ""
/// country : ""
/// fax : ""
/// phone : ""
/// attention : ""

ShippingAddress shippingAddressFromJson(String str) => ShippingAddress.fromJson(json.decode(str));
String shippingAddressToJson(ShippingAddress data) => json.encode(data.toJson());

class ShippingAddress {
  ShippingAddress({
    this.street,
    this.address,
    this.street2,
    this.city,
    this.state,
    this.zip,
    this.country,
    this.fax,
    this.phone,
    this.attention,
  });

  ShippingAddress.fromJson(dynamic json) {
    street = json['street'];
    address = json['address'];
    street2 = json['street2'];
    city = json['city'];
    state = json['state'];
    zip = json['zip'];
    country = json['country'];
    fax = json['fax'];
    phone = json['phone'];
    attention = json['attention'];
  }
  String? street;
  String? address;
  String? street2;
  String? city;
  String? state;
  String? zip;
  String? country;
  String? fax;
  String? phone;
  String? attention;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['street'] = street;
    map['address'] = address;
    map['street2'] = street2;
    map['city'] = city;
    map['state'] = state;
    map['zip'] = zip;
    map['country'] = country;
    map['fax'] = fax;
    map['phone'] = phone;
    map['attention'] = attention;
    return map;
  }
}

/// street : ""
/// address : ""
/// street2 : ""
/// city : ""
/// state : ""
/// zip : ""
/// country : ""
/// fax : ""
/// phone : ""
/// attention : ""

BillingAddress billingAddressFromJson(String str) => BillingAddress.fromJson(json.decode(str));
String billingAddressToJson(BillingAddress data) => json.encode(data.toJson());

class BillingAddress {
  BillingAddress({
    this.street,
    this.address,
    this.street2,
    this.city,
    this.state,
    this.zip,
    this.country,
    this.fax,
    this.phone,
    this.attention,
  });

  BillingAddress.fromJson(dynamic json) {
    street = json['street'];
    address = json['address'];
    street2 = json['street2'];
    city = json['city'];
    state = json['state'];
    zip = json['zip'];
    country = json['country'];
    fax = json['fax'];
    phone = json['phone'];
    attention = json['attention'];
  }
  String? street;
  String? address;
  String? street2;
  String? city;
  String? state;
  String? zip;
  String? country;
  String? fax;
  String? phone;
  String? attention;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['street'] = street;
    map['address'] = address;
    map['street2'] = street2;
    map['city'] = city;
    map['state'] = state;
    map['zip'] = zip;
    map['country'] = country;
    map['fax'] = fax;
    map['phone'] = phone;
    map['attention'] = attention;
    return map;
  }
}

/// contact_person_id : "4320524000000077264"
/// first_name : "Nowfal"
/// last_name : "S"
/// email : ""
/// phone : ""
/// mobile : ""
/// is_primary_contact : true
/// photo_url : "https://secure.gravatar.com/avatar/00000000000000000000000000000000?&d=mm"

ContactPersonsDetails contactPersonsDetailsFromJson(String str) => ContactPersonsDetails.fromJson(json.decode(str));
String contactPersonsDetailsToJson(ContactPersonsDetails data) => json.encode(data.toJson());

class ContactPersonsDetails {
  ContactPersonsDetails({
    this.contactPersonId,
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.mobile,
    this.isPrimaryContact,
    this.photoUrl,
  });

  ContactPersonsDetails.fromJson(dynamic json) {
    contactPersonId = json['contact_person_id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    phone = json['phone'];
    mobile = json['mobile'];
    isPrimaryContact = json['is_primary_contact'];
    photoUrl = json['photo_url'];
  }
  String? contactPersonId;
  String? firstName;
  String? lastName;
  String? email;
  String? phone;
  String? mobile;
  bool? isPrimaryContact;
  String? photoUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['contact_person_id'] = contactPersonId;
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['email'] = email;
    map['phone'] = phone;
    map['mobile'] = mobile;
    map['is_primary_contact'] = isPrimaryContact;
    map['photo_url'] = photoUrl;
    return map;
  }
}

/// name : ""
/// type : "percentage"
/// rate : 0.00
/// amount : 0.00
/// frequency_type : "month"

LateFee lateFeeFromJson(String str) => LateFee.fromJson(json.decode(str));
String lateFeeToJson(LateFee data) => json.encode(data.toJson());

class LateFee {
  LateFee({
    this.name,
    this.type,
    this.rate,
    this.amount,
    this.frequencyType,
  });

  LateFee.fromJson(dynamic json) {
    name = json['name'];
    type = json['type'];
    rate = json['rate'];
    amount = json['amount'];
    frequencyType = json['frequency_type'];
  }
  String? name;
  String? type;
  num? rate;
  num? amount;
  String? frequencyType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['type'] = type;
    map['rate'] = rate;
    map['amount'] = amount;
    map['frequency_type'] = frequencyType;
    return map;
  }
}

/// payment_gateways : []

PaymentOptions paymentOptionsFromJson(String str) => PaymentOptions.fromJson(json.decode(str));
String paymentOptionsToJson(PaymentOptions data) => json.encode(data.toJson());

class PaymentOptions {
  PaymentOptions({
    this.paymentGateways,
  });

  PaymentOptions.fromJson(dynamic json) {
    if (json['payment_gateways'] != null) {
      paymentGateways = [];
      json['payment_gateways'].forEach((v) {
        // paymentGateways?.add(Dynamic.fromJson(v));
      });
    }
  }
  List<dynamic>? paymentGateways;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (paymentGateways != null) {
      map['payment_gateways'] = paymentGateways?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// line_item_id : "4320524000000077297"
/// item_id : ""
/// item_order : 1
/// name : ""
/// description : "Test product"
/// unit : ""
/// quantity : 1.00
/// discount_amount : 0.00
/// discount : 0.00
/// discounts : []
/// bcy_rate : 1000.00
/// rate : 1000.00
/// header_id : ""
/// header_name : ""
/// pricebook_id : ""
/// tax_id : ""
/// tax_name : ""
/// tax_type : "tax"
/// tax_percentage : 0
/// item_total : 1000.00
/// item_custom_fields : []
/// documents : []
/// image_document_id : ""
/// line_item_taxes : []
/// project_id : ""
/// time_entry_ids : []
/// expense_id : ""
/// item_type : ""
/// expense_receipt_name : ""
/// purchase_rate : ""
/// salesorder_item_id : ""
/// cost_amount : 0

LineItems lineItemsFromJson(String str) => LineItems.fromJson(json.decode(str));
String lineItemsToJson(LineItems data) => json.encode(data.toJson());

class LineItems {
  LineItems({
    this.lineItemId,
    this.itemId,
    this.itemOrder,
    this.name,
    this.description,
    this.unit,
    this.quantity,
    this.discountAmount,
    this.discount,
    this.discounts,
    this.bcyRate,
    this.rate,
    this.headerId,
    this.headerName,
    this.pricebookId,
    this.taxId,
    this.taxName,
    this.taxType,
    this.taxPercentage,
    this.itemTotal,
    this.itemCustomFields,
    this.documents,
    this.imageDocumentId,
    this.lineItemTaxes,
    this.projectId,
    this.timeEntryIds,
    this.expenseId,
    this.itemType,
    this.expenseReceiptName,
    this.purchaseRate,
    this.salesorderItemId,
    this.costAmount,
  });

  LineItems.fromJson(dynamic json) {
    lineItemId = json['line_item_id'];
    itemId = json['item_id'];
    itemOrder = json['item_order'];
    name = json['name'];
    description = json['description'];
    unit = json['unit'];
    quantity = json['quantity'];
    discountAmount = json['discount_amount'];
    discount = json['discount'];
    if (json['discounts'] != null) {
      discounts = [];
      json['discounts'].forEach((v) {
        // discounts?.add(Dynamic.fromJson(v));
      });
    }
    bcyRate = json['bcy_rate'];
    rate = json['rate'];
    headerId = json['header_id'];
    headerName = json['header_name'];
    pricebookId = json['pricebook_id'];
    taxId = json['tax_id'];
    taxName = json['tax_name'];
    taxType = json['tax_type'];
    taxPercentage = json['tax_percentage'];
    itemTotal = json['item_total'];
    if (json['item_custom_fields'] != null) {
      itemCustomFields = [];
      json['item_custom_fields'].forEach((v) {
        // itemCustomFields?.add(Dynamic.fromJson(v));
      });
    }
    if (json['documents'] != null) {
      documents = [];
      json['documents'].forEach((v) {
        // documents?.add(Dynamic.fromJson(v));
      });
    }
    imageDocumentId = json['image_document_id'];
    if (json['line_item_taxes'] != null) {
      lineItemTaxes = [];
      json['line_item_taxes'].forEach((v) {
        // lineItemTaxes?.add(Dynamic.fromJson(v));
      });
    }
    projectId = json['project_id'];
    if (json['time_entry_ids'] != null) {
      timeEntryIds = [];
      json['time_entry_ids'].forEach((v) {
        // timeEntryIds?.add(Dynamic.fromJson(v));
      });
    }
    expenseId = json['expense_id'];
    itemType = json['item_type'];
    expenseReceiptName = json['expense_receipt_name'];
    purchaseRate = json['purchase_rate'];
    salesorderItemId = json['salesorder_item_id'];
    costAmount = json['cost_amount'];
  }
  String? lineItemId;
  String? itemId;
  num? itemOrder;
  String? name;
  String? description;
  String? unit;
  num? quantity;
  num? discountAmount;
  num? discount;
  List<dynamic>? discounts;
  num? bcyRate;
  num? rate;
  String? headerId;
  String? headerName;
  String? pricebookId;
  String? taxId;
  String? taxName;
  String? taxType;
  num? taxPercentage;
  num? itemTotal;
  List<dynamic>? itemCustomFields;
  List<dynamic>? documents;
  String? imageDocumentId;
  List<dynamic>? lineItemTaxes;
  String? projectId;
  List<dynamic>? timeEntryIds;
  String? expenseId;
  String? itemType;
  String? expenseReceiptName;
  String? purchaseRate;
  String? salesorderItemId;
  num? costAmount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['line_item_id'] = lineItemId;
    map['item_id'] = itemId;
    map['item_order'] = itemOrder;
    map['name'] = name;
    map['description'] = description;
    map['unit'] = unit;
    map['quantity'] = quantity;
    map['discount_amount'] = discountAmount;
    map['discount'] = discount;
    if (discounts != null) {
      map['discounts'] = discounts?.map((v) => v.toJson()).toList();
    }
    map['bcy_rate'] = bcyRate;
    map['rate'] = rate;
    map['header_id'] = headerId;
    map['header_name'] = headerName;
    map['pricebook_id'] = pricebookId;
    map['tax_id'] = taxId;
    map['tax_name'] = taxName;
    map['tax_type'] = taxType;
    map['tax_percentage'] = taxPercentage;
    map['item_total'] = itemTotal;
    if (itemCustomFields != null) {
      map['item_custom_fields'] = itemCustomFields?.map((v) => v.toJson()).toList();
    }
    if (documents != null) {
      map['documents'] = documents?.map((v) => v.toJson()).toList();
    }
    map['image_document_id'] = imageDocumentId;
    if (lineItemTaxes != null) {
      map['line_item_taxes'] = lineItemTaxes?.map((v) => v.toJson()).toList();
    }
    map['project_id'] = projectId;
    if (timeEntryIds != null) {
      map['time_entry_ids'] = timeEntryIds?.map((v) => v.toJson()).toList();
    }
    map['expense_id'] = expenseId;
    map['item_type'] = itemType;
    map['expense_receipt_name'] = expenseReceiptName;
    map['purchase_rate'] = purchaseRate;
    map['salesorder_item_id'] = salesorderItemId;
    map['cost_amount'] = costAmount;
    return map;
  }
}
