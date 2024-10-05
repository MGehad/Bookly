# Bookly App 📚

Bookly is a Flutter app that allows users to explore books using the Google Books API. The app provides detailed information on books, including ratings, descriptions, and more. Users can also search for specific books and enjoy smooth, captivating animations throughout the app.

## Features ✨

- 📚 **Explore Books**: Browse through various books fetched from the Google Books API.
- ⭐ **Book Ratings & Details**: View book ratings, descriptions, and other relevant details.
- 🔍 **Search Functionality**: Easily search for books by title or author.
- 🛠️ **Error Handling**: The app gracefully handles errors and provides user-friendly messages.
- 🎨 **Smooth Animations**: Enjoy a visually appealing experience with Flutter's powerful animation tools.

## Architecture 🏗️

Bookly follows Clean Architecture principles to ensure scalability, maintainability, and separation of concerns. The app is divided into layers:

1. **Domain Layer**: Contains business logic and entities.
2. **Data Layer**: Handles API calls and data storage.
3. **Presentation Layer**: Manages UI and user interaction.

This approach keeps the codebase organized and easy to maintain for future updates and enhancements.

## Installation 🔧

To run the Bookly app locally, follow these steps:

1. Clone the repository:

    ```bash
    git clone https://github.com/MGehad/Bookly.git
    ```

2. Navigate to the project directory:

    ```bash
    cd Bookly
    ```

3. Install dependencies:

    ```bash
    flutter pub get
    ```

4. Run the app:

    ```bash
    flutter run
    ```

## Dependencies 🛠️

Bookly uses the following packages:

- `bloc` & `flutter_bloc`: For state management.
- `cached_network_image`: For image caching.
- `dartz`: Functional programming.
- `dio`: HTTP requests.
- `get_it`: Dependency injection.
- `go_router`: Routing and navigation.
- `google_fonts`: Custom fonts.
- `url_launcher`: Launching URLs.
- `hive` & `hive_flutter`: Local data storage.

## Contribution 🤝

Feel free to contribute by opening issues or submitting pull requests to enhance the app.
