import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

// Light
const borderColor = Color(0xFF44475A);
const sidebarColor = Color(0xFFfaf8f7);
const backgroundStartColor = Color(0xFFFFFFFF);
const backgroundEndColor = Color(0xFFFFFFFF);

// Dark
// const borderColor = Color(0xFF44475A);
// const sidebarColor = Color(0xFF282828);
// const backgroundStartColor = Color(0xFF1e1e1e);
// final backgroundEndColor = Color(0xFF1e1e1e);

final buttonColors = WindowButtonColors(
    iconNormal: const Color(0xFF805306),
    mouseOver: const Color(0xFFF6A00C),
    mouseDown: const Color(0xFF805306),
    iconMouseOver: const Color(0xFF805306),
    iconMouseDown: const Color(0xFFFFD500));

final closeButtonColors = WindowButtonColors(
    mouseOver: const Color(0xFFD32F2F),
    mouseDown: const Color(0xFFB71C1C),
    iconNormal: const Color(0xFF805306),
    iconMouseOver: Colors.white);
