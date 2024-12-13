import 'package:bookly_app/Core/Utils/app_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookDetails);
      },
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl:
                "http://books.google.com/books/content?id=nOPuDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
