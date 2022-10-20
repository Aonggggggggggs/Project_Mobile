import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_project/Bottom.dart';

class Buy extends StatelessWidget {
  const Buy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 209, 210, 211),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 68, 134, 70),
        title: Text("สินค้า"),
      ),
      body: ListView(
        children: [
          Container(
            child: Image.asset(
              "assets/imges/ส้ม.png",
              height: 300,
            ),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 30,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 50,
                        bottom: 20,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "ส้ม",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 20),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset: Offset(0, 3),
                                  )
                                ]),
                            child: Icon(
                              CupertinoIcons.minus,
                              size: 18,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "05",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset: Offset(0, 3),
                                  )
                                ]),
                            child: Icon(
                              CupertinoIcons.plus,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                          "ส้ม (Orange) ผลไม้ยอดฮิตตลอดกาล จัดเป็นผลไม้ตระกูล Citrus ให้รสชาติเปรี้ยวหวาน ที่ยังอุดมไปด้วยวิตามินต่าง ๆ ซึ่งมีประโยชน์ต่อร่างกายของเรา เอ…แล้วส้มมีวิตามินอะไรบ้าง ? เช่น วิตามินซี วิตามินเอ (เบตาแคโรทีน) วิตามินบี วิตามินดี ธาตุแคลเซียม ธาตุโพแทสเซียม ธาตุฟอสฟอรัส ธาตุเหล็ก และคอลลาเจน นอกจากนี้ยังมีใยอาหารที่ช่วยในระบบขับถ่ายอีกด้วย สำหรับสรรพคุณของส้มในเรื่องอื่น ๆ เช่น ช่วยรักษาเลือดออกตามไรฟัน ช่วยล้างสารพิษในร่างกายด้วยสารต่อต้านอนุมูลอิสระ"),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomBuy(),
    );
  }
}
