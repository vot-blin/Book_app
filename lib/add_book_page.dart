import 'package:bookhouse_app/second_page.dart';
import 'package:flutter/material.dart';

class AddBookPage extends StatefulWidget {
  const AddBookPage({super.key});

  @override
  State<AddBookPage> createState() => _AddBookPageState();
}

class _AddBookPageState extends State<AddBookPage> {
  String status = 'Читаю';
  String collection = 'Классика';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF0D99FF),
        toolbarHeight: 130,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Row(
            children: [
              Image.asset(
                'assets/Vector.png',
                width: 50,
                height: 50,
                color: Colors.white,
              ),
              const SizedBox(width: 40),
              const Text(
                'Bookhouse',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const Spacer(),
              Image.asset(
                'assets/profile.png',
                width: 50,
                height: 50,
                color: Colors.white,
              ),
            ],
          ),
        ),
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(31.0),
        children: [
          Center(
            child: Text(
              'Добавить книгу',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          const SizedBox(height: 29),

          Center(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 225,
                height: 260,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  border: Border.all(color: Colors.grey[300]!),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Загрузить обложку',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Icon(Icons.add, size: 40, color: Colors.black),
                    SizedBox(height: 0),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 31),

          TextField(
            decoration: InputDecoration(
              labelText: 'Укажите автора',
              contentPadding: const EdgeInsets.symmetric(
                vertical: 14,
                horizontal: 16,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xFF0D99FF), width: 5),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xFF0D99FF), width: 5),
              ),
            ),
          ),
          const SizedBox(height: 31),
          TextField(
            decoration: InputDecoration(
              labelText: 'Укажите название',
              contentPadding: const EdgeInsets.symmetric(
                vertical: 14,
                horizontal: 16,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xFF0D99FF), width: 5),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xFF0D99FF), width: 5),
              ),
            ),
          ),
          const SizedBox(height: 31),
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              labelText: 'Статус',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xFF0D99FF), width: 5),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xFF0D99FF), width: 5),
              ),
            ),
            value: 'Читаю', // ← значение по умолчанию
            items: <String>['Читаю', 'Прочитано', 'Хочу прочитать']
                .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                })
                .toList(),
            onChanged: (String? newValue) {
              // можно сохранить выбор
            },
          ),
          const SizedBox(height: 31),
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              labelText: 'Коллекция',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xFF0D99FF), width: 5),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xFF0D99FF), width: 5),
              ),
            ),
            value: 'Классика', // ← значение по умолчанию
            items: <String>['Классика', 'Фантастика', 'Детективы', 'Бизнес']
                .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                })
                .toList(),
            onChanged: (String? newValue) {
              // можно сохранить выбор
            },
          ),
          const SizedBox(height: 31),
          TextField(
            maxLines: null,
            minLines: 3,
            decoration: InputDecoration(
              labelText: 'Аннотация (необязательно)',
              contentPadding: const EdgeInsets.symmetric(
                vertical: 14,
                horizontal: 16,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xFF0D99FF), width: 5),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Color(0xFF0D99FF), width: 5),
              ),
            ),
          ),

          const SizedBox(height: 31),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0D99FF),
                padding: const EdgeInsets.symmetric(
                  horizontal: 142,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Добавить',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
