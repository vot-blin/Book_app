import 'package:flutter/material.dart';

class EditBookPage extends StatelessWidget {
  final String coverImageUrl;

  const EditBookPage({
    super.key,
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
            Center(
              child: Text(
                'Редактировать книгу',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(height: 29),

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
            const SizedBox(height: 31),

            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 16,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xFF0D99FF), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xFF0D99FF), width: 2),
                ),
              ),
            ),
            const SizedBox(height: 31),
            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 16,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xFF0D99FF), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xFF0D99FF), width: 2),
                ),
              ),
            ),
            const SizedBox(height: 31),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Статус',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xFF0D99FF), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xFF0D99FF), width: 2),
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
                  borderSide: BorderSide(color: Color(0xFF0D99FF), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Color(0xFF0D99FF), width: 2),
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
          ],
        ),
      ),
    );
  }
}
