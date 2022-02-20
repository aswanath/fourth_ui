import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fourth_ui_rebuild/custom_widgets.dart';

class FourthUi extends StatefulWidget {
  FourthUi({Key? key}) : super(key: key);

  @override
  State<FourthUi> createState() => _FourthUiState();
}

class _FourthUiState extends State<FourthUi> {
  Icon expansion = Icon(Icons.add);
  Icon expansion2 = Icon(Icons.add);
  Icon expansion3 = Icon(Icons.add);
  Icon expansion4 = Icon(Icons.add);
  Icon expansion5 = Icon(Icons.add);
  Icon expansion6 = Icon(Icons.add);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                delegate: CustomSliverAppBar(),
                pinned: true,
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 100,
                          ),
                          CustomText(
                            text: 'Features',
                            size: 16,
                            weight: FontWeight.w500,
                          ),
                          Features(
                              icon: Icons.star_border,
                              header: 'Custom domain name',
                              subhead:
                                  'Get your own custom domain and build\nyour brand on the internet.'),
                          Features(
                              icon: Icons.verified_outlined,
                              header: 'Verified seller badge',
                              subhead:
                                  'Get green verified badge under your\nstore name and build trust.'),
                          Features(
                              icon: Icons.laptop_chromebook_outlined,
                              header: 'Dukaan for PC',
                              subhead:
                                  'Access all the exclusive premium\nfeatures on Dukaan for PC'),
                          Features(
                              icon: Icons.support_agent_outlined,
                              header: 'Priority support',
                              subhead:
                                  'Get your questions resolved with out\npriority customer support'),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: BorderSide(width: 1.3, color: Colors.grey),
                        )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          CustomText(
                            text: 'What is Dukaan Premium?',
                            size: 16,
                            weight: FontWeight.w500,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Stack(children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image.network(
                                'https://cdn.pixabay.com/photo/2017/03/13/17/26/ecommerce-2140603__340.jpg',
                                height: 150,
                                width: MediaQuery.of(context).size.width,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Positioned(
                              left: 50,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.network(
                                  'https://www.freepnglogos.com/uploads/youtube-logo-red-hd-13.png',
                                  height: 150,
                                  width: 250,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ])
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: BorderSide(width: 1.3, color: Colors.grey),
                        )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          CustomText(
                            text: 'Frequently asked questions',
                            size: 16,
                            weight: FontWeight.w500,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ListTileTheme(
                            dense: true,
                            contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Column(
                              children: [
                                ExpandedListCustom(
                                    expansionchange: (val) {
                                      setState(() {
                                        if (val == true) {
                                          expansion = Icon(
                                            Icons.minimize_outlined,
                                            color: Colors.grey,
                                          );
                                        } else {
                                          expansion = Icon(Icons.add);
                                        }
                                      });
                                    },
                                    trailing: expansion,
                                    description:
                                        'Dukaan caters to a wide variety of sellers. Be it a small grocery or a large legacy brand.',
                                    heading:
                                        'What types of Businesses can use Dukaan Premium?'),
                                ExpandedListCustom(expansionchange: (val) {
                                  setState(() {
                                    if (val == true) {
                                      expansion2 = Icon(
                                        Icons.minimize_outlined,
                                        color: Colors.grey,
                                      );
                                    } else {
                                      expansion2 = Icon(Icons.add);
                                    }
                                  });
                                }, trailing: expansion2, description: 'We will refund as per your need. You are our customers....', heading: 'What is your refund policy?'),
                                ExpandedListCustom(expansionchange: (val) {
                                  setState(() {
                                    if (val == true) {
                                      expansion3 = Icon(
                                        Icons.minimize_outlined,
                                        color: Colors.grey,
                                      );
                                    } else {
                                      expansion3 = Icon(Icons.add);
                                    }
                                  });
                                }, trailing: expansion3, description: 'We will refund as per your need. You are our customers....Yes, sure. Free trial wiil end and you need to pay for it.', heading: 'Will there be an automatic charge after the paid trial?'),
                                ExpandedListCustom(expansionchange: (val) {
                                  setState(() {
                                    if (val == true) {
                                      expansion4 = Icon(
                                        Icons.minimize_outlined,
                                        color: Colors.grey,
                                      );
                                    } else {
                                      expansion4 = Icon(Icons.add);
                                    }
                                  });
                                }, trailing: expansion4, description: 'We have all kind of payment methods like net banking, upi and etc.', heading: 'What payment methods do you offer?'),
                                ExpandedListCustom(expansionchange: (val) {
                                  setState(() {
                                    if (val == true) {
                                      expansion5 = Icon(
                                        Icons.minimize_outlined,
                                        color: Colors.grey,
                                      );
                                    } else {
                                      expansion5 = Icon(Icons.add);
                                    }
                                  });
                                }, trailing: expansion5, description: 'You will be charged with our annual fees.', heading: 'What happens when my free trial ends?'),
                                ExpandedListCustom(expansionchange: (val) {
                                  setState(() {
                                    if (val == true) {
                                      expansion6 = Icon(
                                        Icons.minimize_outlined,
                                        color: Colors.grey,
                                      );
                                    } else {
                                      expansion6 = Icon(Icons.add);
                                    }
                                  });
                                }, trailing: expansion6, description: 'You will be charged with our annual fees. Also we have a good refund policy too..', heading: 'What are the terms for the custom domain?'),
                              ]
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: BorderSide(width: 1.3, color: Colors.grey),
                        )),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: 'Need help? Get in touch',
                            size: 16,
                            weight: FontWeight.w500,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GetTouch(
                                  text: 'Live Chat',
                                  icon: Icons.messenger_outline),
                              GetTouch(
                                  text: 'Phone Call',
                                  icon: Icons.local_phone_outlined)
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomText(
                                text: 'Select Domain',
                                color: Colors.blue[700],
                                weight: FontWeight.w600,
                                size: 15,
                                space: .5,
                              ),
                              SizedBox(
                                width: 220,
                                height: 30,
                                child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Colors.blue[900],
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                        child: CustomText(
                                      text: 'Get Premium',
                                      color: Colors.white,
                                      weight: FontWeight.w500,
                                    ))),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ]))
            ],
          ),
        ),
      ),
    );
  }
}

class CustomSliverAppBar extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.none,
      children: [
        Container(
          color: Colors.blue[900],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              ),
              SizedBox(
                width: 90,
              ),
              CustomText(
                text: 'Dukaan Premium',
                color: Colors.white,
                weight: FontWeight.w500,
                size: 19,
              )
            ],
          ),
        ),
        Dukaancard(
          shrinkOffset: shrinkOffset,
        )
      ],
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 150;

  @override
  // TODO: implement minExtent
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
