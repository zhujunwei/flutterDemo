import 'package:flutter/material.dart'; //Ui 库

void main() => runApp(MyApp(
  // items: new List<String>.generate(100, (i) => "item $i")
));

class MyApp extends StatelessWidget{

  final List<String> items;
  //构造函数
  MyApp({Key key, @required this.items}):super(key: key);
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Hello word",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter')
        ),
        // body: Center(
        //   // child: Text(
        //   //   '尼玛语法这么蛋疼么12尼玛语法这么蛋疼么'+
        //   //   '尼玛语法这么蛋疼么12尼玛语法这么蛋疼么'+
        //   //   '尼玛语法这么蛋疼么12尼玛语法这么蛋疼么'+
        //   //   '12尼玛语法这么蛋疼么12尼玛语法这么蛋疼么12尼玛语法这么蛋疼么12',
        //   //   textAlign: TextAlign.justify,
        //   //   maxLines: 1,
        //   //   overflow: TextOverflow.ellipsis,
        //   //   style: TextStyle(
        //   //     fontSize: 25.0,
        //   //     color: Color.fromARGB(255 , 255, 0, 0),
        //   //     decoration: TextDecoration.underline,
        //   //     decorationStyle: TextDecorationStyle.solid
        //   //   )
        //   // ),
        //   child: Container(
        //     // child: new Text(
        //     //   'good luck',
        //     //   style: TextStyle(
        //     //     fontSize: 25.0
        //     //   ),
             
        //     // ),
        //     // alignment: Alignment.bottomLeft,
        //     // width: 500.0,
        //     // height: 400.0,
        //     // // color: Colors.lightBlue, //背景
        //     // padding: const EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
        //     // margin: const EdgeInsets.all(10.0),
        //     // decoration: new BoxDecoration(  //渐变
        //     //   gradient: const LinearGradient(
        //     //     colors: [Colors.lightBlue, Colors.green, Colors.purple]
        //     //   ),
        //     //   border: Border.all(width: 5.0, color: Colors.orange)
        //     // ),
        //     child: new Image.network(
        //       'http://wx3.sinaimg.cn/mw690/006OBeunly1fxgxskbfxsj30mj0f1wwi.jpg',
        //       fit: BoxFit.fitWidth,
        //       color: Colors.orange,
        //       colorBlendMode: BlendMode.darken
        //     ),
        //     width: 300.0,
        //     height:160.0,
        //     decoration: new BoxDecoration(
        //       border: Border.all(width: 2.0, color: Colors.orange)
        //     ),
            
        //   )
        // ),
        // body: new ListView(
        //   children: <Widget>[
        //     new ListTile(
        //       leading: new Icon(Icons.panorama_fish_eye),
        //       title: new Text('fish eye')
        //     ),
        //     new Image.network(
        //       'http://wx3.sinaimg.cn/mw690/006OBeunly1fxgxskbfxsj30mj0f1wwi.jpg'
              
        //     ),
        //     new Image.network(
        //       'http://wx3.sinaimg.cn/mw690/006OBeunly1fxgxskbfxsj30mj0f1wwi.jpg'

        //     ),
        //     new Image.network(
        //       'http://wx3.sinaimg.cn/mw690/006OBeunly1fxgxskbfxsj30mj0f1wwi.jpg'

        //     ),
        //     new Image.network(
        //       'http://wx3.sinaimg.cn/mw690/006OBeunly1fxgxskbfxsj30mj0f1wwi.jpg'

        //     ),
            
        //   ]
        // )
        // body: Center(
        //   child: Container(
        //     height: 200.0,
        //     child: MyList()
        //   )
        // )
        // body: new ListView.builder( //动态构建
        //   itemCount: items.length,
        //   itemBuilder: (context, index){
        //     return new ListTile(
        //       title: Text('${items[index]}')
        //     );
        //   },
        // ) //构建动态列表
        //网格--1
        // body: GridView.count(
        //   padding: const EdgeInsets.all(20.0), //内边距
        //   crossAxisSpacing: 10.0,
        //   crossAxisCount: 3,
        //   children: <Widget>[
        //     const Text("diyihang", textAlign: TextAlign.center),
        //     const Text("dierhang", textAlign: TextAlign.center),
        //     const Text("disanhang", textAlign: TextAlign.center),
        //     const Text("disihang", textAlign: TextAlign.center),
        //   ],

        // )
        //网格--2
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 2.0,  //上下间距
            crossAxisSpacing: 2.0, //两个之间的距离
            childAspectRatio: 0.75 //缩放比例 1:1 宽： 高
          ),
          children: <Widget>[
            new Image.network(
              'http://wx3.sinaimg.cn/mw690/006OBeunly1fxgxskbfxsj30mj0f1wwi.jpg',
              fit: BoxFit.cover,
            ),
            new Image.network(
              'http://wx3.sinaimg.cn/mw690/006OBeunly1fxgxskbfxsj30mj0f1wwi.jpg'
            ),
            new Image.network(
              'http://wx3.sinaimg.cn/mw690/006OBeunly1fxgxskbfxsj30mj0f1wwi.jpg'
            ),
            new Image.network(
              'http://wx3.sinaimg.cn/mw690/006OBeunly1fxgxskbfxsj30mj0f1wwi.jpg'
            ),
            new Image.network(
              'http://wx3.sinaimg.cn/mw690/006OBeunly1fxgxskbfxsj30mj0f1wwi.jpg'
            ),
            new Image.network(
              'http://wx3.sinaimg.cn/mw690/006OBeunly1fxgxskbfxsj30mj0f1wwi.jpg'
            ),
          ],
        )
      ),
    );
  }
}

class MyList extends StatelessWidget{
  @override

  Widget build(BuildContext context){
    return ListView(
        scrollDirection: Axis.horizontal, //横向
        children: <Widget>[
          new Container(
            width: 180.0,
            color: Colors.lightBlue
          ),
          new Container(
            width: 180.0,
            color: Colors.lightGreen
          ),
          new Container(
            width: 180.0,
            color: Colors.lightGreen
          ),
          new Container(
            width: 180.0,
            color: Colors.lightGreen
          ),
          new Container(
            width: 180.0,
            color: Colors.lightBlue
          )
        ]
      );
  }
}