import 'package:assignment_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_button.dart';
import 'custom_row_of_plane_description.dart';
import 'monthly_planes_selection_buttons.dart';

class BottomSheetPlanesContent extends StatelessWidget {
  const BottomSheetPlanesContent({
    super.key,
    required this.price,
    required this.icon1,
    required this.icon3,
    required this.icon4,
    required this.icon5,
    required this.icon6,
    required this.icon7,
    required this.line2,
    required this.line7,
    required this.line8,
    required this.isrefund,
  });
  final String price;
  final IconData icon1;
  final IconData icon3;
  final IconData icon4;
  final IconData icon5;
  final IconData icon6;
  final IconData icon7;
  final String line2;
  final String line7;
  final String line8;
  final String isrefund;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          child: MonthlyPlaneSelectionButtons(),
        ),
        CustomRowOfPLaneDescription(
            icon: icon1, title: 'Instant support on WhatsApp Group (8AM-10PM)'),
        CustomRowOfPLaneDescription(
            icon: Icons.schedule,
            title: 'Unlimited Free pediatric consultation $line2'),
        CustomRowOfPLaneDescription(
            icon: icon3,
            title:
                'Expert Guidance in Lactation, Nutrition & Weaning: chat/consultation'),
        CustomRowOfPLaneDescription(
            icon: icon4,
            title: 'Growth & Milestone Tracking by an expert pediatrician'),
        CustomRowOfPLaneDescription(
            icon: icon5,
            title: 'Personalized Care by a dedicated pediatrician.'),
        CustomRowOfPLaneDescription(
            icon: icon6,
            title:
                'Comprehensive support & guidance for mother: postnatal care, personalized diet plan, emotional well-being & health concerns'),
        CustomRowOfPLaneDescription(
            icon: icon7, title: 'Free Workshops $line7'),
        CustomRowOfPLaneDescription(
            icon: Icons.discount,
            title:
                'Specialist Consultations for baby & mother:Gynecologists,Dermatologist,Psychologist,Pediatrician,   Nutritionist $line8'),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 14),
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                price,
                style: Styles.textStyle30,
              ),
              const SizedBox(
                width: 30,
              ),
              Text(
                isrefund,
                style: Styles.textStyle14,
              )
            ],
          )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: CustomButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kPurchseView);
            },
            title: 'Select Plane',
          ),
        )
      ],
    );
  }
}
