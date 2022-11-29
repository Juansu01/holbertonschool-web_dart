List<double> convertToF(List<double> temperaturesInC) {
    List<double> temperaturesInF = temperaturesInC.map((temperature) {
        return double.parse((temperature * 9 / 5 + 32).toStringAsFixed(2));
    }).toList();
    return temperaturesInF;
}
