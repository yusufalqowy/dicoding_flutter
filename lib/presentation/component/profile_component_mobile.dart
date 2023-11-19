import 'package:dicoding_flutter/presentation/component/education_profile.dart';
import 'package:dicoding_flutter/presentation/component/experience_profile.dart';
import 'package:dicoding_flutter/presentation/component/portofolio_view.dart';
import 'package:dicoding_flutter/presentation/component/skill_progress.dart';
import 'package:dicoding_flutter/presentation/contact/my_contact.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProfileMobile extends StatelessWidget {
  final List<PortofolioData> listPortofolio;

  const ProfileMobile({super.key, required this.listPortofolio});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            shape: const CircleBorder(),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            margin: const EdgeInsets.only(left: 8, bottom: 8),
            child: Image.asset(
              "assets/image/my_photo_profile.jpg",
              fit: BoxFit.cover,
              height: 150,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "My name is",
            style: GoogleFonts.poppins(
                fontSize: 24, height: 1, fontWeight: FontWeight.w200),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "Muhammad Yusuf Alqowy",
            style: TextStyle(
                fontSize: 24, height: 1.2, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "I'm a Android Developer with 2 years experience. I graduated bachelor in 2020 with expertise as an Android Developer. I have professional experience as an Android Developer working on several projects applications from freelancers and through contract workers. Capable Perform project management and work individually or collaborate as a team. Skilled and familiar in android programming with Kotlin/Java, android library, android design xml, sql, git, and REST API.",
            textAlign: TextAlign.justify,
            style: GoogleFonts.poppins(
                fontSize: 11, height: 1.2, fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/image/ic_android.png",
                width: 24,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 8,
              ),
              Image.asset(
                "assets/image/ic_kotlin.png",
                width: 24,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 8,
              ),
              Image.asset(
                "assets/image/ic_java.png",
                width: 24,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 8,
              ),
              Image.asset(
                "assets/image/ic_git.png",
                width: 24,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 8,
              ),
              Image.asset(
                "assets/image/ic_rest_api.png",
                width: 24,
                fit: BoxFit.cover,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyContact()));
            },
            style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
                textStyle:
                    const MaterialStatePropertyAll(TextStyle(fontSize: 11))),
            child: const Text(
              "Keep in touch 👋",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Education",
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
          const EducationProfile(
              degree: "Bachelor's degree",
              place: "Yogyakarta",
              school: "Amikom University",
              major: "Informatics Engineering",
              year: "2016-2020"),
          const EducationProfile(
              degree: "Senior High School",
              place: "Batang",
              school: "SMA Negeri 1 Batang",
              major: "Sains & Ilmu Teknologi",
              year: "2013-2016"),
          const EducationProfile(
              degree: "Junior High School",
              place: "Bandar",
              school: "SMP Negeri 1",
              major: "Umum",
              year: "2010-2013"),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Experience",
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
          const ExperienceProfile(
              position: "Asisten Praktikum",
              year: "2017-2018",
              company: "Amikom University",
              place: "Yogyakarta",
              task:
                  "• Menjadi asisten praktikum matakuliah Algoritma dan Pemrograman semester ganjil dan genap."),
          const ExperienceProfile(
              position: "Desktop Developer Intern",
              year: "5 Nov 2018 - 25 Mei 2019",
              company: "Innovation Center Amikom University",
              place: "Yogyakarta",
              task:
                  "• Berkolaborasi dengan atasan untuk mengembangkan aplikasi sistem penjadwalan ujian dan akademik yang berbasis desktop."),
          const ExperienceProfile(
              position: "Android Developer",
              year: "12 Oktober 2020 – 30 Juni 2021",
              company: "PT. Paket Nasi",
              place: "Yogyakarta",
              task:
                  "• Bekerjasama dengan tim UI/UX dan Backend dalam pengembangan dan pembaharuan aplikasi.\n• Bekerjasama dengan tim untuk merancang sistem aplikasi yang sesuai dengan keinginan klien.\n• Melakukan pembangunan aplikasi berdasarkan konsep desain yang sudah disepakati.\n• Melakukan pengetesan aplikasi hingga berjalan sesuai dengan keinginan.\n• Mendeploy aplikasi ke PlayStore."),
          const ExperienceProfile(
              position: "Android Developer",
              year: "15 September 2021 – Now",
              company: "PT. Astra International",
              place: "North Jakarta",
              task:
                  "• Bekerjasama dengan tim dalam pengembangan dan maintenance aplikasi.\n• Testing dan update perubahan code ke remote repository.\n• Build dan deploy aplikasi ke internal test.\n• Membuat CI/CD di Azure DevOps untuk depoy aplikasi."),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Skill",
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
          MySkill(title: "Java", progress: 60, level: "Advanced Beginner"),
          MySkill(title: "Kotlin", progress: 80, level: "Intermediate"),
          MySkill(title: "Android XML", progress: 70, level: "Intermediate"),
          MySkill(title: "Jetpack Compose", progress: 50, level: "Beginner"),
          MySkill(title: "React Native", progress: 40, level: "Beginner"),
          MySkill(title: "Flutter", progress: 40, level: "Beginner"),
          MySkill(title: "Laravel", progress: 50, level: "Advanced Beginner"),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Portofolio Project",
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
          for (PortofolioData data in listPortofolio)
            PortofolioView(
              data: data,
            ),
          const SizedBox(
            height: 8,
          ),
          Align(
            alignment: Alignment.topRight,
            child: TextButton(
              onPressed: () {
                launchUrlString("https://dribbble.com/yusufalqowy",
                    mode: LaunchMode.externalApplication);
              },
              child: const Text("Show more"),
            ),
          )
        ],
      ),
    );
  }
}
