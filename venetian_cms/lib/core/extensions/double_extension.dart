
import '../../ui/shared/size_fit.dart';

extension DoubleFit on double {
  double get px {
    return CMSSizeFit.setPx(this);
  }

  double get rpx {
    return CMSSizeFit.setRpx(this);
  }
}