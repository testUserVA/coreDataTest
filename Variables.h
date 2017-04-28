//
//  Variables.h
//  Ledoc
//
//  Created by daro on 22/01/14.
//  Copyright (c) 2014 daro. All rights reserved.
//

#import <Foundation/Foundation.h>


//For notification
#define NOTIFY_REFRESH @"refresh_list"
#define NOTIFY_DETAIL @"detail"
#define NOTIFY_INCREMENT @"increment"

#define NOTIFY_DETAIL_DEVIATION @"detail_deviation"
#define NOTIFY_DEVIATION_REFRESH @"refresh_deviation_list"
#define NOTIFY_DEVIATION_DOWNLOAD_PREVIEW_PHOTO @"deviation_download_preview_photo"

//For settings
#define SETTINGS_USER_LOGIN @"user_login"
#define SETTINGS_USER_PSWD @"user_pswd"
#define SETTINGS_USER_ID @"user_id"
#define SETTINGS_ID @"user_id_in_employer"

//data for api
#define SERVER_API @"http://51.255.43.172:8080"

/// Shared strings ///
#define ID_GET_FILE @"get_file"
#define API_GET_FILE @"/seam/resource/ledoc_API/attachment/download"

/// ALL MODULES ///
#define ID_DASHOBARD_NEW_ELEMENTS @"id_dashobard_new_elements_count"
#define API_DASHOBARD_NEW_ELEMENTS @"/seam/resource/ledoc_API/overview/newElements" // module name and "/unarchive is added later"

#define ID_UNARCHIVE_ALL_MODULES @"id_unarchive_all_modules"
#define API_UNARCHIVE_ALL_MODULES @"/seam/resource/ledoc_API/" // module name and "/unarchive is added later"

#define ID_ATTACHMENT_LIST @"id_atachment_list_all_modules"
#define API_ATTACHMENT_LIST @"/seam/resource/ledoc_API/attachment/getAttachmentList"

#define ID_CHECK_ID @"id_check_object_id_after_scan"
#define API_CHECK_ID @"/seam/resource/ledoc_API/%@/checkid"


#define SUPPLIER_DOES_NOT_EXIST @"SupplierDoesNotExist"
#define EMPLOYEE_DOES_NOT_EXIST @"EmployeeDoesNotExist"
#define LOCATION_DOES_NOT_EXIST @"LocationDoesNotExist"

#define UNKNOWN_API_ERROR @"UnkownAPIError"

//API id function
//////////////////////////////////////////////Equipment/////////////////////////////////////
#define ID_LOGIN @"login"
#define ID_LOGOUT @"logout"

#define ID_EQUIPMENT_LIST @"list"
#define ID_EQUIPMENT_DETAIL @"detail"
#define ID_EQUIPMENT_SEARCH_FILTER @"search_filter"

#define ID_EQUIPMENT_ADD_POST @"add_equipment_post"
#define ID_EQUIPMENT_EDIT_POST @"edit_equipment_post"
#define ID_EQUIPMENT_EDIT_MULTIPLE_ELEMENTS @"edit_multiple"

#define ID_ADD_MONITOR @"add_monitor"
#define ID_REMOVE_MONITOR @"remove_monitor"

#define ID_ARCHIVE @"archive"

#define ID_QUICK_REVIEW @"quick_review"
#define ID_TAKE_A_REVIEW @"take_a_review"
#define ID_PREPARE_REIVEW @"prepare_review"

#define ID_LOAN_INFO @"equ_loan_info"
#define ID_LOAN @"equ_loan"
#define ID_RETURN @"equ_return"

#define ID_DOWNLOAD_IMAGE @"download_image"
#define ID_DOWNLOAD_DEV_PREVIEW_IMAGE @"download_deviation_preview_image"
#define ID_UPLOAD_IMAGE @"upload_image"

#define ID_EQUIPMENT_DOCUMENTATIONS @"equipment_documentattions"
#define ID_EQUIPMENT_ATTACHEMENT_BY_ID @"equipment_documentattions_by_id"

#define API_LOGIN @"/seam/resource/ledoc_API/identity/login"
#define API_LOGOUT @"/seam/resource/ledoc_API/identity/logout"

#define API_ARCHIVE @"/seam/resource/ledoc_API/equipment/archive"

#define API_ADD_MONITOR @"/seam/resource/ledoc_API/monitoring/add"
#define API_REMOVE_MONITOR @"/seam/resource/ledoc_API/monitoring/remove"

#define API_EQUIPMENT_LIST @"/seam/resource/ledoc_API/equipment/list"
#define API_EQUIPMENT_DETAIL @"/seam/resource/ledoc_API/equipment/details"

#define API_LOAN_INFO @"/seam/resource/ledoc_API/equipment/loanInfo"
#define API_LOAN @"/seam/resource/ledoc_API/equipment/loan"
#define API_RETURN @"/seam/resource/ledoc_API/equipment/return"

#define API_QUICK_REVIEW @"/seam/resource/ledoc_API/review/quickReview"
#define API_TAKE_A_REVIEW @"/seam/resource/ledoc_API/review/save"
#define API_PREPARE_REVIEW @"/seam/resource/ledoc_API/review/prepare"

#define API_ADD_EQUIPMENT_POST @"/seam/resource/ledoc_API/equipment/edit"
#define API_EDIT_EQUIPMENT_POST @"/seam/resource/ledoc_API/equipment/edit"

#define API_DOWNLOAD_IMAGE @"/seam/resource/ledoc_API/attachment/download"
#define API_UPLOAD_IMAGE @"/seam/resource/ledoc_API/attachment/upload"

