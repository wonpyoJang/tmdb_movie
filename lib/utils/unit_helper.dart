class UnitHelper {
  static emToPixel(double em) {
    return em / 16;
  }

  static getTextHeightRatio(double heightInPixel, double fontSizeInPixel) {
    return heightInPixel / fontSizeInPixel;
  }
}