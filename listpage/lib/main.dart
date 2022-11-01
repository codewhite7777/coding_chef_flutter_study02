import 'package:flutter/material.dart';
import 'package:listpage/animal_page.dart';
import 'package:listpage/model.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  static List<String> animalName = [
    'Bear',
    'Camel',
    'Deer',
    'Fox',
    'Kangaroo',
    'Koala',
    'Lion',
    'Tiger'
  ];

  static List<String> animalImagePathName = [
    'asset/img/bear.png',
    'asset/img/camel.png',
    'asset/img/deer.png',
    'asset/img/fox.png',
    'asset/img/kangaroo.png',
    'asset/img/koala.png',
    'asset/img/lion.png',
    'asset/img/tiger.png'
  ];

  static List<String> animalLocation = [
    'forest and mountain',
    'dessert',
    'forest',
    'snow mountain',
    'Australia',
    'Australia',
    'Africa',
    'Korea'
  ];

  final List<Animal> animalData = List.generate(
    animalLocation.length,
    (index) => Animal(
      name: animalName[index],
      location: animalLocation[index],
      imgPath: animalImagePathName[index],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Page'),
      ),
      body: ListView.builder(
        itemCount: animalData.length,
        itemBuilder: (BuildContext context, int index) => Card(
          child: ListTile(
            title: Text(animalData[index].name),
            leading: SizedBox(
              height: 50,
              width: 50,
              child: Image.asset(animalData[index].imgPath),
            ),
            trailing: const Icon(
              Icons.arrow_forward,
              color: Colors.red,
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (_) => AnimalPage(
                          animal: animalData[index],
                        )),
              );
            },
          ),
        ),
      ),
    );
  }
}
