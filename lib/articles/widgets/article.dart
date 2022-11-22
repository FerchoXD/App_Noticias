part of 'widgets.dart';

class Article extends StatelessWidget {
  const Article({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        _ArticleImage(
            url:
                'https://image.shutterstock.com/image-vector/vector-background-screen-tv-news-260nw-1710096061.jpg'),
        _ArticleSourceAndTitle(
            source: 'Chiapa de corzo, chis', title: 'Peligro en chiapas xd'),
        _ArticleDescription(
            description:
                'El arzobispo de Tuxtla Gutiérrez, Fabio Martínez Castilla, pidió a la población no dejarse engañar ante falsos candidatos.'),
        SizedBox(height: 30),
        Divider(),
        SizedBox(height: 20),
      ],
    );
  }
}

class _ArticleDescription extends StatelessWidget {
  final String description;

  const _ArticleDescription({
    Key? key,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8),
      child: Text(description),
    );
  }
}

class _ArticleSourceAndTitle extends StatelessWidget {
  final String source;
  final String title;

  const _ArticleSourceAndTitle({
    Key? key,
    required this.source,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              source,
              style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.blueAccent),
            ),
            Text(title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          ],
        ));
  }
}

class _ArticleImage extends StatelessWidget {
  final String url;

  const _ArticleImage({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: FadeInImage(
          fit: BoxFit.cover,
          width: double.infinity,
          height: 200,
          placeholder: const AssetImage('assets/loading.gif'),
          image: NetworkImage(url),
        ));
  }
}
