import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
            "As Hunger for Digital Payments Grows, Fintechs are Making a Splash in Nepal",
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.5,
                  fontFamily: GoogleFonts.aclonica().fontFamily,
                ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            """The digital payment landscape in Nepal is evolving rapidly, with fintechs playing a key role in driving the growth of digital payments.
            The digital payment landscape in Nepal is evolving rapidly, with fintechs playing a key role in driving the growth of digital payments.""",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.3,
                  height: 1.4,
                  color: Theme.of(context).indicatorColor.withOpacity(0.8),
                  fontStyle: GoogleFonts.dmSerifDisplay().fontStyle,
                ),
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            height: 200,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            width: double.maxFinite,
            child: Center(
              child: CachedNetworkImage(
                placeholder: (context, url) {
                  return const CircularProgressIndicator();
                },
                errorWidget: (context, url, error) {
                  return const Icon(Icons.error);
                },
                imageUrl:
                    "https://th.bing.com/th/id/R.892bb645c09c766efcc5bc4d0c93094a?rik=slmcvUaa5yToAw&riu=http%3a%2f%2fwww.wallpapers13.com%2fwp-content%2fuploads%2f2015%2f12%2fNature-Lake-Bled.-Desktop-background-image.jpg&ehk=c2raFC95S12P3OL0%2fwdM60ro3oUxsSEajkuGEN%2fsjbo%3d&risl=1&pid=ImgRaw&r=0",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
