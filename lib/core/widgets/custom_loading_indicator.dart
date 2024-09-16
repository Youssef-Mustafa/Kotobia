import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class VerticalListLoading extends StatelessWidget {
  const VerticalListLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            // Shimmer for book image
            Shimmer.fromColors(
              baseColor: Colors.grey[500]!,
              highlightColor: Colors.grey[100]!,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: AspectRatio(
                  aspectRatio: 2.5 / 4,
                  child: Container(
                    color: Colors.grey[500],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 30),
            // Shimmer for book details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Shimmer for book title
                  Shimmer.fromColors(
                    baseColor: Colors.grey[500]!,
                    highlightColor: Colors.grey[100]!,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 20,
                      color: Colors.grey[500],
                    ),
                  ),
                  const SizedBox(height: 3),
                  // Shimmer for author name
                  Shimmer.fromColors(
                    baseColor: Colors.grey[500]!,
                    highlightColor: Colors.grey[100]!,
                    child: Container(
                      width: 100,
                      height: 16,
                      color: Colors.grey[500],
                    ),
                  ),
                  const Expanded(child: SizedBox(height: 1)),
                  // Shimmer for icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Shimmer.fromColors(
                        baseColor: Colors.grey[500]!,
                        highlightColor: Colors.grey[100]!,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.grey[300],
                        ),
                      ),
                      Shimmer.fromColors(
                        baseColor: Colors.grey[500]!,
                        highlightColor: Colors.grey[100]!,
                        child: Icon(
                          Icons.download,
                          color: Colors.grey[300],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomBookImageShimmer extends StatelessWidget {
  const CustomBookImageShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Shimmer.fromColors(
          baseColor: Colors.grey[500]!,
          highlightColor: Colors.grey[100]!,
          child: AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              color: Colors.grey[500],
            ),
          ),
        ),
      ),
    );
  }
}
