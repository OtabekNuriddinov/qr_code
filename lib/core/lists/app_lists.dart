import 'package:flutter/material.dart';
import '../../models/nav_item.dart';
import '../components/colored.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

sealed class AppLists{

  static const List<NavItem> navItems = [
    NavItem(icon: Icons.link, label: "Website"),
    NavItem(icon: Icons.upload_file, label: "Upload a file"),
    NavItem(icon: Icons.message_outlined, label: "Text message"),
    NavItem(icon: Icons.image_outlined, label: "Image"),
    NavItem(icon: Icons.camera, label: "Google Doc"),
    NavItem(icon: Icons.camera_alt_outlined, label: "Instagram"),
    NavItem(icon: Icons.facebook, label: "Facebook"),
    NavItem(icon: Icons.play_circle_outline, label: "YouTube"),
    NavItem(icon: Icons.wifi, label: "Wifi"),
    NavItem(icon: Icons.email, label: 'Email'),
  ];

  static const patterns = [
    Icon(Icons.pages, color: Colors.white, size: 30),
    Icon(Icons.padding_outlined, color: Colors.white, size: 30),
    Icon(Icons.ac_unit, color: Colors.white, size: 30),
    Icon(Icons.snapchat_sharp, color: Colors.white, size: 30)
  ];
  
  static const colors = [
    Colored(color: Colors.yellow),
    Colored(color: Colors.green),
    Colored(color: Colors.blueAccent),
    Colored(color: Colors.red)
  ];

  static const logos = [
    FaIcon(FontAwesomeIcons.facebook, color: Colors.blue, size: 30),
    FaIcon(FontAwesomeIcons.instagram, color: Colors.purple, size: 30),
    FaIcon(FontAwesomeIcons.twitter, color: Colors.lightBlue, size: 30),
    FaIcon(FontAwesomeIcons.github, color: Colors.white, size: 30)
  ];
}