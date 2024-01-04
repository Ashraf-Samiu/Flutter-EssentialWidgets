import 'package:flutter/material.dart';

///LifeCycle of State...

///Constructor
///CreateState
///InitState

///DidChangeDependencies- dependency change
///build- setState
///didUpdateWidget- change configuration of parent(like inheritance-if the parent value change child value will be changed)

///deactivate
///dispose

class HomePage extends StatefulWidget {
  ///widget itSelf...
  const HomePage({super.key});

  ///Short Form-
  ///State<HomePage> createState() => _HomePageState();
  @override
  ///createState
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int count=0;

  @override
  void initState(){
    ///we can override this abstract class if we wanna add something when app start
    print("Initial State");
    super.initState();
  }

  @override
  void didChangeDependency(){
    print("Did Change Dependency");
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant HomePage oldWidget){
    print("did update widget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print("Build Method");
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Text(
          count.toString(),
          style: TextStyle(
            fontSize: 24
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            count++;
            /// setState will rebuild the screen where constant not available
            setState(() {});
          }),
    );
  }

  @override
  void deactivate(){
    ///it is called when the widget is removed from the tree..
    super.deactivate();
    print("deactivate");
  }

  @override
  void dispose(){
    ///which will destroy/break the current App..
    ///it is also called when the widget is removed permanently from the tree..
    super.dispose();
    print("dispose");
  }
}

