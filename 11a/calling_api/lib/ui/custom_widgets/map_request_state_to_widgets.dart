import 'package:calling_api/helpers/cubit_helpers/generic/request_state.dart';
import 'package:calling_api/ui/custom_widgets/custom_loading.dart';
import 'package:calling_api/ui/custom_widgets/custom_snack_bar.dart';
import 'package:flutter/material.dart';

typedef RequestedHandler<T> = void Function(T);

typedef ApiErrorHandler = void Function(int statusCode);
typedef LocalErrorHandler = void Function(String message);

void mapRequestStateToWidgets<T>(
    {required BuildContext context,
    required RequestState<T> state,
    required RequestedHandler<T> successHandler,
    Function()? requesting,
    ApiErrorHandler? apiErrorHandler,
    LocalErrorHandler? localErrorHandler}) {
  state.maybeWhen(
      orElse: () => state.maybeWhen(
          requesting: requesting ??
              () {
                CustomLoadingDialog.loading(context: context);
              },
          localError: localErrorHandler ??
              (message) {
                Navigator.of(context).pop();
                CustomSnackBar.fromErrorMessage(
                    context: context, message: message);
              },
          apiError: apiErrorHandler ??
              (statusCode) {
                Navigator.of(context).pop();
                CustomSnackBar.fromErrorResponseBody(
                    context: context, statusCode: statusCode);
              },
          requested: successHandler,
          orElse: () {}));
}
