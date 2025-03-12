# It-hub

---

## Установка Flutter

Документаци по установке Flutter на [Windows](https://docs.flutter.dev/get-started/install/windows).

Документаци по установке Flutter на [macOS](https://docs.flutter.dev/get-started/install/macos).

Документаци по установке Flutter на [Linux](https://docs.flutter.dev/get-started/install/linux).

---

## Создание нового проекта

Для создания нового Flutter проекта можно использовать команду
```sh
$ flutter create app_name
```
Эта команда создаст проект ```app_name``` с поддержкой всех платформ, доступных в вашей среде разработки.

Для создания нового Flutter проекта для конкретных платформ можно использовать команду
```sh
$ flutter create --platforms <платформы> app_name
```
Где ```<платформы>``` — это список платформ, разделенных запятыми. Например:
- ```android```
- ```ios```
- ```web```
- ```windows```
- ```macos```
- ```linux```
```sh
$ flutter create --platforms android,ios app_name
```

---

## Запуск программы

Для запуска программы используйте команду
```sh
$ flutter run
```

Для запуска программы на конкретной платформе используйте команду
```sh
$ flutter run -d <платформа>
```
Где ```<платформа>``` это
- ```android```
- ```ios```
- ```chrome```
- ```windows```
- ```macos```
- ```linux```

---

## Design

### Material

***Material Design*** — это дизайн-система, разработанная Google, которая предоставляет набор готовых виджетов для создания современных и красивых интерфейсов. Эти виджеты встроены в Flutter и позволяют быстро создавать приложения с единым стилем.

### Cupertino
***Cupertino*** — это набор виджетов и стилей, которые имитируют дизайн iOS. Эти виджеты позволяют создавать приложения, которые выглядят и ведут себя как нативные iOS-приложения. Flutter предоставляет готовые Cupertino-виджеты, которые можно использовать для разработки приложений с "яблочным" стилем.

---

## Виджеты ограничений

***Виджеты ограничений*** (Constraint Widgets) в Flutter используются для управления размерами и положением дочерних виджетов. Они задают ограничения (constraints) на размеры дочерних элементов, которые затем могут использовать эти ограничения для определения своих собственных размеров.

---
