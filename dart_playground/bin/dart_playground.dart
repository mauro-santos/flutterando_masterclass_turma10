void main(List<String> arguments) async {
  for (double i = 0.0; i < 1.0; i = i + 0.1) {
    //await Future.delayed(Duration(milliseconds: 100));
    print(doubleLerp(100, 300, i));
  }
}

double doubleLerp(double start, double end, double interpolation) {
  return start + (end - start) * interpolation;
}
