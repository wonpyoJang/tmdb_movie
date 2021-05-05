class UnitHelper {
  static getPixel({required double em}) {
    return em / 16;
  }

  static getTextHeightRatio({required double heightInPixel, required double fontSizeInPixel}) {
    return heightInPixel / fontSizeInPixel;
  }
}