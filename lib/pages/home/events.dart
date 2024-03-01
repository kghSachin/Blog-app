import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class UpcomingEvents extends ConsumerWidget {
  const UpcomingEvents({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.separated(
      itemCount: 10,
      separatorBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 16,
          ),
          child: Divider(
            color: Theme.of(context).indicatorColor.withOpacity(0.8),
            thickness: 0.5,
            height: 0,
          ),
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return UpcomingCard();
      },
    );
  }
}

class UpcomingCard extends StatelessWidget {
  const UpcomingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 8,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CachedNetworkImage(
              height: 220,
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
              errorWidget: (context, url, error) =>
                  const SizedBox(height: 200, child: Icon(Icons.error)),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            "चिया र Startup with Mr. Nomash Chapagain",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.2,
                  height: 0.9,
                  fontFamily: GoogleFonts.roboto().fontFamily,
                ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            "Join us for a conversation with Mr. Nomash Chapagain, the founder of Chiya Ghar and Chiya Startup.",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.3,
                  height: 1.4,
                  color: Theme.of(context).indicatorColor.withOpacity(0.8),
                  fontStyle: GoogleFonts.robotoCondensed().fontStyle,
                ),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Date: 12th March, 2022",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.3,
                      height: 1.4,
                      color: Theme.of(context).indicatorColor,
                      fontStyle: GoogleFonts.robotoCondensed().fontStyle,
                    ),
              ),
              Text(
                "Time: 3:00 PM",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.3,
                      height: 1.4,
                      color: Theme.of(context).indicatorColor,
                      fontStyle: GoogleFonts.robotoCondensed().fontStyle,
                    ),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Location: Chiya Ghar, Thamel",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.3,
                      height: 1.4,
                      color: Theme.of(context).indicatorColor,
                      fontStyle: GoogleFonts.robotoCondensed().fontStyle,
                    ),
              ),
              Text(
                "Price: NPR 500",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.3,
                      height: 1.4,
                      color: Theme.of(context).indicatorColor,
                      fontStyle: GoogleFonts.robotoCondensed().fontStyle,
                    ),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          MaterialButton(
              color: Colors.deepPurple,
              onPressed: () {},
              child: const SizedBox(
                  width: double.maxFinite,
                  child: Center(child: Text("Register Now"))))
        ],
      ),
    );
  }
}
