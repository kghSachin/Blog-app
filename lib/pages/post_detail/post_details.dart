import 'package:chiya_startup/helper/shimmer/shimmer_effect.dart';
import 'package:chiya_startup/pages/home/home_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
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
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
        params: const YoutubePlayerParams(
      enableCaption: true,
      showControls: true,
      showFullscreenButton: true,
      playsInline: false,
      showVideoAnnotations: true,
      strictRelatedVideos: true,
    ));

    _controller
        .loadVideo("https://www.youtube.com/watch?v=VU_OekY5eB8")
        .then((value) => _controller.pauseVideo());

    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const ExampleUiLoadingAnimation()
        : YoutubePlayerScaffold(
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
                                style:
                                    Theme.of(context).textTheme.displaySmall),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Column(
                              children: [
                                ...questionAnswerList
                                    .map((e) => Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 20.0),
                                          child: QuestionAnswerWidget(
                                            question: e.keys.first,
                                            answer: e.values.first,
                                          ),
                                        ))
                                    .toList(),
                                const SizedBox(
                                  height: 40,
                                ),
                                Title(
                                  color: Theme.of(context).indicatorColor,
                                  child: Text("Related articles",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge
                                          ?.copyWith(
                                              fontWeight: FontWeight.bold)),
                                ),
                                Divider(
                                  height: 2,
                                  thickness: 2,
                                  color: Theme.of(context).indicatorColor,
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

class QuestionAnswerWidget extends StatelessWidget {
  final String question;
  final String answer;
  const QuestionAnswerWidget({
    super.key,
    required this.question,
    required this.answer,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(question, style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(
          height: 6,
        ),
        Text(answer, style: Theme.of(context).textTheme.bodyLarge)
      ],
    );
  }
}

List<Map<String, String>> questionAnswerList = [
  {
    "What is the story behind Ekaa Kombucha?":
        "Ekaa Kombucha is a brand that was started by a group of friends who wanted to create a healthy alternative to sugary drinks. They started brewing Kombucha in their kitchen and soon realized that they had a product that was not only healthy but also delicious. They decided to turn their hobby into a business and Ekaa Kombucha was born."
  },
  {
    "What is Kombucha?":
        "Kombucha is a fermented tea that is made by adding a culture of bacteria and yeast to sweetened tea. The culture ferments the tea, creating a drink that is fizzy, slightly sour, and packed with probiotics. Kombucha has been consumed for thousands of years and is believed to have a number of health benefits."
  },
  {
    "What makes Ekaa Kombucha different from other brands?":
        "Ekaa Kombucha is made using only the finest organic ingredients. The tea is brewed in small batches to ensure that each bottle is of the highest quality. Ekaa Kombucha is also committed to sustainability and uses only eco-friendly packaging. The brand is also known for its innovative flavors and creative marketing."
  },
  {
    "How can I get Ekaa Kombucha?":
        "Ekaa Kombucha is available at select health food stores and cafes. You can also order it online through the brand's website. Ekaa Kombucha is also available for catering and events."
  },
  {
    "What are the health benefits of Kombucha?":
        "Kombucha is believed to have a number of health benefits. It is rich in probiotics, which are beneficial bacteria that are important for gut health. Kombucha is also a good source of antioxidants, which can help protect the body from damage caused by free radicals. Some studies have also suggested that Kombucha may have anti-inflammatory and anti-cancer properties."
  },
  {
    "What are the different flavors of Ekaa Kombucha?":
        "Ekaa Kombucha offers a wide range of flavors, including classic, ginger, lemon, and hibiscus. The brand is also known for its limited edition seasonal flavors, which are released throughout the year."
  },
  {
    "What are the different sizes of Ekaa Kombucha?":
        "Ekaa Kombucha is available in 250ml and 500ml bottles. The brand also offers a 5-liter keg for catering and events."
  },
  {
    "What are the different packaging options for Ekaa Kombucha?":
        "Ekaa Kombucha is available in glass bottles, which are 100% recyclable. The brand also offers a 5-liter keg for catering and events."
  },
  {
    "What are the different pricing options for Ekaa Kombucha?":
        "Ekaa Kombucha is available in 250ml bottles for \$3.99 and 500ml bottles for \$6.99. The brand also offers a 5-liter keg for catering and events for \$99.99."
  },
  {
    "What are the different delivery options for Ekaa Kombucha?":
        "Ekaa Kombucha offers free delivery on orders over \$50. The brand also offers a subscription service, which allows customers to have their favorite flavors delivered to their door every month."
  },
  {
    "What are the different payment options for Ekaa Kombucha?":
        "Ekaa Kombucha accepts all major credit cards, as well as PayPal and Apple Pay."
  },
  {
    "What are the different customer service options for Ekaa Kombucha?":
        "Ekaa Kombucha has a dedicated customer service team that is available to answer any questions or concerns. The brand also has a 100% satisfaction guarantee, so if you are not completely satisfied with your purchase, you can return it for a full refund."
  },
  {
    "What are the different marketing options for Ekaa Kombucha?":
        "Ekaa Kombucha offers a number of marketing options, including custom labels, branded merchandise, and event sponsorship. The brand also has a dedicated marketing team that is available to help with any marketing needs."
  },
  {
    "What are the different catering options for Ekaa Kombucha?":
        "Ekaa Kombucha offers a number of catering options, including kegs, bottles, and custom labels. The brand also has a dedicated catering team that is available to help with any catering needs."
  },
];
