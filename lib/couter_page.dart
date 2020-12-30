import 'package:couterApp/blocs/counter_bloc.dart';
import 'package:couterApp/events/counter_event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc conterBloc = context.bloc<CounterBloc>();

    // TODO: implement build
    return Scaffold(
      body: SafeArea(

        child: BlocBuilder<CounterBloc, int>(
          builder: (context, counter) {
            return Column(
              children: <Widget>[
                Center(
                  child: Text('Two actions/event here:', style: TextStyle(fontSize: 25)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.0),
                  child: FlatButton(
                    child: Text(
                        'Increment(+)',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black
                        )
                    ),
                    onPressed: () {
                      print('Now debug here');
                      conterBloc.add(CounterEvent.increment);
                    },
                  ),
                  decoration: BoxDecoration(color: Colors.amber),
                ),
                // SizedBox(height: 50.0,),
                Container(
                  margin: EdgeInsets.all(25.0),
                  child: Text('Result now is: $counter', style: TextStyle(fontSize: 16),),
                ),
                // SizedBox(height: 50.0,),
                Container(
                  child: FlatButton(
                    child: Text(
                        'Decrement(-)',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black
                        )
                    ),
                    onPressed: () {
                      print('Now debug here');
                      conterBloc.add(CounterEvent.decrement);
                    },
                  ),
                  decoration: BoxDecoration(color: Colors.redAccent),
                )

              ],
            );
          }
        )
      )
    );
  }
}