import 'package:flutter_demo/shared/size_fit.dart';

extension DoubleFit on double {
  double get px {
    return BYSizeFit.setPx(this);
  }

  double get rpx {
    return BYSizeFit.setRpx(this);
  }
}
