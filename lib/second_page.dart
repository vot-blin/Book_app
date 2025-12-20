import 'package:bookhouse_app/add_book_page.dart';
import 'package:bookhouse_app/first_page.dart';
import 'package:bookhouse_app/info_page.dart';
import 'package:bookhouse_app/profile_page.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  void _showFilterDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => Dialog(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF0D99FF), // синий фон
            borderRadius: BorderRadius.circular(0), // углы прямые
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 8),
                child: IconButton(
                  icon: const Icon(Icons.close, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                  padding: EdgeInsets.zero,
                  constraints: BoxConstraints(),
                ),
              ),
              const SizedBox(height: 16),

              Center(
                child: Column(
                  children: [
                    // Поле поиска
                    Container(
                      width: 255,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Поиск',
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 16,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),

                    // Статус
                    Container(
                      width: 255,
                      child: DropdownButtonFormField<String>(
                        value: 'Все',
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 16,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                        ),
                        items: ['Все', 'Читаю', 'Прочитано', 'Хочу прочитать']
                            .map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            })
                            .toList(),
                        onChanged: (String? newValue) {},
                      ),
                    ),
                    const SizedBox(height: 30),

                    // Сортировка
                    Container(
                      width: 255,
                      child: DropdownButtonFormField<String>(
                        value: 'По алфавиту',
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: 16,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                        ),
                        items: ['По алфавиту', 'По дате', 'По статусу'].map((
                          String value,
                        ) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {},
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              // Кнопка "Применить"
              Container(
                width: 300,
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'Применить',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FirstPage()),
                  );
                },
                child: Image.asset(
                  'assets/Vector.png',
                  width: 50,
                  height: 50,
                  color: Colors.white,
                ),
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
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                    ),
                  );
                },
                child: Image.asset(
                  'assets/profile.png',
                  width: 50,
                  height: 50,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        elevation: 0,
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.all(31.0),
            children: [
              // Заголовок "Читаю сейчас" с иконкой фильтра
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      _showFilterDialog(context);
                    },
                    child: Image.asset(
                      'assets/filter.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const SizedBox(width: 43),
                  const Text(
                    'Читаю сейчас',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 31),

              // Карточки книг
              _buildBookCard(
                context,
                'Лев Толстой',
                'Война и мир',
                'Не начата',
              ),
              const SizedBox(height: 31),
              _buildBookCard(
                context,
                'Лев Толстой',
                'Война и мир',
                'Не начата',
              ),
              const SizedBox(height: 31),
              _buildBookCard(
                context,
                'Лев Толстой',
                'Война и мир',
                'Не начата',
              ),
              const SizedBox(height: 40),
            ],
          ),
          Positioned(
            bottom: 24, // отступ от низа экрана
            right: 24, // отступ от правого края
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddBookPage()),
                );
              },
              backgroundColor: Color(0xFF0D99FF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.add, size: 30, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBookCard(
    BuildContext context,
    String author,
    String title,
    String status,
  ) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const InfoPage(), // ← переход
                ),
              );
            },
            child: Container(
              width: 130,
              height: 160,
              decoration: BoxDecoration(color: Colors.grey[200]),
            ),
          ),
          const SizedBox(width: 17),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  author,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 14),
                Text(title, style: const TextStyle(fontSize: 20)),
                const SizedBox(height: 14),
                Text(
                  status,
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
