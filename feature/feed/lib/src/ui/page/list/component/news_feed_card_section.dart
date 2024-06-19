import 'package:core_designsystem/component.dart';
import 'package:core_domain/feed_use_case.dart';
import 'package:core_model/feed.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final class NewsFeedCardSection extends ConsumerWidget {
  const NewsFeedCardSection({
    required void Function(NewsFeed newsFeed) onTap,
    super.key,
  }) : _onTap = onTap;

  final void Function(NewsFeed newsFeed) _onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(newsFeedListStreamUseCaseProvider).when(
          data: (data) {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(16),
              // FIX: データ 3 個目以降に MORE を表示したい
              child: Row(
                children: data
                    .map(
                      (news) => InkWell(
                        borderRadius: BorderRadius.circular(8),
                        onTap: () => _onTap(news),
                        // MEMO: RadiusInkWell みたいに作ると便利かも
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          // MEMO: ここを固定とするかは要検討
                          height: 120,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade200),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          // MEMO: Container.height を元に比率でカードサイズを確定
                          child: AspectRatio(
                            aspectRatio: 16 / 9,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // MEMO: タイトルと内容の比率は一旦 3:4
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Row(
                                    // MEMO: アイコンとタイトルの比率は一旦 1:4
                                    children: [
                                      Expanded(
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.grey.shade200,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          child: news.coverImageUrl.isNotEmpty
                                              ? Image.network(
                                                  news.coverImageUrl,
                                                  fit: BoxFit.cover,
                                                )
                                              : const BrandIcon(
                                                  width: 40,
                                                  height: 40,
                                                ),
                                        ),
                                      ),
                                      const Gap(8),
                                      Expanded(
                                        flex: 4,
                                        child: Text(
                                          news.title,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Gap(8),
                                Expanded(
                                  flex: 4,
                                  child: Text(
                                    news.excerpt,
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    .expand(
                      (widget) => [
                        widget,
                        const Gap(16),
                      ],
                    )
                    .toList(),
              ),
            );
          },
          // MEMO: 一旦、書いただけ
          error: (error, stackTrace) => Center(
            child: Text(
              error.toString(),
            ),
          ),
          // MEMO: 一旦、書いただけ
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        );
  }
}
