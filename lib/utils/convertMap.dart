Map<String, String> convertMap(Map<String, dynamic> inputMap) {
  final Map<String, String> outputMap = {};

  List<String> nulledKeys =[];
  inputMap.forEach((key, value) {
    if(value==null){
      nulledKeys.add(key);
    }
  });

  nulledKeys.forEach((element) {
    inputMap.remove(element);
  });

  inputMap.forEach((key, value) {
    outputMap[key] = value.toString();
  });

  return outputMap;
}