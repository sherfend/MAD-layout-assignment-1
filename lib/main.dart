import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.pink),
      title: 'Smart Home',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _gateCurrent = false;
  var _doorCurrent = false;
  var _roomCurrent = false;
  var _kitchenCurrent = false;
  var _tvCurrent = false;
  var _acTemp = 27.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Smart Home'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: <Widget>[
            Card(
              elevation: 10,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Gate',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold)),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: _gateCurrent ? Colors.blue : Colors.grey),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.power_settings_new,
                          color: _gateCurrent ? Colors.blue : Colors.grey,
                        ),
                        splashColor: Colors.grey,
                        tooltip: 'Press to lock/unlock the gate',
                        onPressed: () =>
                            setState(() => _gateCurrent = !_gateCurrent),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: _gateCurrent
                          ? Icon(
                              Icons.lock_open,
                              color: Colors.blue,
                            )
                          : Icon(
                              Icons.lock,
                              color: Colors.grey,
                            ),
                    ),
                    Text(_gateCurrent ? 'UNLOCKED' : 'LOCKED'),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Front Door',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold)),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: _doorCurrent ? Colors.blue : Colors.grey),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.power_settings_new,
                          color: _doorCurrent ? Colors.blue : Colors.grey,
                        ),
                        splashColor: Colors.grey,
                        tooltip: 'Press to lock/unlock the door',
                        onPressed: () =>
                            setState(() => _doorCurrent = !_doorCurrent),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: _doorCurrent
                          ? Icon(
                              Icons.lock_open,
                              color: Colors.blue,
                            )
                          : Icon(
                              Icons.lock,
                              color: Colors.grey,
                            ),
                    ),
                    Text(_doorCurrent ? 'UNLOCKED' : 'LOCKED'),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Room Light',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold)),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: _roomCurrent ? Colors.blue : Colors.grey),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.power_settings_new,
                          color: _roomCurrent ? Colors.blue : Colors.grey,
                        ),
                        splashColor: Colors.grey,
                        tooltip: 'Press to turn on/off the light',
                        onPressed: () =>
                            setState(() => _roomCurrent = !_roomCurrent),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: _roomCurrent
                          ? Icon(
                              Icons.lightbulb,
                              color: Colors.amber,
                            )
                          : Icon(
                              Icons.lightbulb,
                              color: Colors.grey,
                            ),
                    ),
                    Text(_roomCurrent ? 'LIGHT ON' : 'LIGHT OFF'),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Kitchen Light',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold)),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: _kitchenCurrent ? Colors.blue : Colors.grey),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.power_settings_new,
                          color: _kitchenCurrent ? Colors.blue : Colors.grey,
                        ),
                        splashColor: Colors.grey,
                        tooltip: 'Press to turn on/off the light',
                        onPressed: () =>
                            setState(() => _kitchenCurrent = !_kitchenCurrent),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: _kitchenCurrent
                          ? Icon(
                              Icons.lightbulb,
                              color: Colors.amber,
                            )
                          : Icon(
                              Icons.lightbulb,
                              color: Colors.grey,
                            ),
                    ),
                    Text(_kitchenCurrent ? 'LIGHT ON' : 'LIGHT OFF'),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Television',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold)),
                    IconButton(
                      splashColor: Colors.grey,
                      icon: _tvCurrent
                          ? Icon(Icons.toggle_on)
                          : Icon(Icons.toggle_off),
                      tooltip: 'Press to turn on/off the television',
                      color: _tvCurrent ? Colors.blue : Colors.grey,
                      onPressed: () => setState(() => _tvCurrent = !_tvCurrent),
                    ),
                    Text(_tvCurrent ? 'TV ON' : 'TV OFF'),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Air Conditioner',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold)),
                    IconButton(
                        splashColor: Colors.grey,
                        icon: Icon(Icons.arrow_circle_up),
                        tooltip: 'Increase temperature',
                        color: _acTemp < 30.0 ? Colors.blue : Colors.grey,
                        onPressed: () {
                          setState(() {
                            _acTemp < 30.0 ? _acTemp += 1.0 : _acTemp = _acTemp;
                          });
                        }),
                    IconButton(
                        splashColor: Colors.grey,
                        icon: Icon(Icons.arrow_circle_down),
                        tooltip: 'Decrease temperature',
                        color: _acTemp > 16.0 ? Colors.blue : Colors.grey,
                        onPressed: () {
                          setState(() {
                            _acTemp > 16.0 ? _acTemp -= 1.0 : _acTemp = _acTemp;
                          });
                        }),
                    Text('Temperature: $_acTemp Celcius')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
