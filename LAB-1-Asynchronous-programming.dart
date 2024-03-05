import 'dart:async';

Future<String> fetchData() async {
  // Simulate asynchronous operation (e.g., network request)
  await Future.delayed(const Duration(seconds: 2));
  return 'Data fetched successfully!';
}

Future<void> main() async {
  print('Program starting...');

  // Use await to pause execution until `fetchData` is complete
  String data = await fetchData();

  print(data);
  print('Program complete.');
}
