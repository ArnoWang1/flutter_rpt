library flutter_rpt;

import 'dart:ui';

///
/// responsive width or height calculator
/// use in flutter
/// example
/// void main() {
///     ResponsiveUnit.init(); or ResponsiveUnit.init(standardPt = 750);
///     runApp()......;
/// }
///
class ResponsiveUnit {
  //screen width
  static double screenWidth;

  //screen height
  static double screenHeight;

  //status bar height
  static double statusBarHeight;

  //device responsive point
  static double _rpt;

  ///
  /// init method
  /// standardPt is ui designer use width,default is 375
  ///
  static void init({int standardPt = 375}) {
    //device physical size
    final _physicalWidth = window.physicalSize.width;
    final _physicalHeight = window.physicalSize.height;

    //device dpr
    final _dpr = window.devicePixelRatio;

    //status bar height
    statusBarHeight = window.padding.top / _dpr;

    //device screen size
    screenWidth = _physicalWidth / _dpr;
    screenHeight = _physicalHeight / _dpr;

    //device responsive point
    _rpt = screenWidth / standardPt;
  }
}

///
/// fit int type
///
extension IntFit on int {
  ///
  /// responsive width or height point
  ///
  double get rpt {
    return ResponsiveUnit._rpt * (this.toDouble());
  }

  ///
  /// percentage width
  ///
  double get vw {
    if (this > 100) {
      return ResponsiveUnit.screenWidth;
    }
    return ResponsiveUnit.screenWidth / 100 * this;
  }

  ///
  /// percentage height
  ///
  double get vh {
    if (this > 100) {
      return ResponsiveUnit.screenHeight;
    }
    return ResponsiveUnit.screenHeight / 100 * this;
  }
}

///
/// fit double type
///
extension DoubleFit on double {
  ///
  /// responsive width or height point
  ///
  double get rpt {
    return ResponsiveUnit._rpt * this;
  }

  ///
  /// percentage width
  ///
  double get vw {
    if (this > 100) {
      return ResponsiveUnit.screenWidth;
    }
    return ResponsiveUnit.screenWidth / 100 * this;
  }

  ///
  /// percentage height
  ///
  double get vh {
    if (this > 100) {
      return ResponsiveUnit.screenHeight;
    }
    return ResponsiveUnit.screenHeight / 100 * this;
  }
}
