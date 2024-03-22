import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sharkfreefin/app/extensions.dart';
import 'package:sharkfreefin/app/routes/app_pages.dart';
import 'package:sharkfreefin/app/widgets/back_button.dart';
import 'package:sharkfreefin/app/widgets/button.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:sharkfreefin/app/widgets/button.dart';



import '../controllers/landing_controller.dart';

class LandingView extends GetView<LandingController> {
  
  const LandingView({Key? key}) : super(key: key);
  @override
  
  Widget build(BuildContext context) {
    var colors = Theme.of(context).colorScheme;
    Get.lazyPut<LandingController>(
      () => LandingController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 16),
              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(children: [
                Text(
                  "Debt-free Countdown",
                  style: context.displayMedium,
                ),
                const SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: colors.primaryContainer,
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(children: [
                        Text(
                          "RM1,100,000 remaining",
                          style: context.bodyLarge,
                        ),
                        const SizedBox(width: 12),
                        const Icon(Icons.timer)
                      ]),
                      const SizedBox(height: 0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "8",
                            style: context.displayLarge!.copyWith(fontSize: 80),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            "years",
                            style: context.titleLarge,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            "8",
                            style: context.displayLarge!.copyWith(fontSize: 80),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            "months",
                            style: context.titleLarge,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ]),
            ),

            const SizedBox(height: 40),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pending",
                    style: context.titleLarge,
                  ),
                  
                ],
              ),
            ),

            const SizedBox(height: 8),
            
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: 16),
                  Card1(context),
                  Card2(context),
                  Card3(context),
                  Card4(context),


                  
                ],
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(   
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Expenses Breakdown",
                        style: context.titleLarge,
                      ),
                      CustomButton(
                        buttonText: "See More",
                        function: () {
                          
                        },
                      ).small(context),
                    ],
                  ),
                  
                  Text(
                        "You spent 22% less than people with same interest with you.",
                        style: context.bodyLarge,
                      ),
                  
                  SfCircularChart(
                    palette: [
                      colors.primary,
                      colors.secondary,
                      colors.tertiary,
                      colors.primaryContainer,
                      colors.secondaryContainer,
                      colors.tertiaryContainer
                    ],
                    margin: EdgeInsets.zero,
                    tooltipBehavior: TooltipBehavior(
                        enable: true,
                        textStyle: context.labelMedium,
                        color: colors.primaryContainer),
                    legend: Legend(
                        isVisible: true,
                        position: LegendPosition.right,
                        textStyle: context.labelSmall),
                    series: <CircularSeries<ChartData, String>>[
                      DoughnutSeries<ChartData, String>(
                          dataSource: controller.debtData,
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y,
                          name: 'Balance by Debt')
                  ]),
                  Stack(
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 16 / 9,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16.0),
                          child: Image.asset(
                            "lib/app/data/asset/images/laptop.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Container(
                          height: double.infinity,
                          padding: const EdgeInsets.only(top: 12.0, left: 12.0),
                          alignment: Alignment.topLeft,
                          child: CustomButton(
                            buttonText: "Speak to Professionals",
                            function: () {},
                          ).small(context),
                        ),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 8),
                  Text(
                        "Need help from Experts?",
                        style: context.titleLarge!.copyWith(fontWeight: FontWeight.w600)),
                  

                ],
                
              )
            ),

            ],
          ),
        )
      ),
    );
  }



 Widget Card1(BuildContext context) {
  var colors = Theme.of(context).colorScheme;

  return Container(
    width: 150,

    margin: const EdgeInsets.only(right: 16),
    child:Container(
      height: 136,
      decoration: BoxDecoration(
        color: colors.surfaceVariant,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            
            height: 10,
              decoration: BoxDecoration(
              color:colors.primary,
              borderRadius: BorderRadius.vertical(
                top: const Radius.circular(8),
              ),
            ),
            
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                Text("22%",
                style: context.headlineLarge),

                Text("more spending than others on",
                style: context.labelSmall),
                
                Text("Entertainment",
                style: context.labelSmall!.copyWith(fontWeight: FontWeight.w900)),
                
                
                
              ],
              
            ),




          )
        ],
      )
    ),
  );
}

Widget Card2(BuildContext context) {
  var colors = Theme.of(context).colorScheme;

  return Container(
    width: 150,

    margin: const EdgeInsets.only(right: 16),
    child:Container(
      height: 136,
      decoration: BoxDecoration(
        color: colors.surfaceVariant,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            
            height: 10,
              decoration: BoxDecoration(
              color:colors.secondary,
              borderRadius: BorderRadius.vertical(
                top: const Radius.circular(8),
              ),
            ),
            
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                Text("Complete this Questionnaire to know your spending behaviour!",
                style: context.labelSmall),
                
                // ClipRRect(
                //   child: Image.asset(
                //     "lib/app/data/asset/images/flipbook.png",
                //     fit: BoxFit.scaleDown,
                //   ),
                // )
                
                
              ],
              
            ),




          )
        ],
      )
    ),
  );
  }
  Widget Card3(BuildContext context) {
  var colors = Theme.of(context).colorScheme;

  return Container(
    width: 150,

    margin: const EdgeInsets.only(right: 16),
    child:Container(
      height: 136,
      decoration: BoxDecoration(
        color: colors.surfaceVariant,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            
            height: 10,
              decoration: BoxDecoration(
              color:colors.tertiary,
              borderRadius: BorderRadius.vertical(
                top: const Radius.circular(8),
              ),
            ),
            
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                Text("Complete this Questionnaire to know your spending behaviour!",
                style: context.labelSmall),

                
              ],
              
            ),




          )
        ],
      )
    ),
  );
  }

  Widget Card4(BuildContext context) {
  var colors = Theme.of(context).colorScheme;

  return Container(
    width: 150,
    

    margin: const EdgeInsets.only(right: 16),
    child:Container(
      height: 136,
      decoration: BoxDecoration(
        color: colors.surfaceVariant,
        borderRadius: BorderRadius.circular(8),
        
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            
            height: 10,
              decoration: BoxDecoration(
              color:colors.secondary,
              borderRadius: BorderRadius.vertical(
                top: const Radius.circular(8),
              ),
            ),
            
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                Text("Help others by completing this survey",
                style: context.labelSmall),

                
              ],
              
            ),




          )
        ],
      )
    ),
  );
  }

}
