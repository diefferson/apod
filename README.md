# apod

NASA Astronomy Picture of the Day retrieval

## Screenshots and video

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
