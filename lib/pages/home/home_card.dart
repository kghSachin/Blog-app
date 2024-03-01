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
 wor fflks fla The digital payment landscape in Nepal is evolving rapidly, with fintechs playing a key role in driving the growth of digital payments.""",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.3,
                  height: 1.4,
                  color: Theme.of(context).indicatorColor.withOpacity(0.8),
                  fontStyle: GoogleFonts.robotoCondensed().fontStyle,
                ),
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
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
                    "https://static01.nyt.com/images/2024/02/29/multimedia/29pol-border-assess-topart-cjwl/29pol-border-assess-topart-cjwl-superJumbo.jpg?quality=75&auto=webp",
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
                    child: const Center(child: Icon(Icons.error))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
