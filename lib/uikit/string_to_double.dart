double reformatStringToDouble (String value) {
  double doubleValue = double.tryParse(value.replaceAll('%',''))!;
  return doubleValue / 100;
}