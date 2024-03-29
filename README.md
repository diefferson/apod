
[![Build](https://github.com/diefferson/apod/actions/workflows/pull_requests.yml/badge.svg)](https://github.com/diefferson/apod/actions/workflows/pull_requests.yml)

# apod
NASA Astronomy Picture of the Day retrieval

## Features  
 - Two app Flavors with different settings
 - Light and Dark mode
 - English and Portuguese strings
 - Infinity scroll list with automatic pagination
 - Details screen with APOD details
 - Caching data to work offline

## Architecture and Libraries
 - **Project architecture**: This project was made with a `Clean Architecture` using some layers to divide the project by responsibilities;
  <img width="222" alt="Captura de Tela 2024-03-14 às 17 42 40" src="https://github.com/diefferson/apod/assets/13908165/70b740db-c645-423c-b32b-599e506b8980">

 - **State management**: For the state management I used the BLOC concept but with an MVP architecture;
 - **Dependency Injection**: I have made dependency injection with [Stark](https://pub.dev/packages/stark);
 - **Navigation**: I have used flutter base Navigation with a `Static Navigator Method`, this is a design pattern where the navigation logic is encapsulated within the page class itself, making the code cleaner and the navigation easier to manage.
  <img width="647" alt="Captura de Tela 2024-03-14 às 17 44 54" src="https://github.com/diefferson/apod/assets/13908165/a90d9ecc-7641-46f9-8a9e-e888f381a5ce">

 - **Error Handling**: Implemented the UseCase pattern,  the UseCase is responsible for handling any error and returning an `Eighter` as a response, with the success  orv with a handled exception;
 - **HTTP requests**: Made with [Dio](https://pub.dev/packages/dio);
 - **Cache**: Used [dio_cache_interceptor](https://pub.dev/packages/dio_cache_interceptor) for requests and [cached_network_image](https://pub.dev/packages/cached_network_image) for images.

## Screenshots and video
`
<img src="https://github.com/diefferson/apod/assets/13908165/830c9ba2-c376-40e8-9876-fbfe49ed79b2" width=200/>
<img src="https://github.com/diefferson/apod/assets/13908165/24296a49-c659-4c03-8d05-bc84f8929dff" width=200/>

https://github.com/diefferson/apod/assets/13908165/e77b85a5-f895-4244-9a84-cd4336d6c4a9


## Getting Started


### Prerequisites

Create configs files on `assets/configs` folder with the following content:

```json
{
  "api_key": "apikey value",
  "base_url": "base url value"
}
```

We have 2 environments: `dev` and `prod`, so you can create 2 files with the following names:

 - `environment.json`
 - `environment_dev.json`

### Running the app

To run the you need to choose correct main file to run:

 - `main.dart` for prod
 - `main_dev.dart` for dev

example of command to run the app:

```bash
## Prod
flutter run --flavor prod -t lib/main.dart

## dev
flutter run --flavor dev -t lib/main_dev.dart

```
