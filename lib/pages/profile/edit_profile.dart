import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditProfile extends ConsumerWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                "Save",
              ))
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          const CircleAvatar(
            radius: 60,
            backgroundImage: CachedNetworkImageProvider(
                "https://th.bing.com/th/id/OIP.LTjkdQ_44K7_SJTJHo80dAHaDj?rs=1&pid=ImgDetMain"),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Full Name",
              hintText: "John Doe",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.5)),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.calendar_today,
                  color: Colors.blueGrey,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                    "Member Since: ${DateTime.now().toString().substring(0, 10)}",
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.blueGrey))
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Email",
              hintText: "",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Phone",
              hintText: "",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            maxLines: 4,
            decoration: const InputDecoration(
              labelText: "Bio",
              hintText: "",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Location",
              hintText: "",
            ),
          ),
        ]),
      )),
    );
  }
}
