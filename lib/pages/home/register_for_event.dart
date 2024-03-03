import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khalti_flutter/khalti_flutter.dart';

class RegisterForUpcomingEvent extends ConsumerStatefulWidget {
  const RegisterForUpcomingEvent({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      RegisterForUpcomingEventState();
}

class RegisterForUpcomingEventState
    extends ConsumerState<RegisterForUpcomingEvent> {
  @override
  Widget build(BuildContext context) {
    final config = PaymentConfig(
      mobile: "9812315887",
      amount: 10000, // Amount should be in paisa
      productIdentity: 'dell-g5-g5510-2021',
      productName: 'Dell G5 G5510 2021',
      productUrl: 'https://www.khalti.com/#/bazaar',
      additionalData: {
        // Not mandatory; can be used for reporting purpose
        'vendor': 'Khalti Bazaar',
      },
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        elevation: 0,
        title: const Text("Event Registration"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 24,
              ),
              const Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      "https://chiyarastartup.com/media/even/img/chiya_nn3y5yw.jpg"),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Join us for the 3rd edition of Chiya Startup Summit",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.5,
                      height: 1.4,
                      fontFamily: GoogleFonts.acme().fontFamily,
                      color: Theme.of(context).indicatorColor.withOpacity(0.8),
                    ),
                textAlign: TextAlign.center,
              ),
              Text(
                "Date: 12th September, 2021",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      fontFamily: GoogleFonts.acme().fontFamily,
                      color: Theme.of(context).indicatorColor.withOpacity(0.6),
                    ),
              ),
              Text(
                "Time: 10:00 AM - 4:00 PM",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      fontFamily: GoogleFonts.acme().fontFamily,
                      color: Theme.of(context).indicatorColor.withOpacity(0.6),
                    ),
              ),
              Text(
                "Venue: Numa ban",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      fontFamily: GoogleFonts.acme().fontFamily,
                      color: Theme.of(context).indicatorColor.withOpacity(0.6),
                    ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text("Name"),
              const SizedBox(
                height: 4,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  hintText: "Enter your full name",
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text("Contact"),
              const SizedBox(
                height: 4,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  hintText: "Enter your contact details",
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text("Email"),
              const SizedBox(
                height: 4,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  hintText: "Enter your email address",
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text("Address"),
              const SizedBox(
                height: 4,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  hintText: "Enter your location details",
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text("Institution / Business (optional)"),
              const SizedBox(
                height: 4,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  hintText: "institution or business name",
                ),
              ),
              const SizedBox(
                height: 24,
              ),
             
              ElevatedButton(
                onPressed: () async {
                  await KhaltiScope.of(context).pay(
                      preferences: [
                        PaymentPreference.khalti,
                        PaymentPreference.eBanking,
                        PaymentPreference.mobileBanking,
                      ],
                      config: config,
                      onCancel: () {
                        print("Cancelled");
                      },
                      onSuccess: (value) {
                        print(value.token);
                        print(value.additionalData);
                        print(value.idx);
                        print(value.mobile);
                        print(value.productUrl);
                        print(value.productName);
                        print(value.productIdentity);
                      },
                      onFailure: (value) {
                        print("failed");
                        print(value.message);
                        print(value.data);
                      });
                },
                child: SizedBox(
                  height: 48,
                  width: double.maxFinite,
                  child: Center(
                    child: Text(
                      "Register (via Khalti)",
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.4,
                            height: 1.4,
                          ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
