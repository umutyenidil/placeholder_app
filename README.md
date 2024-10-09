# Flutter Clean Architecture App

## Overview

This Flutter application is built using **Clean Architecture** principles, aiming for modularity, testability, and scalability. The app interacts with external APIs to fetch **albums** and **posts** and displays the data efficiently using a state management system.

<img src="https://github.com/user-attachments/assets/dffacd92-ab56-4f0f-8619-7fe4b1d4550c" alt="Screenshot 1" width="200"/>
<img src="https://github.com/user-attachments/assets/d24130f1-18c0-47bc-a1bc-fe3d8cc71d81" alt="Screenshot 2" width="200"/>
<img src="https://github.com/user-attachments/assets/96fada6a-9868-4085-9111-cbda24bbd766" alt="Screenshot 3" width="200"/>
<img src="https://github.com/user-attachments/assets/ea69b12e-3e06-4740-a5c3-2f5209d2bb0d" alt="Screenshot 4" width="200"/>

### API Endpoints
- **Albums**: [https://jsonplaceholder.typicode.com/users/1/albums](https://jsonplaceholder.typicode.com/users/1/albums)
- **Posts**: [https://jsonplaceholder.typicode.com/posts](https://jsonplaceholder.typicode.com/posts)

## Key Technologies & Packages

This project incorporates several important libraries and packages to adhere to best practices and ensure a smooth development experience:

- **[go_router](https://pub.dev/packages/go_router)**: Declarative routing to handle navigation in a clean and structured way.
- **[Bloc & Provider](https://pub.dev/packages/flutter_bloc)**: For state management, allowing reactive and predictable UI updates.
- **[Equatable](https://pub.dev/packages/equatable)**: Simplifies equality comparisons within state management, especially for Bloc.
- **[Dartz](https://pub.dev/packages/dartz)**: Enables functional programming, particularly helpful for handling `Either` types, reducing boilerplate error handling.
- **[Get_it](https://pub.dev/packages/get_it)**: Used as a service locator for dependency injection, making it easier to decouple classes and manage dependencies.

## App Architecture

This project follows **Clean Architecture**, which separates the codebase into distinct layers. Each layer is responsible for a specific part of the application’s functionality:

1. **Presentation Layer**: Contains the UI and handles interaction with the user through **Bloc**.
2. **Domain Layer**: Contains business logic, including use cases and models.
3. **Data Layer**: Manages data access, whether from the API, local storage, or other sources, and implements repositories.

## Features

- Fetch and display **albums** and **posts** using the provided APIs.
- Navigate between different sections of the app using **go_router**.
- Reactive state management with **Bloc** and **Provider**.
- Improved equality checks with **Equatable**.
- Functional programming techniques using **Dartz** for better error handling.
- Clean dependency injection with **Get_it** for managing services and repositories.

## Getting Started

### Prerequisites

- **Flutter SDK**: Ensure you have Flutter installed on your machine. [Install Flutter](https://flutter.dev/docs/get-started/install)
- **Dart**: The app uses Dart, so ensure you have Dart as part of your Flutter SDK.

### Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/umutyenidil/placeholder_app.git
    ```

2. Navigate to the project directory:
    ```bash
    cd placeholder_app
    ```

3. Install dependencies:
    ```bash
    flutter pub get
    ```

4. Run the app:
    ```bash
    flutter run
    ```
