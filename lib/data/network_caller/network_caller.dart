// // import 'dart:convert';
// //
// // import 'package:flutter/cupertino.dart';
// // import 'package:http/http.dart';
// //
// // import '../model_class/network_response.dart';
// //
// // class NetworkCaller {
// //   static Future<NetworkResponse> getRequest(String url) async {
// //     Response response = await get(Uri.parse(url));
// //     try {
// //
// //       if (response.statusCode == 200) {
// //         final decodedData = jsonDecode(response.body);
// //         return NetworkResponse(
// //           statusCode: response.statusCode,
// //           isSuccess: true,
// //           responseData: decodedData,
// //         );
// //       } else {
// //         return NetworkResponse(
// //           statusCode: response.statusCode,
// //           isSuccess: false,
// //         );
// //       }
// //     } catch (e) {
// //       return NetworkResponse(
// //         statusCode: -1,
// //         isSuccess: false,
// //         errorMassage: e.toString(),
// //       );
// //     }
// //   }
// //
// //   static Future<NetworkResponse> postRequest(
// //       String url, {
// //         Map<String, dynamic>? body,
// //       }) async {
// //     Response response = await post(
// //       Uri.parse(url),
// //       body: jsonEncode(body),
// //       headers: {'Content-type': 'Application/json'},
// //     );
// //     try {
// //       debugPrint(url);
// //       debugPrint(body.toString());
// //
// //       debugPrint(response.statusCode.toString());
// //       debugPrint(response.body);
// //       if (response.statusCode == 200 || response.statusCode == 201) {
// //         final decodedData = jsonDecode(response.body);
// //         return NetworkResponse(
// //           statusCode: response.statusCode,
// //           isSuccess: true,
// //           responseData: decodedData,
// //         );
// //       } else {
// //         return NetworkResponse(
// //           statusCode: response.statusCode,
// //           isSuccess: false,
// //         );
// //       }
// //     } catch (e) {
// //       return NetworkResponse(
// //         statusCode: -1,
// //         isSuccess: false,
// //         errorMassage: e.toString(),
// //       );
// //     }
// //   }
// // }
// import 'dart:convert';
//
// import 'package:http/http.dart';
//
// import '../model_class/network_response.dart';
//
// class NetworkCaller {
//   static Future<NetworkResponse> getRequest ( String url) async{
//     Response response = await get(Uri.parse(url));
//     try{
//       if(response.statusCode == 200){
//         final decodedData = jsonDecode(response.body);
//         return NetworkResponse(statusCode: response.statusCode,
//           isSuccess: true, responseData: decodedData, );
//
//
//       }else{
//         return NetworkResponse(statusCode: response.statusCode,
//             isSuccess: false);
//
//       }
//     }
//     catch (e){
//       return NetworkResponse(statusCode: -1,
//         isSuccess: false,
//         responseData: null,
//       );
//
//     }
//
//   }
//   static Future<NetworkResponse> postRequest ( String url, {Map<String, dynamic>? body}) async{
//     Response response = await post(Uri.parse(url),body: jsonEncode(body),headers: {'Content-type':'Application/json'},);
//     try{
//       if(response.statusCode == 200 || response.statusCode ==201){
//         final decodedData = jsonDecode(response.body);
//         return NetworkResponse(statusCode: response.statusCode,
//           isSuccess: true, responseData: decodedData, );
//
//
//       }else{
//         return NetworkResponse(statusCode: response.statusCode,
//             isSuccess: false);
//
//       }
//     }
//     catch (e){
//       return NetworkResponse(statusCode: -1,
//         isSuccess: false,
//         responseData: null,
//       );
//
//     }
//
//   }
//
// }
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

import '../model_class/network_response.dart';

class NetworkCaller {
  static Future<NetworkResponse> getRequest(String url) async {
    try {
      Response response = await get(Uri.parse(url));
      if (response.statusCode == 200) {
        final decodedData = jsonDecode(response.body);
        return NetworkResponse(
          statusCode: response.statusCode,
          isSuccess: true,
          responseData: decodedData,
        );
      } else {
        return NetworkResponse(
          statusCode: response.statusCode,
          isSuccess: false,
        );
      }
    } catch (e) {
      return NetworkResponse(
        statusCode: -1,
        isSuccess: false,
        errorMassage: e.toString(),
      );
    }
  }

  static Future<NetworkResponse> postRequest(
      String url, {
        Map<String, dynamic>? body,
      }) async {
    try {
      debugPrint(url);
      debugPrint(body.toString());
      Response response = await post(
        Uri.parse(url),
        body: jsonEncode(body),
        headers: {'Content-type': 'Application/json'},
      );
      debugPrint(response.statusCode.toString());
      debugPrint(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final decodedData = jsonDecode(response.body);
        return NetworkResponse(
          statusCode: response.statusCode,
          isSuccess: true,
          responseData: decodedData,
        );
      } else {
        return NetworkResponse(
          statusCode: response.statusCode,
          isSuccess: false,
        );
      }
    } catch (e) {
      return NetworkResponse(
        statusCode: -1,
        isSuccess: false,
        errorMassage: e.toString(),
      );
    }
  }
}
