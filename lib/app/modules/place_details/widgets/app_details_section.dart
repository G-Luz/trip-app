import 'package:flutter/material.dart';
import 'package:trip_app/app/widgets/app_text.dart';
import 'package:timeline_tile/timeline_tile.dart';

class AppDetailsSection extends StatelessWidget {
  const AppDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: 'Detalhes da viagem',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontColor: Theme.of(context).colorScheme.onSurface,
          ),
          const SizedBox(height: 5),
          AppText(
            text: 'Descrição e duração de atrações',
            fontSize: 15,
            fontColor: Theme.of(context).colorScheme.onSurface,
          ),
          ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return TimelineTile(
                  alignment: TimelineAlign.manual,
                  isFirst: index == 0 ? true : false,
                  isLast: index == 9 ? true : false,
                  indicatorStyle: const IndicatorStyle(
                    color: Colors.teal,
                  ),
                  beforeLineStyle: const LineStyle(
                    thickness: 0.5,
                    color: Colors.teal,
                  ),
                  lineXY: 0.1,
                  endChild: Container(
                    // color: Colors.purple,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 5),
                    child: Row(
                      children: [
                        Container(
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://i.pinimg.com/564x/8c/d0/6f/8cd06fbe8cf5aee5740afffabd834db3.jpg"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText(
                                    text: 'Attraction',
                                    fontSize: 18,
                                    fontColor: Theme.of(context)
                                        .colorScheme
                                        .onSurface,
                                  ),
                                  AppText(
                                    text: 'Where?',
                                    fontSize: 12,
                                    fontColor: Theme.of(context)
                                        .colorScheme
                                        .onSurface,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.access_time,
                                      size: 15, color: Colors.teal),
                                  const SizedBox(width: 5),
                                  AppText(
                                    text: '2 days',
                                    fontColor: Colors.teal,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
