import 'package:chiya_startup/pages/home/home_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

const List<String> _videoIds = ["U_OekY5eB8"];

class PostDetailsView extends ConsumerStatefulWidget {
  const PostDetailsView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PostDetailsViewState();
}

class _PostDetailsViewState extends ConsumerState<PostDetailsView> {
  late final YoutubePlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
        params: const YoutubePlayerParams(
      enableCaption: true,
      showControls: true,
      showFullscreenButton: true,
      playsInline: true,
      showVideoAnnotations: true,
      strictRelatedVideos: true,
    ));

    _controller.loadVideo("https://www.youtube.com/watch?v=VU_OekY5eB8");
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerScaffold(
      controller: _controller,
      gestureRecognizers: const {},
      enableFullScreenOnVerticalDrag: false,
      aspectRatio: 16 / 9,
      builder: (context, player) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: const Text("Details Page"),
          ),
          body: LayoutBuilder(builder: (context, constraints) {
            if (constraints.minWidth >= 480) {
              return player;
            } else {
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                          "Nurturing Health and Innovation: The Inspiring Journey of Ekaa Kombucha",
                          style: Theme.of(context).textTheme.displaySmall),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text("published on 12th May 2021",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .indicatorColor
                                      .withOpacity(0.5))),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    player,
                    const SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          Text(
                              "Ekaa Kombucha is a homegrown brand that is making waves in the health and wellness industry. The brand is known for its unique and refreshing range of kombucha drinks that are made using natural ingredients and traditional fermentation techniques. In this video, we take you through the inspiring journey of Ekaa Kombucha and how it is nurturing health and innovation.",
                              style: Theme.of(context).textTheme.bodyLarge),
                          Text(
                              "Ekaa Kombucha is a homegrown brand that is making waves in the health and wellness industry. The brand is known for its unique and refreshing range of kombucha drinks that are made using natural ingredients and traditional fermentation techniques. In this video, we take you through the inspiring journey of Ekaa Kombucha and how it is nurturing health and innovation.",
                              style: Theme.of(context).textTheme.bodyLarge),
                          Text(
                              "Ekaa Kombucha is a homegrown brand that is making waves in the health and wellness industry. The brand is known for its unique and refreshing range of kombucha drinks that are made using natural ingredients and traditional fermentation techniques. In this video, we take you through the inspiring journey of Ekaa Kombucha and how it is nurturing health and innovation.",
                              style: Theme.of(context).textTheme.bodyLarge),
                          Text(
                              "Ekaa Kombucha is a homegrown brand that is making waves in the health and wellness industry. The brand is known for its unique and refreshing range of kombucha drinks that are made using natural ingredients and traditional fermentation techniques. In this video, we take you through the inspiring journey of Ekaa Kombucha and how it is nurturing health and innovation.",
                              style: Theme.of(context).textTheme.bodyLarge),
                          const SizedBox(
                            height: 40,
                          ),
                          Title(
                            color: Theme.of(context).indicatorColor,
                            child: Text("Related Videos",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.copyWith(fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          const HomeCard(),
                          Divider(
                            color: Theme.of(context).indicatorColor,
                          ),
                          const HomeCard(),
                          const SizedBox(
                            height: 80,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
          }),
        );
      },
    );
  }
}
