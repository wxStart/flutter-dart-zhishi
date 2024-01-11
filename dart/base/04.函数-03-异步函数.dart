import 'dart:convert';
import 'package:http/http.dart' as http;

void main(List<String> args) {
  // https://httpbin.org/ip  返回ip的地址
  // getIp
  Future<String> getIp() {
    final url = Uri.https('httpbin.org', 'ip');
    return http.get(url).then((res) {
      String ip = json.decode(res.body)['origin'];
      return ip;
    });
  }

  getIp().then((value) {
    print("ip: $value");
  }).catchError((err) {
    print("出错了：$err");
  });

  asyncGetIp() async {
    try {
      String ip = await getIp();
      print("ip1: $ip");
    } catch (err) {
      print("出错了：$err");
    }
  }

  print("ip1: 开始执行");
  asyncGetIp();
  print("ip1: 执行结束");
}
