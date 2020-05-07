import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ordercoffee/productivity_timer/models/timermodel.dart';
import 'package:ordercoffee/productivity_timer/productivity_widget.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'timer.dart';

class ProductivityTimer extends StatelessWidget {
  final double defaultPadding = 5.0;
  final CountDownTimer timer = CountDownTimer();

  @override
  Widget build(BuildContext context) {
    timer.startWork();
    return Scaffold(
        appBar: AppBar(
          title: Text("My Work Timer"),
          centerTitle: true,
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            final double availableWidth = constraints.maxWidth;
            return Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: ProductivityButton(
                              color: Color(0xff009688),
                              text: "Work",
                              onPressed: emptyMethod)),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Expanded(
                          child: ProductivityButton(
                              color: Color(0xff607D8B),
                              text: "Short Break",
                              onPressed: emptyMethod)),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Expanded(
                          child: ProductivityButton(
                              color: Color(0xff455A64),
                              text: "Long Break",
                              onPressed: emptyMethod)),
                    ],
                  ),
                ),
                Expanded(
                  child: StreamBuilder(
                      initialData: TimerModel('00:00', 1),
                      stream: timer.stream(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        TimerModel timer = snapshot.data;
                        return Container(
                          child: CircularPercentIndicator(
                            radius: availableWidth / 2,
                            lineWidth: 10.0,
                            percent:
                                (timer.percent == null) ? 1 : timer.percent,
                            center: Text(
                                (timer.time == null) ? '00:00' : timer.time,
                                style: Theme.of(context).textTheme.headline),
                            progressColor: Color(0xff009688),
                          ),
                        );
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: ProductivityButton(
                          color: Color(0xff212121),
                          text: 'Stop',
                          onPressed: emptyMethod,
                        ),
                      ),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Expanded(
                        child: ProductivityButton(
                          color: Color(0xff009688),
                          text: 'Restart',
                          onPressed: emptyMethod,
                        ),
                      )
                    ],
                  ),
                )
              ],
            );
          },
        ));
  }

  void emptyMethod() {
    debugPrint("Button Clicked");
  }
}
