import 'package:dicoding_flutter/presentation/component/portofolio_view.dart';
import 'package:dicoding_flutter/presentation/component/profile_component_mobile.dart';
import 'package:dicoding_flutter/presentation/component/profile_component_tab.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual);
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;
    final List<PortofolioData> listPortofolio = [
      PortofolioData(
          title: "Paket Nasi",
          description:
          "Aplikasi market place untuk pembelian makanan dalam partai banyak dari para pelaku usaha katering atau kuliner.",
          imageUrl:
          "https://cdn.dribbble.com/users/4090044/screenshots/16561335/media/65d01c1fb3a1a5f2ad38715d1af87330.png"),
      PortofolioData(
          title: "Belanja Sedekah",
          description:
          "Aplikasi penjualan produk dengan konsep belanja sambil sedekah.",
          imageUrl:
          "https://cdn.dribbble.com/users/4090044/screenshots/16561079/media/4d5c3deef407d5f816fb9b15ed94f9a2.png"),
      PortofolioData(
          title: "Agen Belanja Sedekah",
          description: "Merupakan aplikasi untuk agen Belanja Sedekah.",
          imageUrl:
          "https://cdn.dribbble.com/users/4090044/screenshots/16561066/media/63ecc13bcc14076c34a12c6f74675faf.png"),
      PortofolioData(
          title: "Sahabat Wanita",
          description:
          "Aplikasi untuk membantu memantau kondisi kesehatan kewanitaan serta edukasi mengenai kesehatan wanita.",
          imageUrl:
          "https://cdn.dribbble.com/users/4090044/screenshots/16561204/media/469829e8f282ba15882530bcbc0085d6.png"),
      PortofolioData(
          title: "Kasir App",
          description: "Aplikasi kasir dan POS dengan fitur print nota.",
          imageUrl:
          "https://cdn.dribbble.com/users/4090044/screenshots/16561187/media/5ac6c7e62c5b156ea1f0b2f06e8c02a8.png"),
      PortofolioData(
          title: "Eye Cheker App",
          description:
          "Aplikasi untuk membantu dalam pengecekan gangguan, terapi, dan tips mengenai kesehatan mata.",
          imageUrl:
          "https://cdn.dribbble.com/users/4090044/screenshots/16561176/media/b60ff3d8027a246e111284db73151b3c.jpg"),
      PortofolioData(
          title: "Sunhope App Mobile Market",
          description: "Aplikasi market place untuk penjualan produk SunHope.",
          imageUrl:
          "https://cdn.dribbble.com/users/4090044/screenshots/16426924/media/9b40d864ce2108e172b79c9e25450a5c.jpg"),
    ];
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.zero,
            child: AppBar(
              elevation: 0,
              systemOverlayStyle: isDarkMode
                  ? SystemUiOverlayStyle.light
                  : SystemUiOverlayStyle.dark,
            ),
          ),
          body: SingleChildScrollView(
            child: constraints.maxWidth < 630 ? ProfileMobile(listPortofolio: listPortofolio) : ProfileTab(listPortofolio: listPortofolio),
          ),
        );
      },
    );
  }
}
