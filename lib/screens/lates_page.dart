import 'package:daryo_clone/models/news.dart';
import 'package:flutter/material.dart';

class LatestPage extends StatelessWidget {
  const LatestPage({Key? key}) : super(key: key);

  static List<News> news = [
    News(title: 'Faqat qizlar o‘qisin: Yigitlar uylanishni istamaydigan QIZLAR',
        context: 'context',
        watchCount: '520',
        time: '12:35',
        date: '13-mart',
        imgUrl: 'assets/person2.png'),
    News(title: 'Hamma ayb yoshlarda emas. Tan olish kerak, tizim mukammal emas» - 15 yoshda talaba bo‘lgan jizzaxlik yigit bilan suhbat',
        context: 'context',
        watchCount: '4322',
        time: '12:35',
        date: '21-mart',
        imgUrl: 'assets/person2.png'),
    News(title: 'Erkaklar gapirishni istamaydigan, ammo indamay aziyat chekadigan muammo',
        context: 'context',
        watchCount: '1934',
        time: '12:35',
        date: '19-mart',
        imgUrl: 'assets/person2.png'),

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: news.length,
        itemBuilder: (BuildContext context, int index) {
          return newsItem(news[index]);
        },
      ),
    );
  }

  Widget newsItem(News news) {
    return Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Maslahat',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('${news.time} |${news.date}|',
                    style: TextStyle(color: Colors.grey),),
                  Icon(
                    Icons.visibility_outlined,
                    color: Colors.blue[300],
                  ),
                  SizedBox(width: 4),
                  Text('${news.watchCount}')
                ],
              )
            ],
          ),
          SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                news.imgUrl,
                width: 162,
              ),
              SizedBox(
                width: 12.0,
              ),
              Expanded(
                  child: Text(
                    news.title,
                    style:
                    TextStyle(fontWeight: FontWeight.w600, height: 1.2),
                  ))
            ],
          ),
          Divider(
            thickness: 1.0,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
