# food_delivery

Приложения для заказа еды

## Auth Экраны

Firebase Authentication, Sign-in provider: Email/Password.

Flutter bloc + freezed

- Авторизация
- Регистрация
- Сброс пароля

![Screenshot_1656332621](https://user-images.githubusercontent.com/99508083/176202728-4d6381f4-23cf-40ba-a47e-2052efb01462.png)
![Screenshot_1656332626](https://user-images.githubusercontent.com/99508083/176202732-a0d82faf-ddf5-4858-8eff-014f0cdfae7d.png)
![Screenshot_1656333214](https://user-images.githubusercontent.com/99508083/176202734-776c6afa-37e5-44c5-b66d-64af63948183.png)

## Main Основной экран

Firebase Storage (Чтение изображения со скидками из хранилища). Если есть изображения в FirebaseStorage/discount, то создается слайдер/карусель.
Firebase Realtime Database (Чтение категорий и товара из бд).

- Скидки 
- Категории
- Рекомендации
- Популярное

![Screenshot_1656516086](https://user-images.githubusercontent.com/99508083/176475670-775135c3-6139-4bbf-874c-7b3cff210650.png)
![Screenshot_1656516097](https://user-images.githubusercontent.com/99508083/176475678-2e8884f6-6f66-4aab-8c67-f9129d1b5f70.png)
![Screenshot_1656794104](https://user-images.githubusercontent.com/99508083/177015864-18483ff2-58f2-4be9-8cfd-7fe1f51b2d74.png)
![Screenshot_1656627434](https://user-images.githubusercontent.com/99508083/177015862-5449652f-87c4-46d1-91fe-d89508e9997d.png)

## Search Поиск

![Screenshot_1656625903](https://user-images.githubusercontent.com/99508083/176785608-b15ff5dd-13e5-4036-b3e2-90457554683b.png)
![Screenshot_1656625860](https://user-images.githubusercontent.com/99508083/176785612-29003ac7-40ac-4469-b247-cc92597298c9.png)

## Cart Корзина

Firebase Realtime Database (Сохранение заказа)

Flutter bloc + freezed

![Screenshot_1657037488](https://user-images.githubusercontent.com/99508083/177371981-a8e77a77-cba7-4d35-8e11-7bc0d80297ba.png)
![Screenshot_1657037514](https://user-images.githubusercontent.com/99508083/177371985-365c7bb8-b9b5-40bf-88ab-64ce9c410762.png)

## Favorite Избранное

![Screenshot_1656794063](https://user-images.githubusercontent.com/99508083/177015863-bcbc9f36-0e8f-487d-8e67-ed0d83164e31.png)
![Screenshot_1656794300](https://user-images.githubusercontent.com/99508083/177015866-925ab3ff-5ef3-4f5d-8578-a1389535be75.png)
![Screenshot_1656794158](https://user-images.githubusercontent.com/99508083/177015865-323a61fe-5e92-4174-af66-e39ea854627b.png)

## Profile Моя информация

Firebase Realtime Database (Чтение и запись данных профиля)

Cubit + freezed

- Профиль
- Редактирование
- Ввод данных

![Screenshot_1656334530](https://user-images.githubusercontent.com/99508083/176202737-8ef6a721-a4f8-4eeb-8d54-9139d4409028.png)
![Screenshot_1656334533](https://user-images.githubusercontent.com/99508083/176202738-8a8b3080-28b0-499c-afa6-909d8c8e5d9e.png)
![Screenshot_1656334546](https://user-images.githubusercontent.com/99508083/176202739-23f84e25-12db-4933-b6a2-d2c44514e79c.png)

## Profile История заказов

Firebase Realtime Database (Чтение списка заказов).

Cubit + freezed

- Список заказов
- Детали заказа

![Screenshot_1657036847](https://user-images.githubusercontent.com/99508083/177370617-48156723-6af6-4dda-9a43-8e0e6264bfdf.png)
![Screenshot_1657036854](https://user-images.githubusercontent.com/99508083/177370623-7c533fee-8cb6-4470-b9a8-acee5c46b694.png)
![Screenshot_1657036861](https://user-images.githubusercontent.com/99508083/177370626-246bb214-db07-4112-8b5f-c1e900267fad.png)


## Конец
