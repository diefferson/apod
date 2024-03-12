# apod

NASA Astronomy Picture of the Day retrieval

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
