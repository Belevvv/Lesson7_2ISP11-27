import 'package:flutter/material.dart';

class unfavoritbook extends StatelessWidget {
  const unfavoritbook({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Boook extends ChangeNotifier {
  int id;
  String nameB;
  String Book;
  double Cost;
  String nameA;
  String info;
  List listPhoto;
  Boook(this.id, this.nameB, this.Book, this.Cost, this.nameA, this.info,
      this.listPhoto);

  List GetListOfPhoto() {
    List<Widget> pages = [];

    for (int i = 0; i < listPhoto.length; i++) {
      pages.add(Image.network(listPhoto[i]));
    }

    return pages;
  }
  List CatList = [];



void removeItemFromCart(int index) {
    CatList.removeAt(index);
    notifyListeners();
  }

void addItemtoCart(int index){
  CatList.add(BoookList[index]);
  notifyListeners();
}

String CalculateTotal(){
  double totalPrice = 0;
  for (int i = 0 ; i < CatList.length; i++);{
    totalPrice += double.parse(CatList[id][1]);
  }
  return totalPrice.toStringAsFixed(2);
}
}

List BoookList = [
  Boook(
      1,
      "От первого лица",
      "https://ndc.book24.ru/resize/820x1180/iblock/f21/f21fda16bee61fc4d60cf847b745ab9d/808a14ded68b86d86ed679a142d4d07d.jpg",
      150,
      "Мураками Харуки",
      "Восемь рассказов От первого лица в фирменном стиле автора",
      [
        "https://cdn.book24.ru/v2/ITD000000001229064/COVER/cover4__w820.webp",
        "https://cdn.book24.ru/v2/ITD000000001229064/COVER/dopfoto00__w820.webp"
      ]),
  Boook(
      2,
      "Коралина",
      "https://ndc.book24.ru/resize/820x1180/iblock/736/73669263403ad0990245a36d22cbf20b/3637ffdc5f70eb7fb1d89dd6094a906e.jpg",
      550,
      "Нил Гейман",
      "Коралина — история о девочке, которая обнаруживает за дверью своего нового дома другую квартиру, как две капли воды похожую на ее собственную. Там живут другие мама с папой, которые хотят, чтобы Коралина осталась с ними. Девочке придется быть очень смелой, чтобы вернуться в свой настоящий дом и обрести себя.",
      [
        "https://cv8.litres.ru/pub/c/cover_max1500/442785.jpg",
        "https://i2013.otzovik.com/2013/10/06/564061/img/65626998.jpg"
      ]),
  Boook(
      3,
      "Родная кровь",
      "https://cv7.litres.ru/pub/c/cover_415/67066479.webp",
      666,
      "Козырева Оксана Викторовна",
      "Все мы порой чувствуем, что наша жизнь складывается не так, годы проходят зря, что нас не ценят по достоинству и нам хочется большего. Проявленность - это не только публичность: выйти и говорить перед большой аудиторией. Проявленность - это сказать важное близким, коллегам, себе, открыть что-то перед другими, внести ясность. Как это делать, что нам мешает и почему курсы по технике речи не решат сложностей вашего проявления - обо всем расскажет психолог, автор блога Пора к психологу, телеведущая (Квартирный вопрос, Дачный ответ) Оксана Козырева.",
      [
        "https://cv8.litres.ru/pub/c/cover_max1500/442785.jpg",
        "https://i2013.otzovik.com/2013/10/06/564061/img/65626998.jpg"
      ]),
       Boook(
      4,
      "Верность",
      "https://cdn.book24.ru/v2/ITD000000001115887/COVER/cover13d__w410.webp",
      1700,
      "Миссироли Марко",
      "Карло очень любит свою жену. Но у его студентки Софии трогательные ямочки на щеках, и Карло не может перестать думать о ней. Маргерита очень любит своего мужа. Но у ее физиотерапевта Андреа такие сильные руки, и Маргерита не может перестать думать о нём.В вожделении, признаниях, страхах и изменах они пытаются выковать свою жизнь, которая порой кажется бессмысленной, сложной и пугающей. Чего каждый из них желает на самом деле? И смогут ли они сохранить верность самим себе?",
      [
        "https://cdn.book24.ru/v2/ITD000000001115887/COVER/cover4__w410.webp",
        "https://cdn.book24.ru/v2/ITD000000001115887/COVER/cover3d__w410.webp"
      ]),
       Boook(
      5,
      "Алая река",
      "https://ndc.book24.ru/resize/820x1180/iblock/728/72897a6396ba20e39e749a0d3e490842/17446d245bb5ffa48eba68636844a2ab.jpg",
      100,
      "Мур Лиз",
      "Самый мощный роман 2020 года по версии New York Times, Forbes, Washington Post, Vogue, Marie Claire, Entertainment Weekly, PopSugar, Bustle",
      [
        "https://cdn.book24.ru/v2/ITD000000000940514/COVER/cover4__w410.webp",
        "https://cdn.book24.ru/v2/ITD000000001115887/COVER/cover3d__w410.webp"
      ]),
       Boook(
      6,
      "Большая книга серийных убийц",
      "https://cdn.book24.ru/v2/ITD000000001268983/COVER/cover13d__w410.webp",
      1300,
      "Роузвуд Джек",
      "Наводящие ужас и вызывающие интерес биографии серийных убийц со всего мира: России, Китая, США, Австралии и других стран.",
      [
        "https://cdn.book24.ru/v2/ITD000000001268983/COVER/cover4__w410.webp",
        "https://cdn.book24.ru/v2/ITD000000001268983/COVER/banner1__w410.webp"
      ]), Boook(
      7,
      "Избушка на костях",
      "https://cdn.book24.ru/v2/MIF00038008/COVER/cover13d__w410.webp",
      700,
      "Власова Ксения Игоревна",
      "Ретеллинг про Василису, которая отправилась в лес к Бабе-ЯгеМрачная, чарующая сказка, наполненная шумом ветра и шелестом листьев Обложка от Iren Horrors, иллюстрации на форзацах и в блоке — centaurea",
      [
        "https://cdn.book24.ru/v2/MIF00038008/COVER/cover4__w410.webp",
        "https://cdn.book24.ru/v2/MIF00038008/COVER/dopfoto04__w410.webp"
      ]), Boook(
      8,
      "Безликая королева",
      "https://cdn.book24.ru/v2/ASE000000000876176/COVER/cover13d__w410.webp",
      700,
      "Диас Отто",
      "В Ревердасе существует особый закон о престолонаследии: выжить может лишь один из наследников. Так распорядился сам бог. Но что случится, если этот закон нарушить?",
      [
        "https://cdn.book24.ru/v2/ASE000000000876176/COVER/cover4__w410.webp",
        "https://cdn.book24.ru/v2/ASE000000000876176/COVER/banner1__w410.webp"
      ]), Boook(
      9,
      "Орден Скорпионов",
      "https://cdn.book24.ru/v2/ASE000000000872258/COVER/cover13d__w410.webp",
      900,
      "Эшер Айви",
      "Новинка откровенной серии «Mainstream. Темные королевства» о запретной страсти и нечестивой магии.",
      [
        "https://cdn.book24.ru/v2/ASE000000000872258/COVER/cover4__w410.webp",
        "https://cdn.book24.ru/v2/ASE000000000872258/COVER/dopfoto02__w410.webp"
      ]),Boook(
      10,
      "Правило номер 5",
      "https://cdn.book24.ru/v2/ITD000000001363564/COVER/cover13d__w410.webp",
      700,
      "Уайлдер Дж.",
      "Первая часть чувственной серии романов о хоккеистах «Нарушители правил» от автора бестселлеров Дж. Уайлдер! Истории, которым по силам растопить лед!",
      [
        "https://cdn.book24.ru/v2/ITD000000001363564/COVER/cover4__w410.webp",
        "https://cdn.book24.ru/v2/ITD000000001363564/COVER/dopfoto00__w410.webp"
      ]),Boook(
      11,
      "Князья Ада",
      "https://cdn.book24.ru/v2/ITD000000001320461/COVER/cover13d__w410.webp",
      900,
      "Хэмбли Барбара",
      "Пекин, октябрь 1912 года. Джеймс Эшер, его жена Лидия, а также пожилой доктор наук, открывший в себе страсть к охоте на вампиров, прибыли в Китай, чтобы проверить слухи о появлении гнезда Иных. Разумеется, в первый же вечер, сойдя с корабля, Эшер встречает старого знакомого ― дона Симона Исидро.",
      [
        "https://cdn.book24.ru/v2/ITD000000001320461/COVER/cover4__w410.webp",
        "https://cdn.book24.ru/v2/ITD000000001320461/COVER/cover3d__w410.webp"
      ]),Boook(
      12,
      "Неведомый",
      "https://cdn.book24.ru/v2/ITD000000001342029/COVER/cover13d__w410.webp",
      600,
      "Аскельд Анна",
      "Мегрия стоит на пороге раскола и новой войны. Сделает она шаг вперед или отступится?",
      [
        "https://cdn.book24.ru/v2/ITD000000001342029/COVER/cover4__w410.webp",
        "https://cdn.book24.ru/v2/ITD000000001342029/COVER/dopfoto02__w410.webp"
      ]),Boook(
      13,
      "Королевская кровь",
      "https://cdn.book24.ru/v2/ITD000000001349222/COVER/cover13d__w410.webp",
      950,
      "Котова Ирина Владимировна",
      "В самые темные времена, из самого горького пепла прорастают смелость, самоотверженность и воля… Каждый ведет свою битву: одни защищают Туру на поле боя, другие в тылу — спасая солдат, помогая мирным жителям. Кого-то война заставляет принять свою силу и место, а кого-то — от усталости и боли совершать непоправимые ошибки.",
      [
        "https://cdn.book24.ru/v2/ITD000000001349222/COVER/cover4__w410.webp",
        "https://cdn.book24.ru/v2/ITD000000001349222/COVER/dopfoto02__w410.webp"
      ]),Boook(
      14,
      "Возрождение Тёмной",
      "https://cdn.book24.ru/v2/ASE000000000876745/COVER/cover13d__w410.webp",
      500,
      "Фим Юлия",
      "Для любителей неоднозначных героинь, за чьим ростом и изменениями, можно наблюдать на протяжении всех трех книг.",
      [
        "https://cdn.book24.ru/v2/ASE000000000876745/COVER/cover4__w410.webp",
        "https://cdn.book24.ru/v2/ASE000000000876745/COVER/banner1__w410.webp"
      ]),Boook(
      15,
      "Сказания о Небожителях: Сфера",
      "https://cdn.book24.ru/v2/ASE000000000876022/COVER/cover13d__w410.webp",
      900,
      "Кенли Мэри",
      "Фэнтезийная история, включившая в себя аутентичные элементы китайской культуры, религии и искусства — и размеренное повествование о познании мира и себя в волшебном мире восточного средневековья.",
      [
        "https://cdn.book24.ru/v2/ASE000000000876022/COVER/cover4__w410.webp",
        "https://cdn.book24.ru/v2/ASE000000000876022/COVER/dopfoto03__w410.webp"
      ]),
];

