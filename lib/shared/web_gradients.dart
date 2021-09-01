import 'dart:math';

import 'package:amanda_longo_esteticista/shared/web_colors.dart';
import 'package:flutter/material.dart';

class WebGradients {
  static final linear = LinearGradient(colors: [
    WebColors.secondary,
    WebColors.primary,
  ], stops: [
    0.0,
    0.695
  ], transform: GradientRotation(2.13959913 * pi));

  static final linearLeft = LinearGradient(colors: [
    WebColors.primary,
    WebColors.secondary,
  ], stops: [
    0.0,
    0.695
  ], transform: GradientRotation(2.13959913 * pi));
}
