class UnitHelper {
  static double getPixel({required double em}) {
    return em / 16.0;
  }

  static double getTextHeightRatio({required double heightInPixel, required double fontSizeInPixel}) {
    return heightInPixel / fontSizeInPixel;
  }
}