// import 'package:flutter/material.dart';
//
// class MFormField<T> extends FormField {
//   /// Creates a single form field.
//   ///
//   /// The [builder] argument must not be null.
//   const MFormField({
//     Key? key,
//     required this.builder,
//     this.onSaved,
//     this.validator,
//     this.initialValue,
//     @Deprecated(
//       'Use autovalidateMode parameter which provides more specific '
//           'behavior related to auto validation. '
//           'This feature was deprecated after v1.19.0.',
//     )
//     this.autovalidate = false,
//     this.enabled = true,
//     AutovalidateMode? autovalidateMode,
//     this.restorationId,
//   }) : assert(builder != null),
//         assert(
//         autovalidate == false ||
//             autovalidate == true && autovalidateMode == null,
//         'autovalidate and autovalidateMode should not be used together.',
//         ),
//         autovalidateMode = autovalidateMode ??
//             (autovalidate ? AutovalidateMode.always : AutovalidateMode.disabled),
//         super(key: key);
//
//   /// An optional method to call with the final value when the form is saved via
//   /// [FormState.save].
//   final FormFieldSetter<T>? onSaved;
//
//   /// An optional method that validates an input. Returns an error string to
//   /// display if the input is invalid, or null otherwise.
//   ///
//   /// The returned value is exposed by the [FormFieldState.errorText] property.
//   /// The [TextFormField] uses this to override the [InputDecoration.errorText]
//   /// value.
//   ///
//   /// Alternating between error and normal state can cause the height of the
//   /// [TextFormField] to change if no other subtext decoration is set on the
//   /// field. To create a field whose height is fixed regardless of whether or
//   /// not an error is displayed, either wrap the  [TextFormField] in a fixed
//   /// height parent like [SizedBox], or set the [InputDecoration.helperText]
//   /// parameter to a space.
//   final FormFieldValidator<T>? validator;
//
//   /// Function that returns the widget representing this form field. It is
//   /// passed the form field state as input, containing the current value and
//   /// validation state of this field.
//   final FormFieldBuilder<T> builder;
//
//   /// An optional value to initialize the form field to, or null otherwise.
//   final T? initialValue;
//
//   /// Whether the form is able to receive user input.
//   ///
//   /// Defaults to true. If [autovalidateMode] is not [AutovalidateMode.disabled],
//   /// the field will be auto validated. Likewise, if this field is false, the widget
//   /// will not be validated regardless of [autovalidateMode].
//   final bool enabled;
//
//   /// Used to enable/disable this form field auto validation and update its
//   /// error text.
//   ///
//   /// {@template flutter.widgets.FormField.autovalidateMode}
//   /// If [AutovalidateMode.onUserInteraction] this form field will only
//   /// auto-validate after its content changes, if [AutovalidateMode.always] it
//   /// will auto validate even without user interaction and
//   /// if [AutovalidateMode.disabled] the auto validation will be disabled.
//   ///
//   /// Defaults to [AutovalidateMode.disabled] if `autovalidate` is false which
//   /// means no auto validation will occur. If `autovalidate` is true then this
//   /// is set to [AutovalidateMode.always] for backward compatibility.
//   /// {@endtemplate}
//   final AutovalidateMode autovalidateMode;
//
//   /// Used to enable/disable auto validation and update their error
//   /// text.
//   @Deprecated(
//     'Use autovalidateMode parameter which provides more specific '
//         'behavior related to auto validation. '
//         'This feature was deprecated after v1.19.0.',
//   )
//   final bool autovalidate;
//
//   /// Restoration ID to save and restore the state of the form field.
//   ///
//   /// Setting the restoration ID to a non-null value results in whether or not
//   /// the form field validation persists.
//   ///
//   /// The state of this widget is persisted in a [RestorationBucket] claimed
//   /// from the surrounding [RestorationScope] using the provided restoration ID.
//   ///
//   /// See also:
//   ///
//   ///  * [RestorationManager], which explains how state restoration works in
//   ///    Flutter.
//   final String? restorationId;
//
//   @override
//   _FormFieldSwitchState createState() => _FormFieldSwitchState();
// }
//
// class _FormFieldSwitchState<T> extends FormFieldState<MFormField> {
//   late T? _value = widget.initialValue;
//   final RestorableStringN _errorText = RestorableStringN(null);
//   final RestorableBool _hasInteractedByUser = RestorableBool(false);
//
//   /// The current value of the form field.
//   T? get value => _value;
//
//   /// The current validation error returned by the [FormField.validator]
//   /// callback, or null if no errors have been triggered. This only updates when
//   /// [validate] is called.
//   String? get errorText => _errorText.value;
//
//   /// True if this field has any validation errors.
//   bool get hasError => _errorText.value != null;
//
//   /// True if the current value is valid.
//   ///
//   /// This will not set [errorText] or [hasError] and it will not update
//   /// error display.
//   ///
//   /// See also:
//   ///
//   ///  * [validate], which may update [errorText] and [hasError].
//   bool get isValid => widget.validator?.call(_value) == null;
//
//   /// Calls the [FormField]'s onSaved method with the current value.
//   void save() {
//     widget.onSaved?.call(value);
//   }
//
//   /// Resets the field to its initial value.
//   void reset() {
//     setState(() {
//       _value = widget.initialValue;
//       _hasInteractedByUser.value = false;
//       _errorText.value = null;
//     });
//     Form.of(context)?._fieldDidChange();
//   }
//
//   /// Calls [FormField.validator] to set the [errorText]. Returns true if there
//   /// were no errors.
//   ///
//   /// See also:
//   ///
//   ///  * [isValid], which passively gets the validity without setting
//   ///    [errorText] or [hasError].
//   bool validate() {
//     setState(() {
//       _validate();
//     });
//     return !hasError;
//   }
//
//   void _validate() {
//     if (widget.validator != null)
//       _errorText.value = widget.validator!(_value);
//   }
//
//   /// Updates this field's state to the new value. Useful for responding to
//   /// child widget changes, e.g. [Slider]'s [Slider.onChanged] argument.
//   ///
//   /// Triggers the [Form.onChanged] callback and, if [Form.autovalidateMode] is
//   /// [AutovalidateMode.always] or [AutovalidateMode.onUserInteraction],
//   /// revalidates all the fields of the form.
//   void didChange(T? value) {
//     setState(() {
//       _value = value;
//       _hasInteractedByUser.value = true;
//     });
//     Form.of(context)?._fieldDidChange();
//   }
//
//   /// Sets the value associated with this form field.
//   ///
//   /// This method should only be called by subclasses that need to update
//   /// the form field value due to state changes identified during the widget
//   /// build phase, when calling `setState` is prohibited. In all other cases,
//   /// the value should be set by a call to [didChange], which ensures that
//   /// `setState` is called.
//   @protected
//   void setValue(T? value) {
//     _value = value;
//   }
//
//   @override
//   String? get restorationId => widget.restorationId;
//
//   @override
//   void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
//     registerForRestoration(_errorText, 'error_text');
//     registerForRestoration(_hasInteractedByUser, 'has_interacted_by_user');
//   }
//
//   @override
//   void deactivate() {
//     Form.of(context)?._unregister(this);
//     super.deactivate();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (widget.enabled) {
//       switch (widget.autovalidateMode) {
//         case AutovalidateMode.always:
//           _validate();
//           break;
//         case AutovalidateMode.onUserInteraction:
//           if (_hasInteractedByUser.value) {
//             _validate();
//           }
//           break;
//         case AutovalidateMode.disabled:
//           break;
//       }
//     }
//     Form.of(context)?._register(this);
//     return widget.builder(this);
//   }
// }
