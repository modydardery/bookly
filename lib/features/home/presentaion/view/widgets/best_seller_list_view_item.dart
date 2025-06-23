import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_routers.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentaion/view/widgets/book_rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cat/cat.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.Book});
  final BookModel Book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouters.KBookDetailsView,extra: Book);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: SizedBox(
          height: 140,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 70 / 105,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(9),
                  child: CachedNetworkImage(
                    imageUrl: Book.volumeInfo?.imageLinks?.thumbnail ?? '',
                    fit: BoxFit.fill,
                    errorWidget:
                        (context, url, error) => Icon(
                          Icons.menu_book_rounded,
                          size: 70,
                          color: Colors.white54,
                        ),
                    placeholder:
                        (context, url) => Center(
                          child: CircularProgressIndicator(
                            color: Colors.white54,
                          ),
                        ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.58,
                      child: Text(
                        Book.volumeInfo?.title ?? 'very interisting book',
                        style: Styles.textstyle20.copyWith(
                          fontFamily: KGTSectraFine,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      Book.volumeInfo?.authors?.isNotEmpty == true
                          ? Book.volumeInfo!.authors!.first
                          : 'No Author',
                      style: Styles.textstyle14.copyWith(
                        color: Color(0xff707070),
                      ),
                    ),
                    Spacer(flex: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Free',
                          style: Styles.textstyle20.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        BookRating(
                          rating: Book.volumeInfo?.averageRating ?? 4.5,
                          reviewsCount: Book.volumeInfo?.ratingsCount ?? 256,
                        ),
                      ],
                    ),
                    Spacer(flex: 3),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
