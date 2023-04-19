// import 'dart:html';

import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // var text = 'omar abdu';
  bool usa = false;
  bool su = false;
  bool ye = false;
  String country = '';
  String car = '';
  bool switchhh = false;
  List mobiles = [
    {
      'nam': 's10',
      'screen': '6-2',
      'cup': '8 core',
    },
    {
      'nam': 's11',
      'screen': '6-3',
      'cup': '8 core3',
    },
    {
      'nam': 's12',
      'screen': '6-4',
      'cup': '8 core4',
    },
    {
      'nam': 's12',
      'screen': '6-4',
      'cup': '8 core4',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: GridView.builder(
        // نفس الست فيو بيلدر ولكن هنا يمكن عرض اكثر من موبايل
        itemCount: mobiles.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // كم عدد الويدجت الموجوده في الصف الواحد
        ),
        itemBuilder: (BuildContext context, int index) {
          // print(index);
          return ListTile(
            title: Text(' ${mobiles[index]['nam']}'),
            subtitle: Text('${mobiles[index]['screen']}'),
            trailing: Text('${mobiles[index]['cup']}'),
          );
        },
      ),
      /*ListView.separated(
        // نفس الست فيو بيلدر ولكنها تحتوي على سيبروتر بيلدر   separatorBuilder للفصل بين الويدجت   
        itemCount: mobiles.length,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            color: Colors.red,
            height: 2,
            thickness: 2,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          // print(index);
          return ListTile(
            title: Text(' ${mobiles[index]['nam']}'),
            subtitle: Text('${mobiles[index]['screen']}'),
            trailing: Text('${mobiles[index]['cup']}'),
          );
        },
      ),
      */
// موبايل واحد لكل صف

      /* ListView.builder(
        // نفس العادية ولكن لديها دوارة تكرارية
        // اكثر استخدامها مع   ا بي اي وقواعد البيانات حيث تستقبل الست
        itemCount: mobiles.length, //  كرر الويدجت الموجوده بالداخل اربع مرات
        itemBuilder: (BuildContext context, int index) {
          // print(index);
          return ListTile(
            /*Container(
              // height: 200,
              color: Colors.green,
              margin: const EdgeInsets.all(22),
              child:
                  Text('Container: $index'),),*/
            title: Text(' ${mobiles[index]['nam']}'),
            subtitle: Text('${mobiles[index]['screen']}'),
            trailing: Text('${mobiles[index]['cup']}'),
          );
        },
      ),*/

      /*    ListView(
          // ترتب الويدجت داخلها بشكل عمودي مثل 'الكولوم' مع امكانية عمل 'سكرول'
          // تاخذ مساحة الشاشة كاملة حسب اتجاه المحور ويمكن تفادي ذالك بوضعها داخل كونتنر عشان نقدر نضيف لست فيو داخل لست فيو مع توقيف السكرول او يمكن استخدام الخاصية بدال الكونتنر shrinkWrap
          //scrollDirection: Axis.horizontal, //  لتغير اتجاه المحور
          padding: const EdgeInsets.all(22),
          // physics: BouncingScrollPhysics(), //  عند عمل سكرول تجعلك تستطيع السحب اكثر من مساحة المحتوى   اي انها نوع السكرول ويمكن ايضا توقيف السكرول
          // physics: NeverScrollableScrollPhysics(), //  ويمكن ايضا توقيف السكرول
          // reverse: true, //  ترتب العناصر بشكل تصاعدي في حالة كانت ترو
          children: [
            const Text('data'),
            Container(
              color: Colors.red,
              height: 200,
              child: const Text('Container one'),
            ),
            Container(
              color: Colors.blue,
              height: 200,
              child: const Text('Container -2'),
            ),
            const Text('سياراتتتتت'),
            Container(
              height: 788,
              child: ListView(
                children: [
                  Container(
                    color: Colors.green,
                    height: 200,
                    child: const Text('ListView -2 wite Container'),
                  ),
                  Container(
                    color: Colors.green,
                    height: 200,
                    child: const Text('ListView -2 wite Container'),
                  ),
                  Container(
                    color: Colors.green,
                    height: 200,
                    child: const Text('ListView -2 wite Container'),
                  ),
                  Container(
                    color: Colors.green,
                    height: 200,
                    child: const Text('ListView -2 wite Container'),
                  ),
                  Container(
                    color: Colors.green,
                    height: 200,
                    child: const Text('ListView -2 wite Container'),
                  ),
                  Container(
                    color: Colors.green,
                    height: 200,
                    child: const Text('ListView -2 wite Container'),
                  ),
                ],
              ),
            ),
            const Text('جوووالات'),
            Container(
              height: 788,
              child: ListView(
                children: [
                  Container(
                    color: Colors.green,
                    height: 200,
                    child: const Text('ListView -2 wite Container'),
                  ),
                  Container(
                    color: Colors.green,
                    height: 200,
                    child: const Text('ListView -2 wite Container'),
                  ),
                  Container(
                    color: Colors.green,
                    height: 200,
                    child: const Text('ListView -2 wite Container'),
                  ),
                  Container(
                    color: Colors.green,
                    height: 200,
                    child: const Text('ListView -2 wite Container'),
                  ),
                  Container(
                    color: Colors.green,
                    height: 200,
                    child: const Text('ListView -2 wite Container'),
                  ),
                  Container(
                    color: Colors.green,
                    height: 200,
                    child: const Text('ListView -2 wite Container'),
                  ),
                ],
              ),
            ),
            ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true, // تخلي الست فيو تاخذ ارتفاع الويدجت التي داخلها
              children: [
                Container(
                  color: Colors.amber,
                  height: 100,
                  child: const Text('ListView -3 wite shrinkWrap'),
                ),
                Container(
                  color: Colors.amber,
                  height: 100,
                  child: const Text('ListView -3 wite shrinkWrap'),
                ),
              ],
            ),
            Container(
              color: Colors.black,
              height: 200,
              child: const Text('Container -5'),
            ),
            Container(
              color: Colors.green,
              height: 200,
              child: const Text('Container -6'),
            ),
          ],
        )
*/
      /*   ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  actionsPadding: const EdgeInsets.all(20),
                  titlePadding: const EdgeInsets.all(20),
                  title: const Text('Title'),
                  content: const Text('content content content'),
                  contentTextStyle: const TextStyle(color: Colors.amber),
                  titleTextStyle: const TextStyle(color: Colors.amber),
                  backgroundColor: Colors.white,
                  actions: [
                    MaterialButton(onPressed: () {}, child: const Text('ok')),
                    MaterialButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('cancel')),
                  ],
                ),
              );
            },
            child: const Text('show'))
            */
      /* CircleAvatar(
        child: Text("datdatadatadataa"),
        backgroundColor: Colors.amber,
        backgroundImage: AssetImage('images/class.png'),
        radius: 40,
      ),
      */

      /* ListTile(
        tileColor: Colors.green,
        title: const Text('title'),
        subtitle: const Text('subtitle'),
        leading: const Text('leading'),
        trailing: const Text('trailing'),
        onTap: () {
          print("onTap");
        },
        onLongPress: () {
          print('onLongPress');
        },
      ),
      */

      /*Column(
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Switch'),
                  Switch(
                    activeTrackColor: Colors.amber,
                    // inactiveThumbColor: Colors.blue,
                    inactiveTrackColor: Colors.blue,
                    value: switchhh,
                    onChanged: (value) {
                      setState(() {
                        switchhh = value;
                        print(switchhh);
                      });
                    },
                  ),
                ],
              ),
            ),
            Text('...................'),
            SwitchListTile(
              // نفس خواص 'التشك لست' 'والرودياس لست'
              title: Text('SwitchListTile'),
              subtitle: Text('subtitle'),
              activeTrackColor: Colors.amber,
              // inactiveThumbColor: Colors.blue,
              inactiveTrackColor: Colors.blue,
              value: switchhh,
              onChanged: (value) {
                setState(() {
                  switchhh = value;
                  print(switchhh);
                });
              },
            )
          ],
        ),
        */
      /* Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              const Text('chose country'),
              /*  Row(
                children: [
                  const Text('USA'),
                  Checkbox(
                    // للخيارات ويمكن اختيار جميع الخيارات داخلها
                    activeColor: Colors.red,

                    value: usa, // تقبل قيمة من نوع 'بولبان' فقط
                    onChanged: (value) {
                      //  تبدل الحالة من 'ترو' الى 'فولص'
                      setState(() {
                        usa = value!;
                      });
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  const Text('SUYRIA'),
                  Checkbox(
                    checkColor: Colors.green,
                    value: su, // تقبل قيمة من نوع 'بولبان' فقط
                    onChanged: (value) {
                      setState(() {
                        su = value!;
                      });
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  const Text('YEMEN'),
                  Checkbox(
                    value: ye, // تقبل قيمة من نوع 'بولبان' فقط
                    onChanged: (value) {
                      setState(() {
                        ye = value!;
                      });
                    },
                  ),
                ],
              ),
              // Drawer(width: 20),
              const SizedBox(height: 40),

              CheckboxListTile(
                //  نفس العادية ولكن فيها خصائص اضافية
                value: ye,
                onChanged: (value) {
                  setState(() {
                    ye = value!;
                  });
                },
                title: const Text('Yemen'),
                subtitle: const Text('taiz'),
                secondary: const Icon(Icons.flag),
                isThreeLine: true,
                activeColor: Colors.amber,
                selected: ye,
              ),
              CheckboxListTile(
                //  نفس العادية ولكن فيها خصائص اضافية
                value: usa,
                onChanged: (value) {
                  setState(() {
                    usa = value!;
                  });
                },
                title: const Text('usa'),
                subtitle: const Text('taiz'),
                secondary: const Icon(Icons.flag),
                isThreeLine: true,
                activeColor: Colors.amber,
                selected: usa,
              ),
              CheckboxListTile(
                //  نفس العادية ولكن فيها خصائص اضافية
                value: su,
                onChanged: (value) {
                  setState(() {
                    su = value!;
                  });
                },
                title: const Text('Suyria'),
                subtitle: const Text('taiz'),
                secondary: const Icon(Icons.flag),
                isThreeLine: true,
                activeColor: Colors.amber,
                selected: su,
                controlAffinity: ListTileControlAffinity.leading,
              ),
              // VerticalDivider(color: Colors.black, width: 20),
              */

              Row(
                children: [
                  const Text('USA'),
                  Radio(
                    // تشبة التشك ولكن لا يمكن اختيار اكثر من قيمة تستخدم للفحص
                    value: 'usa', // يمكن ان يكون اي نوع من المتغيرات    
                    groupValue: country,
                    onChanged: (value) {
                      setState(() {
                        country = value!;
                      });
                    },
                  )
                ],
              ),
              Row(
                children: [
                  const Text('SUY'),
                  Radio(
                    value: 'suy',
                    groupValue: country,
                    onChanged: (value) {
                      setState(() {
                        country = value!;
                      });
                    },
                  )
                ],
              ),
              Row(
                children: [
                  const Text('YEM'),
                  Radio(
                    value: 'yem',
                    groupValue: country,
                    onChanged: (value) {
                      setState(() {
                        country = value!;
                        print(country);
                      });
                    },
                  )
                ],
              ),
              const SizedBox(height: 40),
              const Text('chose car'),
              RadioListTile(
                title: const Text('1'),
                subtitle: const Text('A'),
                secondary: const Icon(Icons.car_crash),
                activeColor: Colors.red,
                selected: car == 'mar' ? true : false,
                controlAffinity: ListTileControlAffinity.trailing,
                value: 'mar',
                groupValue: car,
                onChanged: (value) {
                  setState(() {
                    car = value!;
                  });
                },
              ),
              RadioListTile(
                title: const Text('2'),
                value: 'suzoki',
                groupValue: car,
                onChanged: (value) {
                  setState(() {
                    car = value!;
                  });
                },
              ),
              RadioListTile(
                title: const Text('3'),
                value: 'toyo',
                groupValue: car,
                onChanged: (value) {
                  setState(() {
                    car = value!;
                  });
                },
              ),
            ],
          ),
        ),
        */
      /*  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$text'),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  text = 'well';
                });
              },
              child: const Text('button'),
            ),
          ],
        ),
      ),*/
    );
  }
}

