import 'package:flutter_demo/shared/size_fit.dart';

extension IntFit on int {
  double get px {
    return BYSizeFit.setPx(this.toDouble());
  }

  double get rpx {
    return BYSizeFit.setRpx(this.toDouble());
  }
}
