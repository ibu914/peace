class YasaiDesc {
  final String RomanName;
  final String name;
  final String commonDate;
  final String commonDesc;
  final String freezeDate;
  final String freezeDesc;
  final String frozenDate;
  final String frozenDesc;

  const YasaiDesc({
    required this.RomanName,
    required this.name,
    required this.commonDate,
    required this.commonDesc,
    required this.freezeDate,
    required this.freezeDesc,
    required this.frozenDate,
    required this.frozenDesc,});
}


const nasubi = YasaiDesc(
  RomanName: 'nasu',
  name: 'ナスビ',
  commonDate: '｜約3〜4日間',
  commonDesc: '1本1本を新聞紙で包み、風通しの良い場所で保存してください。また新聞紙で包むことで水分を蒸発しにくくし、しなびてしまうのを防げます。',
  freezeDate: '｜約1週間',
  freezeDesc: '野菜室で保存する場合はなす1本1本をラップで包み、乾燥でしなびないようにしましょう。野菜室は風通しのない保存場所なので、新聞紙ではなくラップで包むほうが向いています。ラップがない場合は、新聞紙で包んでからジッパー袋に入れての保存も可能です。',
  frozenDate: '｜約1か月',
  frozenDesc: 'そのまま冷凍すると固くなって切れないため、必ず切ってから冷凍してください。むしろ切ったなすはすぐに酸化して黒くなってしまうため、常温や冷蔵保存よりも冷凍保存がおすすめです。',
);

const kyabetu = YasaiDesc(
  RomanName: 'kyabetu',
  name: 'キャベツ',
  commonDate: '｜約3~4日',
  commonDesc: '1.芯をくり抜きキッチンペーパーを詰める 2.キャベツを新聞紙で包む 3.冷暗所に保存する',
  freezeDate: '｜約3〜4週間',
  freezeDesc: '温かい季節は、キャベツを冷蔵保存しましょう。冷蔵保存する際は、乾燥を防ぐと鮮度をキープできます。',
  frozenDate: '｜約1ヶ月',
  frozenDesc: 'キャベツを長期保存する場合は、冷凍保存がおすすめです。冷凍したキャベツは解凍することなく、使いたい分量だけ取り出せます。',
);

const tamanegi = YasaiDesc(
  RomanName: 'tamanegi',
  name: "タマネギ",
  commonDate: "｜約2ヶ月",
  commonDesc: "風通しの良い冷暗所に保存します。夏場は外気温が高くなるため、野菜室への保存がおすすめです。",
  freezeDate: "｜約3〜4日間",
  freezeDesc: "カットした使いかけの玉ねぎは、切り口をしっかりラップで包み、水分の蒸発を防ぎ保存。",
  frozenDate: "｜約1ヶ月",
  frozenDesc: "調理で使用するサイズに合わせてカット。水気はしっかりとキッチンペーパーでふき取り、冷凍用保存袋に入れて保存します。",
);

const jyagaimo = YasaiDesc(
  RomanName: "jyaga",
  name: "ジャガイモ",
  commonDate: "｜約4ヶ月",
  commonDesc: "冷暗所に保存する。りんごがある場合は、じゃがいもと一緒に袋の中へ保存するのもおすすめです。",
  freezeDate: "｜約3ヶ月",
  freezeDesc: "夏場は芽が出やすいので、野菜室での保存がおすすめです。低温障害を起こさないためにも小分けしてキッチンペーパーで包み、ビニール袋に入れて保存しましょう。",
  frozenDate: "｜1か月",
  frozenDesc: "皮をむいて棒状やくし形など、小さく使いやすい形にカット。水にさらし、アクとでんぷんをしっかり洗い流します。水気をしっかりふき取ってから冷凍用保存袋に入れます",
);

const retasu= YasaiDesc(
  RomanName: "retasu",
  name: "レタス",
  commonDate: "｜約3〜4日間",
  commonDesc:  "カットしていないレタスの場合は、芯をくり抜いて、濡らしたキッチンペーパーを詰めます。新聞紙で包み、冷暗所に保存。",
  freezeDate: "｜約7〜10日間",
  freezeDesc:  "レタスを丸ごと保存する場合は、ポリ袋に入れて保存。",
  frozenDate: "｜約2週間",
  frozenDesc:  "調理で使用するサイズに合わせてカットします。水気はしっかりとキッチンペーパーでふき取り、冷凍用保存袋に入れて保存。",
);

const bro= YasaiDesc(
  RomanName: "bro",
  name: "ブロッコリー",
  commonDate: "｜ほとんど日持ちしません。",
  commonDesc:   "常温保存はせず冷蔵庫で保存することをオススメします。",
  freezeDate:  "｜約4~5日",
  freezeDesc: "冷蔵庫で保存する場合は、キッチンペーパーなどで軽く包み、ポリ袋に入れて保存しましょう。また、保存する際に房を上向きにして立てて保存すると良い状態を保ちつつ保存できますのでオススメです。",
  frozenDate:   "｜約1か月",
  frozenDesc:  "生の状態で保存する場合は、ブロッコリーを小分けにしてひとつずつラップで包んだ後にジッパー付き保存袋に入れて保存すると、料理する際にも使いやすいです。",
);

