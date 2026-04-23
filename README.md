# bus_app_cep

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
=======

# Flutter-Projects (Beginner Level)

# Flutter Navigation and Routing App

## Overview

This Flutter project demonstrates **navigation and routing** between multiple screens, with basic user input handling. The application includes three main routes:

1. **Sign-Up Route** – The initial screen with a Sign-Up button.
2. **Login Route** – The login screen where the user enters a username/email and password.
3. **Info Route** – The final screen that displays all the details entered by the user.

---

## Features

- **Sign-Up Navigation**: Clicking the **Sign-Up** button navigates to the **Login** screen.
- **Login Validation**: The user must enter both **username/email** and **password** to proceed. If any field is empty, a warning message is shown.
- **Info Display**: Upon successful login, the user is taken to the **Info screen**, where all entered details are displayed as text.
- **Text Input Handling**: Uses `TextEditingController` to capture and transfer user input between screens.

---

## Screenshots

**Intro Page**
<img width="1913" height="876" alt="image" src="https://github.com/user-attachments/assets/3362bfef-860e-402b-a5e8-0dac115b370c" />
**Login Page**
<img width="1908" height="872" alt="image" src="https://github.com/user-attachments/assets/cf2b5d19-9755-4cb8-9757-620fd5ac1b06" />
**Info Page**
<img width="1905" height="874" alt="image" src="https://github.com/user-attachments/assets/41c6b27c-99a2-4f27-ac32-932a593b5c30" />

---

## Folder Structure

## Folder Structure

lib/
├─ main.dart
├─ login_page.dart
├─ signup_page.dart
├─ info_page.dart

yaml
Copy code

---

## How to Run

1. Clone the repository:

```bash
git clone https://github.com/ali09267/Flutter-Projects.git
cd Flutter-Projects
Install dependencies:
flutter pub get
Run the app:
flutter run

```
