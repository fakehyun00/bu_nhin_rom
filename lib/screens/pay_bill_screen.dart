import 'package:flutter/material.dart';
import '../components/bottombar.dart';
import '../components/color.dart';
import '../components/logo.dart';
import '../components/padding_shop.dart';

class PayBillScreen extends StatefulWidget {
  const PayBillScreen({super.key});

  @override
  State<PayBillScreen> createState() => _PayBillScreenState();
}

class _PayBillScreenState extends State<PayBillScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: background,
        child: Column(children: [
          Container(
            padding: const EdgeInsets.only(right: 400),
            child: BackButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const BottomBar()));
              },
              color: Colors.white,
            ),
          ),
          logo,
          const Padding(
            padding: EdgeInsets.only(right: 160),
            child: Text('Chi tiết giao dịch',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: divider,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'Sản phẩm được chọn',
                style: TextStyle(color: Colors.white),
              ),
              Text(
                'Gói 20 xu',
                style: Styles.headLineStyle2,
              )
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: divider,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'Giá',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                '19.000đ',
                style: Styles.headLineStyle2,
              )
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: divider,
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 160),
            child: Text(
              'Hình thức thanh toán',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 180, right: 50),
            child: divider,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 130),
            child: Text(
              'Sacombank',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 50, 124, 251),
                  fontStyle: FontStyle.italic),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 180, right: 50),
            child: divider,
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 50),
            child: Text(
              'MO\nMO',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 245, 18, 18),
                  fontStyle: FontStyle.italic),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 180, right: 50),
            child: divider,
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: divider,
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              padding: const EdgeInsets.fromLTRB(35, 0, 35, 10),
              child: SizedBox(
                height: 40,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.resolveWith(getColor1),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ))),
                  onPressed: () => showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            backgroundColor:
                                const Color.fromARGB(255, 240, 205, 197),
                            content: const Text(
                              'Bạn có đồng ý thanh toán',
                              textAlign: TextAlign.center,
                            ),
                            actions: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.resolveWith(
                                                  getColor3)),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const BottomBar(),
                                            ));
                                      },
                                      child: const Text('Đồng ý')),
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        'Quay lại',
                                        style: TextStyle(color: Colors.black),
                                      ))
                                ],
                              )
                            ],
                          )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text('Xử lý thanh toán', style: TextStyle(fontSize: 22))
                    ],
                  ),
                ),
              )),
        ]),
      ),
    );
  }
}
