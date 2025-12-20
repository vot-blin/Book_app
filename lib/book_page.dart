import 'package:bookhouse_app/second_page.dart';
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
      body: Stack(
        children: [
          // Основной контент — по центру
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: Text(
                      bookTitle,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  const SizedBox(height: 70),

                  // Обложка книги
                  Container(
                    width: 250,
                    height: 400,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    child: Image.network(
                      coverImageUrl,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey[200],
                          child: const Center(
                            child: Text('Обложка не загружена'),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 100),

                  Text(
                    '1',
                    style: const TextStyle(fontSize: 24, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),

          // Стрелка — слева от обложки
          Positioned(
            top: 40, // примерно на уровне верхней части обложки
            left: 10, // отступ от левого края экрана
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black, size: 36),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(), // ← переход
                  ),
                );
              },
              padding: EdgeInsets.zero,
            ),
          ),
        ],
      ),
    );
  }
}
