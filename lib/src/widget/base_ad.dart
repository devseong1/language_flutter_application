import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class BaseAd extends StatefulWidget {
  final AdSize adSize;

  const BaseAd({super.key, required this.adSize});

  @override
  State<BaseAd> createState() => _BaseAdState();
}

class _BaseAdState extends State<BaseAd> {
  BannerAd? bannerAd;

  @override
  void initState() {
    super.initState();
    BannerAd(
      // dev
      adUnitId: Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-3940256099942544/2934735716',
      // production
      // adUnitId: Platform.isAndroid
      //     ? 'ca-app-pub-4908024520086174/2679333102'
      //     : 'ca-app-pub-4908024520086174/7740088093',
      request: const AdRequest(),
      size: widget.adSize,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            bannerAd = ad as BannerAd;
          });
        },
        onAdFailedToLoad: (ad, err) {
          ad.dispose();
        },
      ),
    ).load();
  }

  @override
  void dispose() {
    bannerAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (bannerAd != null) {
      return Align(
          child: SizedBox(
        width: bannerAd!.size.width.toDouble(),
        height: bannerAd!.size.height.toDouble(),
        child: AdWidget(
          ad: bannerAd!,
        ),
      ));
    }
    return Align(
      child: SizedBox(
        width: widget.adSize.width.toDouble(),
        height: widget.adSize.height.toDouble(),
        child: const Center(
          child: CupertinoActivityIndicator(),
        ),
      ),
    );
  }
}
