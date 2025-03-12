import 'package:flutter/material.dart';

class ExampleTextField extends StatelessWidget {
  const ExampleTextField({super.key});

  @override
  Widget build(BuildContext context) {
    // TextField - используется для создания текстовых полей, в которых пользователь может вводить текст

    return TextField(
      // Позволяет управлять текстом в поле ввода программно.
      // Например, можно получить текущий текст, очистить поле или установить начальное значение.
      controller: TextEditingController(),

      // Вызывается каждый раз, когда текст в поле изменяется.
      onChanged: (text) {
        print('Текст изменен: $text');
      },

      // Вызывается, когда пользователь нажимает "Готово" (или Enter) на клавиатуре.
      onSubmitted: (text) {
        print('Пользователь нажал Готово: $text');
      },

      // Определяет тип клавиатуры, которая отображается для ввода текста.
      keyboardType: TextInputType.text,

      // Если true, текст скрывается (например, для ввода пароля).
      obscureText: true,

      // Определяет максимальное количество строк в поле ввода. Если null, поле может расширяться бесконечно.
      maxLines: 5,

      // Ограничивает максимальное количество символов в поле.
      maxLength: 15,

      // Определяет стиль текста (шрифт, размер, цвет и т.д.).
      style: TextStyle(fontSize: 16, color: Colors.blue),

      // Определяет внешний вид текстового поля, включая метку, подсказку, иконки, границы и т.д.
      decoration: InputDecoration(
        // Метка над полем ввода.
        labelText: 'Имя',
        // Подсказка, которая отображается, когда поле пустое.
        hintText: 'Введите ваше имя',
        // Иконка перед текстовым полем.
        prefixIcon: Icon(Icons.person),
        // Граница поля
        border: OutlineInputBorder(),
      ),
    );
  }
}
