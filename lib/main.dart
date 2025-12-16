import 'package:bookhouse_app/edit_book_page.dart';
import 'package:flutter/material.dart';
import 'app_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bookhouse',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Inter'),
      home: const EditBookPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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

              // Заголовок "Вход"
              const Text(
                'Вход',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 38),

              // Поле Логин
              TextField(
                decoration: InputDecoration(
                  labelText: 'Логин',
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

              // Поле Пароль
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Пароль',
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
                    horizontal: 153,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Войти',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(height: 12),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterPage(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Expanded(child: Container(height: 1, color: Colors.black)),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        'Зарегистрироваться',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                    Expanded(child: Container(height: 1, color: Colors.black)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
