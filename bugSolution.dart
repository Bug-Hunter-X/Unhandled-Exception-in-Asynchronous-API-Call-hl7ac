```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        return jsonData;
      } on FormatException catch (e) {
        print('Error decoding JSON: $e');
        // Handle JSON decoding error
        return null; // Or throw a custom exception
      }
    } else {
      print('Failed to load data. Status code: ${response.statusCode}');
      // Handle HTTP error (e.g., display an error message to the user)
      return null;
    }
  } catch (e) {
    print('Unexpected error fetching data: $e');
    // Handle unexpected exceptions (e.g., network errors)
    return null; // Or throw a custom exception
  }
}

void main() async {
  final data = await fetchData();
  if (data != null) {
    print('Data fetched successfully: $data');
  } else {
    print('Failed to fetch data.');
  }
}
```