/*class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: GestureDetector(
        //  مثل 'الانكول' تمام تتميز بان لها الكثير من الدوال
        child: Container(
          width: 100,
          height: 50,
          color: Colors.amber,
          margin: const EdgeInsets.all(22),
          child: const Text('omar al'),
        ),
        // onTap: () {
        //   print('onTap');
        // },
        onTapUp: (details) {
          print('onTapUp');
        },
        onTapDown: (details) {
          print('onTapDown');
        },
        onTapCancel: () {
          print('onTapCancel');
        },
        onLongPressStart: (details) {
          print('onLongPressStart');
        },
        onLongPressEnd: (details) {
          print('onLongPressEnd');
        },
        onDoubleTap: () {
          print('onDoubleTap');
        },
      ),


      /* floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onLongPress: () {
              print('object');
              color:
              (Colors.red);
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.black, //  تغيز خلفية البوتن
                shadowColor: Colors.blue,
                elevation: 100, // لعمل ظل نفس 'الشادو' في التكست
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(29))),
            onPressed: () {},
            // child: Container(
            //   width: 90,
            //   height: 100,
            //   color: Colors.amber,
            child: Row(
              children: const [
                Spacer(),
                Text('ElevatedButton'),
                Spacer(),
                Icon(
                  Icons.star,
                  size: 50,
                ),
                Spacer(),
              ],
            ),
          ),
          const SizedBox(height: 100),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.star,
              size: 50,
            ),
            label: const Text('ElevatedButton.icon'),
          ),
          const SizedBox(height: 100),
          MaterialButton(
            onPressed: () {},
            child: Text('MaterialButton'),
            color: Colors.amber,
            textColor: Colors.blue,
            splashColor: Colors.red, // عند الضغط المطول على البوتن
            onLongPress: () {
              print('عند الضغط المطول ');
            },
            height: 40,
            minWidth: 150, //  اقل عرض
          ),
          const SizedBox(height: 100),
          TextButton(
            onPressed: () {},
            child: Text('TextButton'),
            style: TextButton.styleFrom(
                primary: Colors.white, backgroundColor: Colors.blueGrey),
          ),
        ],
      ),
      */

      // )
      /*  SingleChildScrollView(
        // scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: 90,
              height: 100,
              color: Colors.amber,
              child: const Text('contener'),
            ),
            Container(
              width: 90,
              height: 100,
              color: Colors.amber,
              child: const Text('contener'),
            ),
            Container(
              width: 90,
              height: 100,
              color: Colors.amber,
              child: const Text('contener'),
            ),
            Container(
              width: 90,
              height: 100,
              color: Colors.amber,
              child: const Text('contener'),
            ),
            Container(
              width: 90,
              height: 100,
              color: Colors.amber,
              child: const Text('contener'),
            ),
            Container(
              width: 90,
              height: 100,
              color: Colors.amber,
              child: const Text('contener'),
            ),
            Container(
              width: 190,
              height: 100,
              color: Colors.amber,
              child: const Text('contener'),
            ),
            Container(
              width: 90,
              height: 100,
              color: Colors.amber,
              child: const Text('contener'),
            ),
            Container(
              width: 90,
              height: 100,
              color: Colors.amber,
              child: const Text('contener'),
            ),
            Container(
              width: 90,
              height: 100,
              color: Colors.amber,
              child: const Text('contener'),
            ),
          ],
        ),
      ),
   */
      /*Container(
          color: Colors.black12,
          width: 350,
          height: 600,
          child: Column(
            children: [
              Container(
                // width: 300,
                // height: 100,
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(
                    left: 10, top: 100, right: 10, bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(width: 3),
                ),
                child: const Text(
                  'strawberry pavova Recipe',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'strawberry pavova Recipe   mainAxisSizeMainAxisSizemin /n mainAxisSizeMainAxisSizemin',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 15,
                    height: 2,
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(15),
                  width: 300,
                  // height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3),
                  ),
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: const [
                              Icon(Icons.star, color: Colors.amberAccent),
                              Icon(Icons.star, color: Colors.amberAccent),
                              Icon(Icons.star, color: Colors.amberAccent),
                              Icon(Icons.star, color: Colors.black),
                              Icon(Icons.star, color: Colors.black),
                            ],
                          ),
                          Text('17 Reviews')
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Icon(
                                  Icons.food_bank,
                                  color: Colors.green,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text('feed'),
                                ),
                                Text('2  *  4')
                              ],
                            ),
                            Column(
                              children: const [
                                Icon(
                                  Icons.food_bank,
                                  color: Colors.green,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text('feed'),
                                ),
                                Text('2  *  4')
                              ],
                            ),
                            Column(
                              children: const [
                                Icon(
                                  Icons.food_bank,
                                  color: Colors.green,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text('feed'),
                                ),
                                Text('2  *  4')
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ],
          ),
        )*/

      /* Column(
          children: const [
            Text('omar abdu alaziz'),
            Divider(
              color: Colors.amber,
              height: 200,
              thickness: 30, // سماكة الخط
            ),
            Text('omar abdu alaziz'),
            // Row(
            //   children: [
            //     Text('omar abdu alaziz'),
            //     VerticalDivider(
            //       color: Colors.red,
            //       width: 200,
            //       thickness: 30,
            //     ),
            //     Text('omar abdu alaziz'),
            //   ],
            // ),
          ],
        )
        */
      /*Row(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Container(
          //   // width: double.infinity,
          //   height: double.infinity,
          //   color: Colors.amber,
          //   child: const Text('contener'),
          // ),
          Expanded(
              //  تتمدد وتاخذ مساحة كاملة
              flex: 1,
              child: Container(
                  child: const Text('contener-1'), color: Colors.red)),
          // Container(child: const Text('contener-1'), color: Colors.red),
          Expanded(
              flex: 2,
              child: Container(
                  width: double.infinity,
                  //height: double.infinity,
                  child: const Text('contener-2'),
                  color: Colors.green)),
          Expanded(
              child: Container(
            child: const Text('contener'),
          )),
          Expanded(
              flex: 1,
              child: Container(
                  child: const Text('contener-3'), color: Colors.yellow))
        ],
      ),*/
    );

    /*Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Container(
        width: 400,
        height: 400,
        color: Colors.black,
        child: Stack(
          //overflow:Overflow.clip,
          //alignment: Alignment.center,
          children: [
            Positioned(
              // هي موضع العنصر  Positioned تختلف عن المارجن في ان المارجن سينزاح عن الويدجت السابق بمسافة 100 بكسل
              // top: 100,
              // left: 100,
              // bottom: 10,
              // right: 10,
              width: 200,
              height: 200,
              top: 360, //
              left: 100,
              child: Container(
                width: 200,
                height: 200,
                // color: Colors.red,
                child: const Text('contener-1'),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage('images/omar.jpg'),
                  ),
                  // shape: BoxShape.circle,
                ),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: Text('contener-2'),
            ),
          ],
        ),
      ),
    );
    */

    /*Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Container(
        width: 400,
        height: 400,
        color: Colors.red,
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('omar abdu alaziz'),
            const Text('omar abdu alaziz'),
            Container(
              // alignment: Alignment.bottomCenter,
              color: Colors.amber,
              child: const Text('ggggg'),
            )
          ],
        ),
      ),
    );
    */
    /*Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Container(
        // width: 200,
        //height: 200,
        color: Colors.red,
        child: Column(
          //mainAxisSize: MainAxisSize.min,// حتى ياخذ اقل طول ممكن حسب الويدجت الموجودة داخلة
          mainAxisAlignment: MainAxisAlignment
              .spaceEvenly, //  مع المحور الراسي جعل المحتوى في الوسط او ..... spaceBetween تجعل المسافة بين الويدجيت متساوية ..... spaceAround نفسها ولكنها تعمل هوامش داخلية في البداية والنهاية   ....
          crossAxisAlignment: CrossAxisAlignment.end,// مع المحور الافقي   
          children: [
            const Text('omar abdu alaziz'),
            const Text('omar abdu alaziz'),
            Container(
              //width: 20,
              color: Colors.amberAccent,
              child: const Text('omar abdu alaziz'),
            ),
            Image.asset(
              'images/class.png',
              // width: 500,
            ),
          ],
        ),
      ),
    );
    */
    /*Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: const Card(
        color: Colors.amber,
        elevation: 100, // درجة الظل
        shadowColor: Colors.black, // لون الظل
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(22)),
        ),
        //shape: Border.all(color: Colors.black, width: 2),

        child: Text(
          'omar abdu alaziz',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
    );*/

    /*Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Container(
        //alignment: Alignment.bottomLeft,
        // padding: EdgeInsets.all(50),
        margin: const EdgeInsets.all(44),
        width: 400,
        height: 440,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.blue,
              blurRadius: 10,
              spreadRadius: 20, // تمدد الظل   'spreadRadius'
              offset: Offset(-10, 10), //  اتجاه الظل بالنسبة للمحور اكس او واي
            ),
          ],
          image: const DecorationImage(
            image: AssetImage('images/omar.jpg'),
            // images/omar.jpg
            // images/class.png
          ),
          color: Colors.amber,
          border: Border.all(
            width: 8,
            color: Colors.black,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(40)),
          // .only(bottomLeft: Radius.circular(30), topRight: Radius.circular(30)),
        ),

        child: const Text(
          'fffffffffffffffff',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30,
              color: Colors.blue,
              decoration:
                  TextDecoration.none, // لعمل خط وسط النص او فوق او .....
              shadows: [
                Shadow(
                  color: Colors.green,
                  blurRadius: 10,
                  offset: Offset(200, 20),
                ),
              ]),
        ),
      ),
    );
    */
  }
}
*/
