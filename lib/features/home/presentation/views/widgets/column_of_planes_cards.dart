import 'package:assignment_app/features/home/presentation/views/widgets/monthly_planes_selection_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/cubit/price_cubit.dart';
import 'Cutom_plane_card.dart';
import 'bottom_sheet_contents.dart';
import 'bottom_sheet_planes_content.dart';

class ColumnOfPlanesCards extends StatelessWidget {
  const ColumnOfPlanesCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomPlaneCard(
          onPressed: () {
            isActive1 = true;
            isActive2 = false;
            showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: const Color(0xff1E293B),
                context: context,
                builder: (context) {
                  return BlocBuilder<PriceCubit, PriceState>(
                    builder: (context, state) {
                      return BottomSheetContents(
                        child: BottomSheetPlanesContent(
                          icon1: Icons.check_circle,
                          icon3: Icons.check_circle,
                          icon4: Icons.check_circle,
                          icon5: Icons.close,
                          icon6: Icons.close,
                          icon7: Icons.check_circle,
                          line2: 'Unlimited Free pediatric consultation (24x7)',
                          line7:
                              'Free Workshops  ( Lactation, Nutrition, Weaning, Postpartum Yoga)',
                          line8: '   (20% off)',
                          price:
                              PriceCubit.isbuttonpressed ? '₹ 999' : '₹ 2499',
                          isrefund: PriceCubit.isbuttonpressed
                              ? ''
                              : '10 days Refund Policy',
                        ),
                      );
                    },
                  );
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22)));
          },
          title: 'Basic Care',
          price: '₹ 999',
          subtitle: 'Reliable pediatric care',
          img: 'assets/imgs/undraw_blooming_re_2kc4.svg',
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 20),
          child: CustomPlaneCard(
            onPressed: () {
              isActive1 = true;
              isActive2 = false;
              showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: const Color(0xff1E293B),
                  context: context,
                  builder: (context) {
                    return BlocBuilder<PriceCubit, PriceState>(
                      builder: (context, state) {
                        return BottomSheetContents(
                          child: BottomSheetPlanesContent(
                            icon1: Icons.check_circle,
                            icon3: Icons.check_circle,
                            icon4: Icons.check_circle,
                            icon5: Icons.close,
                            icon6: Icons.close,
                            icon7: Icons.check_circle,
                            line2:
                                'Unlimited Free pediatric consultation (24x7)',
                            line7:
                                'Free Workshops  ( Lactation, Nutrition, Weaning, Postpartum Yoga)',
                            line8: '   (20% off)',
                            price: PriceCubit.isbuttonpressed
                                ? '₹ 1999'
                                : '₹ 4999',
                            isrefund: PriceCubit.isbuttonpressed
                                ? ''
                                : '10 days Refund Policy',
                          ),
                        );
                      },
                    );
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22)));
            },
            title: 'Prime Care',
            price: '₹ 1999',
            subtitle: 'Comprehensive care for your child health & development.',
            img: 'assets/imgs/undraw_medicine_b-1-ol.svg',
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
          child: CustomPlaneCard(
            onPressed: () {
              isActive1 = true;
              isActive2 = false;
              showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: const Color(0xff1E293B),
                  context: context,
                  builder: (context) {
                    return BlocBuilder<PriceCubit, PriceState>(
                      builder: (context, state) {
                        return BottomSheetContents(
                          child: BottomSheetPlanesContent(
                            icon1: Icons.check_circle,
                            icon3: Icons.check_circle,
                            icon4: Icons.check_circle,
                            icon5: Icons.check_circle,
                            icon6: Icons.check_circle,
                            icon7: Icons.check_circle,
                            line2:
                                'Unlimited Free pediatric consultation (24x7)',
                            line7:
                                'Free Workshops  (Lactation, Nutrition, Weaning, Postpartum Yoga)',
                            line8: '   ( Free ! )',
                            price: PriceCubit.isbuttonpressed
                                ? '₹ 3998'
                                : '₹ 9999',
                            isrefund: PriceCubit.isbuttonpressed
                                ? ''
                                : '10 days Refund Policy',
                          ),
                        );
                      },
                    );
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22)));
            },
            title: 'Holistic Care',
            price: '₹ 3998',
            subtitle: 'Exceptional Personalized Care for Childs and Mothers ',
            img: 'assets/imgs/undraw_medical_research_qg4d.svg',
          ),
        )
      ],
    );
  }
}
