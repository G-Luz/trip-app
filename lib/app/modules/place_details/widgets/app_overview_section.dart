import 'package:flutter/material.dart';
import 'package:trip_app/app/widgets/app_text.dart';

class AppOverviewSection extends StatelessWidget {
  const AppOverviewSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: 'Descrição',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontColor: Theme.of(context).colorScheme.onSurface,
          ),
          const SizedBox(height: 10),
          AppText(
            text:
                'O Half Dome é uma cúpula de granito na Sierra Nevada, na Califórnia, integrada no Parque Nacional de Yosemite e localizada no extremo leste do Vale de Yosemite e é possivelmente a paisagem mais conhecida de Yosemite. O topo de granito está a mais de 1 444 metros acima do nível do vale.',
            fontColor: Theme.of(context).colorScheme.onSurface,
          ),
          // const SizedBox(height: 20),
        ],
      ),
    );
  }
}
