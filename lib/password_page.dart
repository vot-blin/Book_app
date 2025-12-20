import 'package:flutter/material.dart';

class PasswordPage extends StatelessWidget {
  const PasswordPage({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Изменить пароль',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
              ),
            ),
            const SizedBox(height: 38),

            // Поле ввода нового пароля
            TextField(
              decoration: InputDecoration(
                labelText: 'Новый пароль',
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
            const SizedBox(height: 460),

            // Кнопка "Изменить"
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Пароль изменён'),
                      backgroundColor: Color(0xFF0D99FF),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0D99FF),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 134,
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Изменить',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