#define API_EQUIPMENT_DOCUMENTATIONS @"/seam/resource/ledoc_API/equipment/documentation"
#define API_DOWNLOAD_ATTACHMENT_BY_ID @"/seam/resource/ledoc_API/attachment/downloadById"

//////////////////////////////////////////////Deviation/////////////////////////////////////

// functions ID's
#define ID_IS_NEW_MAIN_PHOTO @"is_new_main_photo"
#define ID_DEVIATION_LIST @"list_deviation"
#define ID_DEVIATION_DETAIL @"detail_deviation"
#define ID_ADD_DEVIATION @"add_deviation"
#define ID_EDIT_DEVIATION @"edit_deviation"
#define ID_DEVIATION_MONITOR @"dev_monitor"
#define ID_REMOVE_DEVIATION_MONITOR @"dev_monitor_remove"
#define ID_DEVIATION_ARCHIVE @"dev_archive"
#define ID_DEVIATION_SOLVE @"dev_solve"
#define ID_DEVIATION_ADD_EDIT_MULTIPLE_ELEMENTS @"edit_multiple_deviations"
#define ID_DEVIATION_DOCUMENTATION_LIST @"dev_documentation_list"
#define ID_DEVIATION_ACTIVITY_LIST @"dev_activity_list"
#define ID_DEVIATION_MAIL_WITH_ATTACHEMNT_SEND @"dev_mail_with_attachment_send"
#define ID_DEVIATION_ADD_COMMENT @"dev_post_deviation_comment"
#define ID_DEVIATION_THUMBNAILS @"dev_get_deviation_thumbnails"
#define ID_DEVIATION_MULTI_UPLOAD_PHOTOS @"dev_post_multi_photos"


// API URL's
#define API_IS_NEW_MAIN_PHOTO @"/seam/resource/ledoc_API/attachment/isNewest"
#define API_DEVIATION_DETAIL @"/seam/resource/ledoc_API/deviation/details"
#define API_DEVIATION_LIST @"/seam/resource/ledoc_API/deviation/list"
#define API_ADD_EDIT_DEVIATION @"/seam/resource/ledoc_API/deviation/edit"
#define API_ARCHIVE_DEVIATION @"/seam/resource/ledoc_API/deviation/archive"
#define API_MONITOR_DEVIATION @"/seam/resource/ledoc_API/monitoring/add"
#define API_REMOVE_MONITOR_DEVIATION @"/seam/resource/ledoc_API/monitoring/remove"
#define API_DEVIATION_SOLVE @"/seam/resource/ledoc_API/deviation/solve"
#define API_DEVIATION_DOCUMENTATION_LIST @"/seam/resource/ledoc_API/deviation/documentation"
#define API_DEVIATION_ACTIVITY_LIST @"/seam/resource/ledoc_API/deviation/activity"
#define API_DEVIATION_MAIL_WITH_ATTACHEMNT_SEND @"/seam/resource/ledoc_API/deviation/sendAsMailAttachment"
#define API_DEVIATION_ADD_COMMENT @"/seam/resource/ledoc_API/deviation/addComment"
#define API_DEVIATION_THUMBNAILS @"/seam/resource/ledoc_API/deviation/thumbnails"
#define API_DEVIATION_MULTI_UPLOAD_PHOTOS @"/seam/resource/ledoc_API/attachment/multiUpload"

////////////////////////////////////////Documents module///////////////////////////////////////

// functions ID's
#define ID_REGULAR_DOCUMENT_LIST @"list_regular_document"
#define ID_STANDARD_DOCUMENT_LIST @"list_standard_docuemtn"
#define ID_DOCUMENT_DETAIL @"detail_document"
#define ID_ADD_DOCUMENT @"add_document"
#define ID_EDIT_DOCUMENT @"edit_document"
#define ID_DOCUMENT_MONITOR @"document_monitor"
#define ID_REMOVE_DOCUMENT_MONITOR @"document_monitor_remove"
#define ID_DOCUMENT_ARCHIVE @"document_archive"
#define ID_REGULAR_DOCUMENT_ADD_EDIT_MULTIPLE_ELEMENTS @"edit_multiple_regular_docuements"
#define ID_DOCUMENT_LOG_LIST @"document_log_list"
#define ID_DOCUMENT_UPLOAD_FILE @"document_upload_file"
#define ID_DOCUMENT_LOG_AS_READ @"document_log_as_read"

// API URL's
#define API_DOCUMENT_DETAIL @"/seam/resource/ledoc_API/document/details"
#define API_REGULAR_DOCUMENT_LIST @"/seam/resource/ledoc_API/document/companyDocumentsList"
#define API_STANDARD_DOCUMENT_LIST @"/seam/resource/ledoc_API/document/standardDocumentsList"
#define API_REGULAR_DOCUMENT_ADD_EDIT_MULTIPLE_ELEMENTS @"/seam/resource/ledoc_API/document/edit"
#define API_ARCHIVE_DOCUMENT @"/seam/resource/ledoc_API/document/archive"
#define API_MONITOR_DOCUMENT @"/seam/resource/ledoc_API/monitoring/add"
#define API_REMOVE_MONITOR_DOCUMENT @"/seam/resource/ledoc_API/monitoring/remove"
#define API_DOCUMENT_LOG_LIST @"/seam/resource/ledoc_API/document/activity"
#define API_DOCUMENT_UPLOAD_FILE @"/seam/resource/ledoc_API/attachment/upload"
#define API_DOCUMENT_LOG_AS_READ @"/seam/resource/ledoc_API/document/readDocument"
