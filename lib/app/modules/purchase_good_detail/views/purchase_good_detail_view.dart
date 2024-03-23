import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sharkfreefin/app/extensions.dart';
import 'package:sharkfreefin/app/widgets/back_button.dart';
import 'package:sharkfreefin/app/widgets/button.dart';

import '../controllers/purchase_good_detail_controller.dart';

class PurchaseGoodDetailView extends GetView<PurchaseGoodDetailController> {
  const PurchaseGoodDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var colors = Theme.of(context).colorScheme;
    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const CustomBackButton(),
              const SizedBox(height: 32),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)),
                child: Image.asset(
                  "lib/app/data/asset/images/coffee_bean.png",
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "Softlan Floral Fresh Fabric Softener Refill 1.4L",
                style: context.titleLarge,
              ),
              const SizedBox(height: 24),
              Text(
                "RM7.69",
                style: context.displayMedium!.copyWith(color: colors.error),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Normal Price: RM12",
                    style: context.bodyLarge,
                  ),
                  Text(
                    "6 units left",
                    style: context.bodyLarge,
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Bulk Purchase from ",
                    style: context.labelLargeProminent,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            "lib/app/data/asset/images/no_profile_pic.png",
                            scale: 0.5,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "Aizam",
                        style: context.labelLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              CustomButton(
                buttonText: "Buy",
                onPressed: () {},
                icon: Icons.add,
              ),
              const SizedBox(height: 40),
            ],
          )),
    ));
  }
}
