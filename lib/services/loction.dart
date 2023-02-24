import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:clima/services/network.dart';




class location {
  late double latitude;
  late double longitude;

  Future<void> getcurrentloction() async {
    try {
      await Geolocator.checkPermission();
      await Geolocator.requestPermission();
      LocationPermission permissions = await Geolocator.requestPermission();
      LocationPermission permission = await Geolocator.checkPermission();
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;


    } catch (e) {
      print(e);
    }
  }






}