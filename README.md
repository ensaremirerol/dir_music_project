# Dir Music

[English](./README.md) | [Türkçe](./README.tr.md)

## 📜 Description:

This is a simple music player app with backend and frontend. The backend is written in Java-Spring using Microservices architecture and the frontend is written in Flutter. The backend is deployed on private server. You can use provided executables/apk to run the app and test it.

## 📦 Requirements:

### 📋 Backend:

-   Docker
-   Docker-compose
-   Make(_Only for linux/mac_)
-   Java JDK Version 17 (_Optional_)
-   Maven (_Optional_)

#### ❗️ Note about optional requirements:

If you use 'nodeps' version of build scripts, you don't need Java and Maven. But mind that, It will take more time to build the project as it will download all dependencies for each microservice and build them inside docker container. Also, It will leave the dangling images and containers after build. You can use `docker system prune` to clean ALL unused images and containers. As stated, this will remove ALL unused images and containers, related to this project or not. So, use it with caution.

### 📋 Frontend:

-   Flutter SDK

## ⚙️ Build:

### ❗️❗️❗️ WARNING ❗️❗️❗️

Cloning this repository does not mean you have cloned all required submodules. You need to clone them manually. You can use `git submodule update --init --recursive --remote` command or `make init` command on linux/mac to clone all submodules.

Skipping this step will result in build errors because of missing files.

### ⚙️ Backend:

#### For _windows_:

On the root of the repository:

-   Run `docker network create dir_music_network` to create a network for the backend.

-   Run either `build-win-deps.ps1` or `build-win-nodeps.ps1` according to your build preference. See [This note](https://github.com/AlfaSquaD/dir_music_project#%EF%B8%8F-note-about-optional-requirements) for more info.

-   Run `docker-compose up` to start the backend.

#### For _linux/mac_:

On the root of the repository:

-   Use either `make build` or `make build-nodeps` according to your build preference. See [This note](https://github.com/AlfaSquaD/dir_music_project#%EF%B8%8F-note-about-optional-requirements) for more info.

-   Run `docker-compose up` or `make up` to start the backend.

### ⚙️ Frontend:

On the root of the client directory `./clients/dir_music_client/`:

-   Run `flutter pub get` to get all dependencies.

-   Run `dart run build_runner build` to generate required files.

-   Then you can run the app on your device or emulator or you can build the executable/apk. See [Flutter documentation](https://docs.flutter.dev/deployment/android) for more info on how to build for desired platform.

#### ❗️Note about build args:

You can provide build args to flutter with `--dart-define` flag ([More Information](https://dart.dev/guides/environment-declarations#flutter)). If you don't provide a arg it will use default value. Application accepts following build args:

-   `API_URL`: URL of the backend API. Default: `http://localhost:8080`

Also if you use VS Code to build the app, you can see predefined build configurations in `.vscode/launch.json` file that both has build args and not.

## 📝 License:

This project is licensed under the terms of the [MIT License](./LICENSE).

## 📜 Authors:

-   [Ensar Emir EROL](https://github.com/AlfaSquad)

-   [Berkant TELLİ](https://github.com/berkanttelli)

-   [Ömer Veli İLHAN](https://github.com/OmerVeliIlhan)
