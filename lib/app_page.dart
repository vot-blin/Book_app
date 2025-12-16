import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/book.png',
                width: 150,
                height: 150,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 34),

              // Название приложения
              const Text(
                'Bookhouse',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 39),

              const Text(
                'Регистрация',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 38),

              TextField(
                decoration: InputDecoration(
                  labelText: 'Введите почту',
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
              const SizedBox(height: 33),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Введите пароль',
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
              const SizedBox(height: 33),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Подтвердите пароль',
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
              const SizedBox(height: 33),

              // Кнопка Войти
              ElevatedButton(
                onPressed: () {
                  // Здесь позже будет логика входа через бэкенд
                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(const SnackBar(content: Text('Вход...')));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF0D99FF),
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 83,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Зарегистрироваться',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
