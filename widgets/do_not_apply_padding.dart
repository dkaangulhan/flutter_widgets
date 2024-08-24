import 'package:flutter/material.dart';

/// This widget marks the child widget to not apply padding.
class DoNotApplyPadding extends StatelessWidget {
  /// This widget marks the child widget to not apply padding.
  const DoNotApplyPadding({
    required this.child,
    super.key,
  });

  /// The child widget to not apply padding.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return child;
  }
}

/// Padding extension for list of widgets.
///
/// For example, Container is not applied padding while Text is applied padding
/// of 12 in the following example:
/// ```dart
/// [
///  DoNotApplyPadding(
///   child: Container(
///   ),
///  ),
///  Text(
///   'Title',
///  ),
/// ].doNotApplyPadding(
/// EdgeInsets.all(12),
/// )
/// ```
///
extension PaddingExtension on List<Widget> {
  /// This extension method marks the child widgets to not apply padding.
  List<Widget> managedPadding(EdgeInsets padding) {
    return map((e) {
      if (e is DoNotApplyPadding) {
        return e;
      } else {
        return Padding(padding: padding, child: e);
      }
    }).toList();
  }
}
