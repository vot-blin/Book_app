import 'package:flutter/material.dart';

class BookPage extends StatelessWidget {
  final String bookTitle; // название книги
  final String coverImageUrl; // URL или путь к обложке

  const BookPage({
    super.key,
    this.bookTitle = 'Без названия',
    this.coverImageUrl =
        'https://via.placeholder.com/250x350/0D99FF/FFFFFF?text=Обложка',
  });

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
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            // Кнопка "Назад" слева вверху
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {
                  Navigator.pop(context); // ← возвращаемся назад
                },
              ),
            ),

            Center(
              child: Text(
                bookTitle,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(height: 76),

            // Обложка книги (загружается из базы)
            Container(
              width: 250,
              height: 350,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[300]!, width: 2),
              ),
              child: Image.network(
                coverImageUrl,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  // Если изображение не загрузилось — показываем плейсхолдер
                  return Container(
                    color: Colors.grey[200],
                    child: const Center(child: Text('Обложка не загружена')),
                  );
                },
              ),
            ),
            const SizedBox(height: 140),

            Text(
              '1', // можно сделать динамическим позже
              style: const TextStyle(fontSize: 24, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
