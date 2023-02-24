import 'package:clima/services/loction.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {

    location locationo = location();

    await locationo.getcurrentloction();

    print(locationo.latitude);
    print(locationo.longitude);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            getLocation();
            //Get the current location
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }


}