import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListViewPage(),
    );
  }
}

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<String> titleList = [
    'Dentist',
    'Pharmacist',
    'School teacher',
    'IT manager',
    'Account',
    'Lawyer',
    'Hairdresser',
    'Physician',
    'Web developer',
    'Medical Secretary'
  ];

  List<String> imageList = [
    'asset/img/1.png',
    'asset/img/2.png',
    'asset/img/3.png',
    'asset/img/4.png',
    'asset/img/5.png',
    'asset/img/6.png',
    'asset/img/7.png',
    'asset/img/8.png',
    'asset/img/9.png',
    'asset/img/10.png',
  ];

  List<String> description = [
    '1. There are different types of careers you can pursue in your life. Which one will it be?',
    '2. There are different types of careers you can pursue in your life. Which one will it be?',
    '3. There are different types of careers you can pursue in your life. Which one will it be?',
    '4. There are different types of careers you can pursue in your life. Which one will it be?',
    '5. There are different types of careers you can pursue in your life. Which one will it be?',
    '6. There are different types of careers you can pursue in your life. Which one will it be?',
    '7. There are different types of careers you can pursue in your life. Which one will it be?',
    '8. There are different types of careers you can pursue in your life. Which one will it be?',
    '9. There are different types of careers you can pursue in your life. Which one will it be?',
    '10. There are different types of careers you can pursue in your life. Which one will it be?',
  ];

  void showPopup(context, title, image, description) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: ListView(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    image,
                    width: 200,
                    height: 200,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    description,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey[500],
                    ),
                    maxLines: 3,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close),
                    label: const Text('close'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Listview',
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            showPopup(context, titleList[index], imageList[index],
                description[index]);
          },
          child: Card(
            child: Row(
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset(imageList[index]),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        titleList[index],
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: width,
                        child: Text(
                          description[index],
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        itemCount: titleList.length,
      ),
    );
  }
}
