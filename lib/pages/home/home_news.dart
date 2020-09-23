import 'package:flutter/material.dart';
import 'package:flutter_demo/extension/int_extension.dart';
import 'package:flutter_demo/model/NewsModel.dart';

class BYHomeNews extends StatefulWidget {
  @override
  _BYHomeNewsState createState() => _BYHomeNewsState();
}

class _BYHomeNewsState extends State<BYHomeNews> {
  final _unitNews = [
    {
      "title": "女装号上快手热门一天涨粉29万！快速涨粉后如何精准选品实现直播电商价值最大化？",
      "img":
          "http://img.feigua.cn/upload/6da19bfa-87b1-4419-b187-6bef4858935b.png",
      "date": "2020-09-16"
    },
    {
      "title": "首场飞瓜线下沙龙「新生态2020流量变现破局增长大会」圆满落幕",
      "img":
          "http://img.feigua.cn/upload/783cf524-df32-465d-b988-dcf971aa3080.png",
      "date": "2020-09-14"
    },
    {
      "title": "9月是电商淡季？1小时爆单50000件！时刻把握当下快手直播最畅销神奇商品！",
      "img":
          "http://img.feigua.cn/upload/a61abd3e-1ade-417d-8de5-97ac5d845ad7.png",
      "date": "2020-09-14"
    },
    {
      "title": "一天爆单4.5万单！才热推6天就连出爆款商品的抖音小店，究竟有什么带货新玩法？",
      "img":
          "http://img.feigua.cn/upload/e630e292-e935-47d4-a2dd-cc12b5591ba7.png",
      "date": "2020-09-03"
    },
    {
      "title": "当你还在为快手流量焦虑的时候，有人已经一周涨粉100万！他究竟做对了什么？",
      "img":
          "http://img.feigua.cn/upload/76c6bfba-866a-4be5-a181-487ba60f8f7b.png",
      "date": "2020-09-02"
    },
    {
      "title": "9.12飞瓜线下大会来了！百位大咖到场，2020下半年如何破局反击！",
      "img":
          "http://img.feigua.cn/upload/62bf5a1d-8ada-47ea-9b8c-1205898745a3.png",
      "date": "2020-08-27"
    },
    {
      "title": "日销量1.6万，视频内容再升级，视频爆火后都有哪些直播带货秘诀？",
      "img":
          "http://img.feigua.cn/upload/62bf5a1d-8ada-47ea-9b8c-1205898745a3.png",
      "date": "2020-08-27"
    },
    {
      "title": "新号100粉丝3天变现20万，他究竟做什么操作？",
      "img":
          "http://img.feigua.cn/upload/70ee2e14-0133-447c-a27e-05588c6e6724.png",
      "date": "2020-08-19"
    },
  ];
  List<NewsModel> _newsList = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    List<NewsModel> newsList = [];
    for (var item in _unitNews) {
      newsList.add(NewsModel.fromJson(item));
    }
    setState(() {
      this._newsList = newsList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.px, vertical: 50.px),
        child: ListView.builder(
            shrinkWrap: true, //为true可以解决子控件必须设置高度的问题
            physics: NeverScrollableScrollPhysics(), //禁用滑动事件
            itemCount: _newsList.length,
            itemBuilder: (BuildContext context, int index) {
              return buildNewsItem(_newsList[index], context);
            }));
  }

  //1.新闻item
  Widget buildNewsItem(NewsModel news, BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 30.px),
        height: 80.px,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildNewsTitle(news.title, news.date, context),
            SizedBox(
              width: 20.px,
            ),
            buildNewsImage(news.img)
          ],
        ));
  }

  // 1.1 新闻标题
  Widget buildNewsTitle(String title, DateTime date, BuildContext context) {
    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: Theme.of(context)
                .textTheme
                .headline2
                .copyWith(color: Color(0xff444444))),
        Text(
          date.toString().substring(0, 10),
          style: TextStyle(color: Color(0xcc555555), fontSize: 13.px),
        )
      ],
    ));
  }

  // 1.2 新闻图片
  Widget buildNewsImage(String img) {
    return Container(
      width: 100.px,
      height: 80.px,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.px),
          image:
              DecorationImage(image: NetworkImage(img), fit: BoxFit.fitHeight)),
    );
  }
}
