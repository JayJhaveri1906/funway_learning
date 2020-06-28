
class Practice {

  String heading1;
  final String imagePath;
  final int color;
  List<String>wordsList;
  Practice({

    this.heading1,this.color,this.imagePath,this.wordsList,

  });
}
List practices = [
  Practice(
      heading1: "CVC words",
      imagePath: "assets/images/hippo.png",
     color:0xFFF25B5B,
      wordsList: ['cab', 'tab', 'crab', 'grab',
        'bat', 'cat', 'fat', 'hat', 'mat', 'pat',
        'bad', 'dad', 'had', 'lad', 'sad','ban', 'can', 'fan', 'man', 'van',
        'bag', 'tag', 'drag', 'flag',
        'cap', 'gap', 'map', 'nap',
        'bam', 'dam', 'ham', 'jam',
        'back', 'hack', 'jack',
        'bash', 'cash', 'mash',
        'bed', 'fed', 'red','beg', 'leg', 'peg',
         'get', 'jet', 'let',  'net','den', 'hen', 'pen', 'ten','bell', 'cell', 'tell',
        'kid', 'lid', 'rid', 'skid','fit', 'hit', 'kit','big', 'dig', 'pig',
        'zip', 'tip', 'lip','fish', 'dish', 'wish','bin', 'pin','tin','cot', 'hot', 'got','dog', 'fog', 'hog',
        'mop', 'pop', 'top','box', 'fox','but', 'cut', 'hut','rub', 'sub', 'tub','bug', 'dug', 'hug',
        'bun', 'fun', 'gun',

      ]
  ),
  Practice(
      heading1: "CCVC words",
      imagePath: "assets/images/elephant.png",
      color:0xFF5B89F2,
      wordsList: ['clap','glass','drum','prod','slug','twin','flop','black','sniff','smell','fresh'
        ,'speech','brush','train','creep','clock','glad','drip','press','slam','twig','flag','blush',
        'snap','smack','frog','spell','brag','truck','crab',]
  ),
  Practice(
      heading1: "CVCC words",
      imagePath: "assets/images/dino.png",
      color:0xFFF2CF5B,
      wordsList: ['band','kilt','lisp','fact','tusk','kept','golf','sink','help','next','milk'
        ,'thump','shift','paint','toast','sand','quilt','wisp','tact','desk','wept','self','bank',
        'yelp','text','silk','jump','left','hunt','best'
      ]
  ),
];