void main() {
  List<int> nums = [1, 2, 3, 4, 5];
  int maxVal = findMaximum(nums);
  print(maxVal);

  print(">>>>>>>");

  Map<int, int> testMap = {1: 1, 2: 2, 3: 3, 4: 4};
  printKeyValuePair(testMap);
  print(">>>>>>>");
  
  List<int> firstList = [1, 2, 3, 4, 2, 3, 5, 6, 1];
  List<int> uniqueList = removeDuplicates(firstList);
  print(firstList);
  print(uniqueList);
}

int findMaximum(List<int> nums) {
  int maxValue = nums[0];
  
  for (int num in nums) {
    if (num > maxValue) {
      maxValue = num;
    }
  }
  return maxValue;
}

void printKeyValuePair(Map<int, int> map) {
  map.forEach((key, value) {
    print('$key: $value');
  });
}

List<int> removeDuplicates(List<int> list) {
  List<int> uniqueList = [];
  for (int val in list) {
    if (!uniqueList.contains(val)) {
      uniqueList.add(val);
    }
  }
  return uniqueList;
}
