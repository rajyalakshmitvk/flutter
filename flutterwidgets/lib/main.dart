import 'dart:io' show File;
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    Uint8List? webBytes;

    Future<void> pickFile() async {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.image,
        withData: true, // required for web to get Uint8List
      );

      if (result != null && result.files.single.bytes != null) {
        setState(() {
          webBytes = result.files.single.bytes;
        });
      }
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false, // remove the debug banner
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Combined Demo App'),
        ),
        body: SingleChildScrollView( // scrollable in case content is long
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 1️⃣ Hello World + Button
                const Text('Hello, World!'),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    print('Click!');
                  },
                  child: const Text('A button'),
                ),

                const SizedBox(height: 40),

                // 2️⃣ Image Examples
                const Text(
                  'Image from assets:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Image.asset(
                  'assets/images/roses.jpg',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),

                const SizedBox(height: 20),

                const Text(
                  'Image from file (Windows Desktop):',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                if (kIsWeb)
                  Image.memory(
                    webBytes,
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  )
                else
                  Image.file(
                    File(r'F:\roses.jpg'),
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                const SizedBox(height: 20),

                const Text(
                  'Image from network:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Image.network(
                  'https://www.gstatic.com/flutter-onestack-prototype/genui/example_1.jpg',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),

                const SizedBox(height: 40),

                // 3️⃣ Decorated Container
                Container(
                  margin: const EdgeInsets.all(20.0),
                  padding: const EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    color: Colors.blue, // background color
                    border: Border.all(color: Colors.red, width: 3), // border
                    borderRadius: BorderRadius.circular(15), // rounded corners
                  ),
                  child: const Text(
                    'Padded & Margined container',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontFamily: 'Tahoma',
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
