# Dir Müzik

[Türkçe](./README.tr.md) | [English](./README.md)

## 📜 Açıklama:

Bu uygulama, sunucu ve istemci olmak üzere iki bileşenden oluşan basit bir müzik çalar uygulamasıdır. Sunucu kısmı Java-Spring ile Mikro Servis mimarisi kullanılarak yazılmıştır. Ön yüz kısmı ise Flutter ile yazılmıştır. Sunucu kısmı özel bir sunucuda çalıştırılmaktadır. Uygulamayı çalıştırmak ve test etmek için sağlanan çalıştırılabilir dosyaları/apk'ları kullanabilirsiniz.

## 📦 Gereksinimler:

### 📋 Sunucu:

-   Docker
-   Docker-compose
-   Make(_Sadece linux/mac için_)
-   Java JDK Sürüm 17 (_İsteğe bağlı_)
-   Maven (_İsteğe bağlı_)

#### ❗️ İsteğe bağlı gereksinimler hakkında not:

Eğer ki, yükleme dosyalarının `nodeps` versiyonunu kullanırsanız Java ve Maven'a ihtiyacınız olmayacaktır. Fakat bu durumda, her mikro servis için bir docker container ında bağımlılıkların indirilmesi ve uygulamanın derlenmesi gerekecektir. Bu nedenle, derleme işlemi çok daha uzun sürecektir. Ayrıca, derleme sonrasında derleme amacı ile oluşturulan container ve image lar silinmeyecektir. Bu durumda, `docker system prune` komutunu kullanarak kullanılmayan TÜM image ve container'ları silebilirsiniz. Ancak vurgulandığı gibi bu komut, kullanılmayan ve bu projeye ait ve ait olmayan TÜM image ve container'ları silecektir. Bu yüzden, dikkatli kullanmanızı tavsiye ederiz.

### 📋 Ön Yüz:

-   Flutter SDK

## ⚙️ Derleme:

### ❗️❗️❗️ UYARI ❗️❗️❗️

Bu depoyu klonladığınız zaman gerekli tüm dosyalar klonlanmaz. Bu nedenle, bu depoyu klonladıktan sonra, `git submodule update --init --remote` yada linux/mac için `make init` komutunu çalıştırarak gerekli dosyaları klonlayabilirsiniz.

Bu adım atlandığı takdirde, sunucu ve istemci dosyaları bulunamayacaktır. Dolayısıyla, derleme işlemi başarısız olacaktır.

### ⚙️ Sunucu:

#### _Windows_ için:

Proje kök dizininde:

-   `build-win-deps.ps1` veya `build-win-nodeps.ps1` dosyalarından birini çalıştırın. Hangisini çalıştıracağınızı seçmek için [bu notu](https://github.com/AlfaSquaD/dir_music_project/blob/main/README.tr.md#%EF%B8%8F-i%CC%87ste%C4%9Fe-ba%C4%9Fl%C4%B1-gereksinimler-hakk%C4%B1nda-not) okuyun.

-   `docker-compose up` komutunu çalıştırarak sunucuyu başlatın.

#### _Linux/Mac_ için:

Proje kök dizininde:

-   `make build` veya `make build-nodeps` komutlarını çalıştırın. Hangisini çalıştıracağınızı seçmek için [bu notu](https://github.com/AlfaSquaD/dir_music_project/blob/main/README.tr.md#%EF%B8%8F-i%CC%87ste%C4%9Fe-ba%C4%9Fl%C4%B1-gereksinimler-hakk%C4%B1nda-not) okuyun.

-   `docker-compose up` veya `make up` komutunu çalıştırarak sunucuyu başlatın.

### ⚙️ Ön Yüz:

İstemcinin kök dizininde `./clients/dir_music_client/`:

-   `flutter pub get` komutunu çalıştırarak tüm bağımlılıkları indirin.

-   `dart run build_runner build` komutunu çalıştırarak gerekli dosyaları oluşturun.

-   Ardından uygulamayı cihazınızda veya emülatörde çalıştırabilir veya istediğiniz platform için derleyebilirsiniz. Daha fazla bilgi için [Flutter dokümantasyonunu](https://docs.flutter.dev/deployment/android) inceleyebilirsiniz.

#### ❗️ Derleme argümanları hakkında not:

Flutter'a derleme argümanları `--dart-define` flag'ı ile verilebilir. ([Daha fazla bilgi](https://dart.dev/guides/environment-declarations#flutter)). Eğer argüman vermezseniz, varsayılan değer kullanılacaktır. Uygulama aşağıdaki derleme argümanlarını kabul eder:

-   `API_URL`: Backend API'nin URL'i. Varsayılan: `http://localhost:8080`

Ayrıca, uygulamayı derlemek için VS Code kullanıyorsanız, hem argüman içeren hemde içermeyen derleme konfigürasyonlarını `.vscode/launch.json` dosyasında görebilirsiniz.

## 📝 Lisans:

Bu proje [MIT License](./LICENSE) şartları altında lisanslanmıştır.

## 📜 Geliştiriciler:

-   [Ensar Emir EROL](https://github.com/AlfaSquad)

-   [Berkant TELLİ](https://github.com/berkanttelli)

-   [Ömer Veli İLHAN](https://github.com/OmerVeliIlhan)
