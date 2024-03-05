import 'dart:async';

Future<String> fetchData() async {
  await Future.delayed(const Duration(seconds: 2));
  return 'Data fetched successfully!';
}

Future<void> main() async {
  print('Program starting...');

  // Exercise 2
  String data = await fetchData();
  print(data);

  // Exercise 3
  fetchData().then((data) {
    print('Data from Future.then: $data');
  }).catchError((error) {
    print('Error: $error');
  });

  print('Program complete.');
}
