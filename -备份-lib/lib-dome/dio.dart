import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  Index({super.key});

  var fileUrl =
      'https://dldir1.qq.com/music/clntupate/mac/QQMusicMac9.0.0Build02.dmg';

  void download() {
    downloadIos();
  }

  void downloadFile(String fileUrl, savePath) {
    void onReceiveProgress(int count, int total) {
      print((count / total * 100).toStringAsFixed(0) + '%');
      if (count == total) {
        print("即将下载完成!!!");
      }
    }

    final dio = Dio();
    dio
        .download(fileUrl, savePath, onReceiveProgress: onReceiveProgress)
        .then((value) => print(value))
        .whenComplete(() => print('下载完成了'));
  }

//下载到mac
  void downloadMac() {
    var savePath = '/Users/wx/Desktop/111/qqyinyue.dmg';
    downloadFile(fileUrl, savePath);
  }

  void downloadIos() {
    dynamic savePath = Directory.systemTemp.path + "/qqyinyue.dmg";
    print(savePath);
    downloadFile(fileUrl, savePath);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        ElevatedButton(
          onPressed: () {
            download();
          },
          child: const Text('点击下载mac桌面'),
        ),
        ElevatedButton(
          onPressed: () {
            downloadIos();
          },
          child: const Text('点击下载IOS模拟器'),
        ),
      ],
    ));
  }
}
