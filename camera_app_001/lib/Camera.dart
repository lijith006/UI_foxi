import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class Camera extends StatefulWidget {
  const Camera({super.key});

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  final List<Uint8List> _capturedImages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Center(
            child: Text(
          'Gallery ',
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey,
                image: _capturedImages.isNotEmpty
                    ? DecorationImage(
                        image: MemoryImage(_capturedImages.last),
                        fit: BoxFit.cover,
                      )
                    : const DecorationImage(
                        image: AssetImage('assets/images/preview.png'),
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        select_image();
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.blue,
                          size: 50,
                        ),
                      )),
                ],
              ),
            ),
            if (_capturedImages.isNotEmpty)
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 8.0,
                  ),
                  itemCount: _capturedImages.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 20,
                      height: 20,
                      margin: const EdgeInsets.all(4.0),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: MemoryImage(_capturedImages[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }

  void select_image() async {
    Uint8List img = await pick_image(ImageSource.camera);
    setState(() {
      _capturedImages.add(img);
    });
  }

  Future<void> saveDataToFile(Uint8List data) async {
    Directory directory = await getApplicationDocumentsDirectory();

    // folder name
    String folderPath = '${directory.path}/newfolder';
    Directory(folderPath).createSync(recursive: true);

    // timestamp to the file name
    String timestamp = DateTime.now().millisecondsSinceEpoch.toString();
    String filePath = '$folderPath/example_$timestamp.png';

    // Writing data to the file
    File file = File(filePath);
    await file.writeAsBytes(data);

    print('Data saved to: $filePath');
  }

  Future<void> saveAndDisplayGrid() async {
    if (_capturedImages.isNotEmpty) {
      await saveDataToFile(_capturedImages.last);
      setState(() {
        _capturedImages.add(_capturedImages.last);
        _capturedImages.clear();
      });
    } else {
      print('No image to save.');
    }
  }

  pick_image(ImageSource source) async {
    final ImagePicker imagePicker = ImagePicker();
    XFile? _file = await imagePicker.pickImage(source: source);
    if (_file != null) {
      return await _file.readAsBytes();
    } else {
      print('no images');
      return null;
    }
  }
}