const daikon= YasaiDesc(
  RomanName: "daikon",
  name: "ダイコン",
  commonDate: "｜約1ヶ月",
  commonDesc: "丸ごと1本の場合、夏以外であれば常温で保存可能です。葉がついていると葉の部分から乾燥してしまうため、葉は切り落とします。新聞紙で包み、冷暗所に立てて保存しましょう。",
  freezeDate: "｜約1週間",
  freezeDesc: "カットしている大根は切り口以外からも乾燥してしまうため、しっかりと大根全体をラップで包み保存します。",
  frozenDate: "｜約1か月",
  frozenDesc: "大根を使いたい大きさに切り、冷凍用保存袋に入れて保存します。下ゆでする必要はありません。"
);


const pman= YasaiDesc(
    RomanName: "pman",
    name: "ピーマン",
    commonDate: "｜約1週間",
    commonDesc: "新聞紙に包み、風通しの良い冷暗所に保存します。",
    freezeDate: "｜約2週間",
    freezeDesc: "3個から4個ずつキッチンペーパーで包み、ポリ袋に入れて野菜室で保存。",
    frozenDate: "｜約2ヶ月",
    frozenDesc:  "丸ごと冷凍用保存袋に入れて冷凍。室温で5分ほど置けばそのまま切れるので便利です。カットしているピーマンの保存期間は1ヶ月程度。"
);


const tomato= YasaiDesc(
    RomanName: "tomato",
    name: "トマト",
    commonDate: "｜約3~4日",
    commonDesc: "常温保存も可能だが夏場は避けましょう。",
    freezeDate: "｜約7〜10日間",
    freezeDesc: "傷みにくいヘタ側を下にして、1個ずつキッチンペーパーで包みポリ袋に入れて、野菜室で保存。",
    frozenDate:"｜約2ヶ月",
    frozenDesc:   "切り口から劣化しやすいので、トマトもミニトマトもヘタつきのまま丸ごと保存袋に入れて冷凍。",
);

const toumorokosi= YasaiDesc(
  RomanName: "toumorokosi",
  name: "トウモロコシ",
  commonDate: "｜約1日",
  commonDesc: "買ったらすぐその日のうちに食べるのがベストです。 もし無理な場合は、常温ではなく冷蔵庫で保存してください。",
  freezeDate:  "｜約2~3日",
  freezeDesc:"皮を付けたままキッチンペーパーで包み、立たせた状況で、野菜室で保存します。",
  frozenDate: "｜約2ヶ月",
  frozenDesc:   "皮付きのまま、1本ずつラップで包みます。さらにポリ袋か冷凍用保存袋に入れて冷凍庫で保存します。調理する際は、ラップに包んだまま電子レンジで加熱するか、ラップをはずして茹でます。また煮たり、焼いたりする場合は、凍ったまま調理できます。",
);

const kabotya= YasaiDesc(
  RomanName: "kabotya",
  name: "カボチャ",
  commonDate: "｜約1ヶ月",
  commonDesc:"丸ごとのかぼちゃの場合は、新聞紙に包み、風通しの良い冷暗所に保存します。カットしたかぼちゃは常温保存に向かないので、冷蔵または冷凍保存しましょう。",
  freezeDate:   "｜約3〜4日間",
  freezeDesc:  "水分量の多い種とワタはスプーンを使って取り除きます。小さくカットして保存する場合は、かぼちゃとラップの間にすきまができないよう、できるだけぴったりと包みます。",
  frozenDate:  "｜約1ヶ月",
  frozenDesc:   "調理の際に使うサイズに合わせてカット。すぐに調理で使えるよう、電子レンジで加熱し火を通します。粗熱を取った後、冷凍用保存袋に入れて保存。",
);

const kinoko= YasaiDesc(
  RomanName: "kinoko",
  name: "キノコ",
  commonDate:  "｜約1~2日",
  commonDesc:  "常温保存する際は、湿気と暑さを避けるために、風通しのよい冷暗所などで保管する必要がある。なお、夏の時期は冷暗所も暑くなるため、常温保存は避けるほうがよい",
  freezeDate:  "｜約5日間",
  freezeDesc:  "水洗いせずにそのままラップで包み、ジッパー付き保存袋に入れて空気をしっかり抜き冷蔵庫で保存します。",
  frozenDate: "｜約1ヶ月",
  frozenDesc:  "水洗いせずにそのまま、またはお好みの大きさに切ります。ジッパー付き保存袋に入れて空気をしっかり抜き冷凍庫で保存します",
);

const papurika = YasaiDesc(
  RomanName: "papurika",
  name: "パプリカ",
  commonDate: "｜3~4日",
  commonDesc:  "乾燥対策をする冷暗所に保存する",
  freezeDate:   "｜10~14日",
  freezeDesc:  "温かい季節は、キャベツを冷蔵保存しましょう。冷蔵保存する際は、乾燥を防ぐと鮮度をキープできます。",
  frozenDate: "｜1か月",
  frozenDesc: "キャベツを長期保存する場合は、冷凍保存がおすすめです。冷凍したキャベツは解凍することなく、使いたい分量だけ取り出せます。",
);


const eringi = YasaiDesc(
  RomanName: "eringi",
  name: "エリンギ",
  commonDate: "｜3~4日",
  commonDesc:  "乾燥対策をする冷暗所に保存する",
  freezeDate:   "｜10~14日",
  freezeDesc:  "温かい季節は、キャベツを冷蔵保存しましょう。冷蔵保存する際は、乾燥を防ぐと鮮度をキープできます。",
  frozenDate: "｜1か月",
  frozenDesc: "キャベツを長期保存する場合は、冷凍保存がおすすめです。冷凍したキャベツは解凍することなく、使いたい分量だけ取り出せます。",
);