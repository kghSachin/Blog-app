import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeCard extends ConsumerWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          Text(
            "Nurturing Health and Innovation: The Inspiring Journey of Ekaa Kombucha",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.4,
                  color: Theme.of(context).indicatorColor,
                  fontFamily: GoogleFonts.montserrat().fontFamily,
                ),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("3 min read",
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            fontFamily: GoogleFonts.lato().fontFamily,
                            color: Theme.of(context)
                                .indicatorColor
                                .withOpacity(0.6),
                          )),
                  Text("By: John Doe",
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            fontFamily: GoogleFonts.lato().fontFamily,
                            color: Theme.of(context)
                                .indicatorColor
                                .withOpacity(0.6),
                          )),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Published on: ${DateTime.now().toString().substring(0, 10)}",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                          fontFamily: GoogleFonts.lato().fontFamily,
                          color:
                              Theme.of(context).indicatorColor.withOpacity(0.6),
                        ),
                  ),
                  Text(
                    "Wednesday, 12:00 PM",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                          fontFamily: GoogleFonts.lato().fontFamily,
                          color:
                              Theme.of(context).indicatorColor.withOpacity(0.6),
                        ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            """In a candid interview, Divya Maharjan, one of the founder of Ekaa Kombucha, shares the unique story behind the inception of the startup, highlighting the challenges faced and the triumphs achieved in Nepal's growing health and beverage industry.""",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.4,
                  height: 1.45,
                  color: Theme.of(context).indicatorColor.withOpacity(0.8),
                  fontStyle: GoogleFonts.merriweather().fontStyle,
                ),
            maxLines: 4,
            overflow: TextOverflow.fade,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "read more...",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.4,
                    height: 1.45,
                    color: Theme.of(context).indicatorColor.withOpacity(0.5),
                    fontStyle: GoogleFonts.merriweather().fontStyle,
                  ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                height: 280,
                imageUrl:
                    "https://chiyarastartup.com/media/img/Nurturing_Health_and_Innovation.jpg",
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[200]),
                  child: const Center(
                    child: Icon(Icons.error),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/navbar/bookmark.svg",
                height: 20,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).indicatorColor,
                  BlendMode.srcATop,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
