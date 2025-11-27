1:"$Sreact.fragment"
9a:I[97367,["/_next/static/chunks/ff1a16fafef87110.js","/_next/static/chunks/247eb132b7f7b574.js"],"OutletBoundary"]
9b:"$Sreact.suspense"
0:{"buildId":"RqgZpdjvmRmsNEZZwi_AJ","rsc":["$","$1","c",{"children":[["$","div",null,{"className":"container mx-auto py-10","children":["$","div",null,{"className":"mx-auto max-w-3xl","children":[["$","div",null,{"className":"mb-8","children":[["$","h1",null,{"className":"scroll-m-20 text-4xl font-extrabold tracking-tight lg:text-5xl","children":"Service Container"}],["$","p",null,{"className":"text-xl text-muted-foreground mt-2","children":"Service Container"}]]}],["$","article",null,{"className":"prose prose-slate dark:prose-invert max-w-none","children":[["$","h1",null,{"id":"service-container","children":["$","a",null,{"href":"#service-container","children":"Service Container"}]}],"\n",["$","ul",null,{"children":["\n",["$","li",null,{"children":[["$","a",null,{"href":"#introduction","children":"簡介"}],"\n",["$","ul",null,{"children":["\n",["$","li",null,{"children":["$","a",null,{"href":"#zero-configuration-resolution","children":"零設定解析"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#when-to-use-the-container","children":"何時使用 Container"}]}],"\n"]}],"\n"]}],"\n",["$","li",null,{"children":[["$","a",null,{"href":"#binding","children":"綁定 (Binding)"}],"\n",["$","ul",null,{"children":["\n",["$","li",null,{"children":["$","a",null,{"href":"#binding-basics","children":"綁定基礎"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#binding-interfaces-to-implementations","children":"綁定介面至實作"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#contextual-binding","children":"上下文綁定 (Contextual Binding)"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#contextual-attributes","children":"上下文屬性 (Contextual Attributes)"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#binding-primitives","children":"綁定基本型別"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#binding-typed-variadics","children":"綁定型別化可變參數"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#tagging","children":"標記 (Tagging)"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#extending-bindings","children":"擴充綁定"}]}],"\n"]}],"\n"]}],"\n",["$","li",null,{"children":[["$","a",null,{"href":"#resolving","children":"解析 (Resolving)"}],"\n",["$","ul",null,{"children":["\n",["$","li",null,{"children":["$","a",null,{"href":"#the-make-method","children":"Make 方法"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#automatic-injection","children":"自動注入"}]}],"\n"]}],"\n"]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#method-invocation-and-injection","children":"方法呼叫與注入"}]}],"\n",["$","li",null,{"children":[["$","a",null,{"href":"#container-events","children":"Container Events"}],"\n",["$","ul",null,{"children":["\n",["$","li",null,{"children":["$","a",null,{"href":"#rebinding","children":"重新綁定 (Rebinding)"}]}],"\n"]}],"\n"]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#psr-11","children":"PSR-11"}]}],"\n"]}],"\n",["$","a",null,{"name":"introduction"}],"\n",["$","h2",null,{"id":"簡介","children":["$","a",null,{"href":"#簡介","children":"簡介"}]}],"\n",["$","p",null,{"children":"Laravel Service Container 是一個用於管理類別依賴和執行 Dependency Injection (依賴注入) 的強大工具。Dependency Injection 是一個花俏的詞彙，基本上意味著：類別依賴透過建構子或在某些情況下透過「setter」方法「注入」到類別中。"}],"\n",["$","p",null,{"children":"讓我們看一個簡單的例子："}],"\n",["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"<?php\n\nnamespace App\\Http\\Controllers;\n\nuse App\\Services\\AppleMusic;\nuse Illuminate\\View\\View;\n\nclass PodcastController extends Controller\n{\n    /**\n     * Create a new controller instance.\n     */\n    public function __construct(\n        protected AppleMusic $apple,\n    ) {}\n\n    /**\n     * Show information about the given podcast.\n     */\n    public function show(string $id): View\n    {\n        return view('podcasts.show', [\n            'podcast' => $this->apple->findPodcast($id)\n        ]);\n    }\n}\n"}]}],"\n",["$","p",null,{"children":["在這個例子中，",["$","code",null,{"children":"PodcastController"}]," 需要從資料來源（如 Apple Music）檢索 Podcast。因此，我們將 ",["$","strong",null,{"children":"注入"}]," 一個能夠檢索 Podcast 的服務。由於服務是注入的，我們可以在測試應用程式時輕鬆地「模擬 (mock)」，或建立 ",["$","code",null,{"children":"AppleMusic"}]," 服務的虛擬實作。"]}],"\n",["$","p",null,{"children":"深入了解 Laravel Service Container 對於建立強大的大型應用程式以及為 Laravel 核心本身做出貢獻至關重要。"}],"\n",["$","a",null,{"name":"zero-configuration-resolution"}],"\n",["$","h3",null,{"id":"零設定解析","children":["$","a",null,{"href":"#零設定解析","children":"零設定解析"}]}],"\n",["$","p",null,{"children":["如果一個類別沒有依賴，或者只依賴於其他具體類別（不是介面），則不需要指示 Container 如何解析該類別。例如，您可以在 ",["$","code",null,{"children":"routes/web.php"}]," 檔案中放置以下程式碼："]}],"\n",["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"<?php\n\nclass Service\n{\n    // ...\n}\n\nRoute::get('/', function (Service $service) {\n    dd($service::class);\n});\n"}]}],"\n","$L2","\n","$L3","\n","$L4","\n","$L5","\n","$L6","\n","$L7","\n","$L8","\n","$L9","\n","$La","\n","$Lb","\n","$Lc","\n","$Ld","\n","$Le","\n","$Lf","\n","$L10","\n","$L11","\n","$L12","\n","$L13","\n","$L14","\n","$L15","\n","$L16","\n","$L17","\n","$L18","\n","$L19","\n","$L1a","\n","$L1b","\n","$L1c","\n","$L1d","\n","$L1e","\n","$L1f","\n","$L20","\n","$L21","\n","$L22","\n","$L23","\n","$L24","\n","$L25","\n","$L26","\n","$L27","\n","$L28","\n","$L29","\n","$L2a","\n","$L2b","\n","$L2c","\n","$L2d","\n","$L2e","\n","$L2f","\n","$L30","\n","$L31","\n","$L32","\n","$L33","\n","$L34","\n","$L35","\n","$L36","\n","$L37","\n","$L38","\n","$L39","\n","$L3a","\n","$L3b","\n","$L3c","\n","$L3d","\n","$L3e","\n","$L3f","\n","$L40","\n","$L41","\n","$L42","\n","$L43","\n","$L44","\n","$L45","\n","$L46","\n","$L47","\n","$L48","\n","$L49","\n","$L4a","\n","$L4b","\n","$L4c","\n","$L4d","\n","$L4e","\n","$L4f","\n","$L50","\n","$L51","\n","$L52","\n","$L53","\n","$L54","\n","$L55","\n","$L56","\n","$L57","\n","$L58","\n","$L59","\n","$L5a","\n","$L5b","\n","$L5c","\n","$L5d","\n","$L5e","\n","$L5f","\n","$L60","\n","$L61","\n","$L62","\n","$L63","\n","$L64","\n","$L65","\n","$L66","\n","$L67","\n","$L68","\n","$L69","\n","$L6a","\n","$L6b","\n","$L6c","\n","$L6d","\n","$L6e","\n","$L6f","\n","$L70","\n","$L71","\n","$L72","\n","$L73","\n","$L74","\n","$L75","\n","$L76","\n","$L77","\n","$L78","\n","$L79","\n","$L7a","\n","$L7b","\n","$L7c","\n","$L7d","\n","$L7e","\n","$L7f","\n","$L80","\n","$L81","\n","$L82","\n","$L83","\n","$L84","\n","$L85","\n","$L86","\n","$L87","\n","$L88","\n","$L89","\n","$L8a","\n","$L8b","\n","$L8c","\n","$L8d","\n","$L8e","\n","$L8f","\n","$L90","\n","$L91","\n","$L92","\n","$L93","\n","$L94","\n","$L95","\n","$L96","\n","$L97"]}]]}]}],null,"$L98"]}],"loading":null,"isPartial":false}
2:["$","p",null,{"children":["在這個例子中，存取應用程式的 ",["$","code",null,{"children":"/"}]," 路由將自動解析 ",["$","code",null,{"children":"Service"}]," 類別並將其注入到您的路由處理常式中。這是一個改變遊戲規則的功能。這意味著您可以開發應用程式並利用 Dependency Injection，而無需擔心臃腫的設定檔。"]}]
3:["$","p",null,{"children":["值得慶幸的是，在建立 Laravel 應用程式時，您將編寫的許多類別都會自動透過 Container 接收其依賴，包括 ",["$","a",null,{"href":"/docs/%7B'12.x'%7D/controllers","children":"Controllers"}],"、",["$","a",null,{"href":"/docs/%7B'12.x'%7D/events","children":"Event Listeners"}],"、",["$","a",null,{"href":"/docs/%7B'12.x'%7D/middleware","children":"Middleware"}]," 等等。此外，您可以在 ",["$","a",null,{"href":"/docs/%7B'12.x'%7D/queues","children":"Queued Jobs"}]," 的 ",["$","code",null,{"children":"handle"}]," 方法中對依賴進行型別提示。一旦您體驗了自動和零設定 Dependency Injection 的強大功能，就會覺得沒有它就無法開發。"]}]
4:["$","a",null,{"name":"when-to-use-the-container"}]
5:["$","h3",null,{"id":"何時使用-container","children":["$","a",null,{"href":"#何時使用-container","children":"何時使用 Container"}]}]
6:["$","p",null,{"children":["由於零設定解析，您經常會在路由、Controllers、Event Listeners 和其他地方對依賴進行型別提示，而無需手動與 Container 互動。例如，您可以在路由定義中對 ",["$","code",null,{"children":"Illuminate\\Http\\Request"}]," 物件進行型別提示，以便您可以輕鬆存取目前的請求。即使我們從不需要與 Container 互動來編寫此程式碼，它也在幕後管理這些依賴的注入："]}]
7:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use Illuminate\\Http\\Request;\n\nRoute::get('/', function (Request $request) {\n    // ...\n});\n"}]}]
8:["$","p",null,{"children":["在許多情況下，由於自動 Dependency Injection 和 ",["$","a",null,{"href":"/docs/%7B'12.x'%7D/facades","children":"Facades"}],"，您可以在 ",["$","strong",null,{"children":"完全不"}]," 手動從 Container 綁定或解析任何內容的情況下建立 Laravel 應用程式。",["$","strong",null,{"children":"那麼，您什麼時候會手動與 Container 互動呢？"}]," 讓我們檢視兩種情況。"]}]
9:["$","p",null,{"children":["首先，如果您編寫一個實作介面的類別，並且您希望在路由或類別建構子中對該介面進行型別提示，您必須 ",["$","a",null,{"href":"#binding-interfaces-to-implementations","children":"告訴 Container 如何解析該介面"}],"。其次，如果您正在 ",["$","a",null,{"href":"/docs/%7B'12.x'%7D/packages","children":"編寫一個 Laravel 套件"}]," 並計劃與其他 Laravel 開發者分享，您可能需要將您的套件服務綁定到 Container 中。"]}]
a:["$","a",null,{"name":"binding"}]
b:["$","h2",null,{"id":"綁定-binding","children":["$","a",null,{"href":"#綁定-binding","children":"綁定 (Binding)"}]}]
c:["$","a",null,{"name":"binding-basics"}]
d:["$","h3",null,{"id":"綁定基礎","children":["$","a",null,{"href":"#綁定基礎","children":"綁定基礎"}]}]
e:["$","a",null,{"name":"simple-bindings"}]
f:["$","h4",null,{"id":"簡單綁定","children":["$","a",null,{"href":"#簡單綁定","children":"簡單綁定"}]}]
10:["$","p",null,{"children":["幾乎所有的 Service Container 綁定都將在 ",["$","a",null,{"href":"/docs/%7B'12.x'%7D/providers","children":"Service Providers"}]," 中註冊，因此這些範例中的大多數將示範在該上下文中使用 Container。"]}]
11:["$","p",null,{"children":["在 Service Provider 中，您始終可以透過 ",["$","code",null,{"children":"$$this->app"}]," 屬性存取 Container。我們可以使用 ",["$","code",null,{"children":"bind"}]," 方法註冊綁定，傳遞我們希望註冊的類別或介面名稱以及返回類別實例的 Closure："]}]
12:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Services\\Transistor;\nuse App\\Services\\PodcastParser;\nuse Illuminate\\Contracts\\Foundation\\Application;\n\n$this->app->bind(Transistor::class, function (Application $app) {\n    return new Transistor($app->make(PodcastParser::class));\n});\n"}]}]
13:["$","p",null,{"children":"請注意，我們接收 Container 本身作為解析器的參數。然後我們可以使用 Container 來解析我們正在建立的物件的子依賴。"}]
14:["$","p",null,{"children":["如前所述，您通常會在 Service Providers 中與 Container 互動；但是，如果您想在 Service Provider 之外與 Container 互動，可以透過 ",["$","code",null,{"children":"App"}]," ",["$","a",null,{"href":"/docs/%7B'12.x'%7D/facades","children":"Facade"}]," 進行："]}]
15:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Services\\Transistor;\nuse Illuminate\\Contracts\\Foundation\\Application;\nuse Illuminate\\Support\\Facades\\App;\n\nApp::bind(Transistor::class, function (Application $app) {\n    // ...\n});\n"}]}]
16:["$","p",null,{"children":["您可以使用 ",["$","code",null,{"children":"bindIf"}]," 方法僅在尚未為給定類型註冊綁定時註冊 Container 綁定："]}]
17:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$this->app->bindIf(Transistor::class, function (Application $app) {\n    return new Transistor($app->make(PodcastParser::class));\n});\n"}]}]
18:["$","p",null,{"children":["為了方便起見，您可以省略提供您希望註冊的類別或介面名稱作為單獨的參數，而是讓 Laravel 從您提供給 ",["$","code",null,{"children":"bind"}]," 方法的 Closure 的返回型別推斷型別："]}]
19:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"App::bind(function (Application $app): Transistor {\n    return new Transistor($app->make(PodcastParser::class));\n});\n"}]}]
1a:["$","blockquote",null,{"children":["\n",["$","p",null,{"children":"[!NOTE]\n如果類別不依賴於任何介面，則無需將其綁定到 Container 中。Container 不需要被指示如何建立這些物件，因為它可以使用反射自動解析這些物件。"}],"\n"]}]
1b:["$","a",null,{"name":"binding-a-singleton"}]
1c:["$","h4",null,{"id":"綁定-singleton","children":["$","a",null,{"href":"#綁定-singleton","children":"綁定 Singleton"}]}]
1d:["$","p",null,{"children":[["$","code",null,{"children":"singleton"}]," 方法將一個類別或介面綁定到 Container 中，該類別或介面只應解析一次。一旦解析了 Singleton 綁定，隨後的 Container 呼叫將返回相同的物件實例："]}]
1e:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Services\\Transistor;\nuse App\\Services\\PodcastParser;\nuse Illuminate\\Contracts\\Foundation\\Application;\n\n$this->app->singleton(Transistor::class, function (Application $app) {\n    return new Transistor($app->make(PodcastParser::class));\n});\n"}]}]
1f:["$","p",null,{"children":["您可以使用 ",["$","code",null,{"children":"singletonIf"}]," 方法僅在尚未為給定類型註冊綁定時註冊 Singleton Container 綁定："]}]
20:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$this->app->singletonIf(Transistor::class, function (Application $app) {\n    return new Transistor($app->make(PodcastParser::class));\n});\n"}]}]
21:["$","a",null,{"name":"singleton-attribute"}]
22:["$","h4",null,{"id":"singleton-屬性","children":["$","a",null,{"href":"#singleton-屬性","children":"Singleton 屬性"}]}]
23:["$","p",null,{"children":["或者，您可以使用 ",["$","code",null,{"children":"#[Singleton]"}]," 屬性標記介面或類別，以指示 Container 應將其解析一次："]}]
24:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"<?php\n\nnamespace App\\Services;\n\nuse Illuminate\\Container\\Attributes\\Singleton;\n\n#[Singleton]\nclass Transistor\n{\n    // ...\n}\n"}]}]
25:["$","a",null,{"name":"binding-scoped"}]
26:["$","h4",null,{"id":"綁定-scoped-singletons","children":["$","a",null,{"href":"#綁定-scoped-singletons","children":"綁定 Scoped Singletons"}]}]
27:["$","p",null,{"children":[["$","code",null,{"children":"scoped"}]," 方法將一個類別或介面綁定到 Container 中，該類別或介面在給定的 Laravel 請求 / Job 生命週期內只應解析一次。雖然此方法與 ",["$","code",null,{"children":"singleton"}]," 方法類似，但使用 ",["$","code",null,{"children":"scoped"}]," 方法註冊的實例將在 Laravel 應用程式開始新的「生命週期」時被清除，例如當 ",["$","a",null,{"href":"/docs/%7B'12.x'%7D/octane","children":"Laravel Octane"}]," worker 處理新請求或 Laravel ",["$","a",null,{"href":"/docs/%7B'12.x'%7D/queues","children":"Queue worker"}]," 處理新 Job 時："]}]
28:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Services\\Transistor;\nuse App\\Services\\PodcastParser;\nuse Illuminate\\Contracts\\Foundation\\Application;\n\n$this->app->scoped(Transistor::class, function (Application $app) {\n    return new Transistor($app->make(PodcastParser::class));\n});\n"}]}]
29:["$","p",null,{"children":["您可以使用 ",["$","code",null,{"children":"scopedIf"}]," 方法僅在尚未為給定類型註冊綁定時註冊 Scoped Container 綁定："]}]
2a:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$this->app->scopedIf(Transistor::class, function (Application $app) {\n    return new Transistor($app->make(PodcastParser::class));\n});\n"}]}]
2b:["$","a",null,{"name":"scoped-attribute"}]
2c:["$","h4",null,{"id":"scoped-屬性","children":["$","a",null,{"href":"#scoped-屬性","children":"Scoped 屬性"}]}]
2d:["$","p",null,{"children":["或者，您可以使用 ",["$","code",null,{"children":"#[Scoped]"}]," 屬性標記介面或類別，以指示 Container 應在給定的 Laravel 請求 / Job 生命週期內將其解析一次："]}]
2e:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"<?php\n\nnamespace App\\Services;\n\nuse Illuminate\\Container\\Attributes\\Scoped;\n\n#[Scoped]\nclass Transistor\n{\n    // ...\n}\n"}]}]
2f:["$","a",null,{"name":"binding-instances"}]
30:["$","h4",null,{"id":"綁定實例","children":["$","a",null,{"href":"#綁定實例","children":"綁定實例"}]}]
31:["$","p",null,{"children":["您也可以使用 ",["$","code",null,{"children":"instance"}]," 方法將現有的物件實例綁定到 Container 中。隨後的 Container 呼叫將始終返回給定的實例："]}]
32:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Services\\Transistor;\nuse App\\Services\\PodcastParser;\n\n$service = new Transistor(new PodcastParser);\n\n$this->app->instance(Transistor::class, $service);\n"}]}]
33:["$","a",null,{"name":"binding-interfaces-to-implementations"}]
34:["$","h3",null,{"id":"綁定介面至實作","children":["$","a",null,{"href":"#綁定介面至實作","children":"綁定介面至實作"}]}]
35:["$","p",null,{"children":["Service Container 的一個非常強大的功能是能夠將介面綁定到給定的實作。例如，假設我們有一個 ",["$","code",null,{"children":"EventPusher"}]," 介面和一個 ",["$","code",null,{"children":"RedisEventPusher"}]," 實作。一旦我們編寫了這個介面的 ",["$","code",null,{"children":"RedisEventPusher"}]," 實作，我們就可以像這樣向 Service Container 註冊它："]}]
36:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Contracts\\EventPusher;\nuse App\\Services\\RedisEventPusher;\n\n$this->app->bind(EventPusher::class, RedisEventPusher::class);\n"}]}]
37:["$","p",null,{"children":["這個語句告訴 Container，當類別需要 ",["$","code",null,{"children":"EventPusher"}]," 的實作時，它應該注入 ",["$","code",null,{"children":"RedisEventPusher"}],"。現在我們可以在由 Container 解析的類別的建構子中對 ",["$","code",null,{"children":"EventPusher"}]," 介面進行型別提示。請記住，Laravel 應用程式中的 Controllers、Event Listeners、Middleware 和各種其他類型的類別始終使用 Container 進行解析："]}]
38:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Contracts\\EventPusher;\n\n/**\n * Create a new class instance.\n */\npublic function __construct(\n    protected EventPusher $pusher,\n) {}\n"}]}]
39:["$","a",null,{"name":"bind-attribute"}]
3a:["$","h4",null,{"id":"bind-屬性","children":["$","a",null,{"href":"#bind-屬性","children":"Bind 屬性"}]}]
3b:["$","p",null,{"children":["Laravel 還提供了一個 ",["$","code",null,{"children":"Bind"}]," 屬性以增加便利性。您可以將此屬性應用於任何介面，以告訴 Laravel 每當請求該介面時應自動注入哪個實作。使用 ",["$","code",null,{"children":"Bind"}]," 屬性時，無需在應用程式的 Service Providers 中執行任何額外的服務註冊。"]}]
3c:["$","p",null,{"children":["此外，可以在介面上放置多個 ",["$","code",null,{"children":"Bind"}]," 屬性，以便設定應針對給定環境集注入的不同實作："]}]
3d:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"<?php\n\nnamespace App\\Contracts;\n\nuse App\\Services\\FakeEventPusher;\nuse App\\Services\\RedisEventPusher;\nuse Illuminate\\Container\\Attributes\\Bind;\n\n#[Bind(RedisEventPusher::class)]\n#[Bind(FakeEventPusher::class, environments: ['local', 'testing'])]\ninterface EventPusher\n{\n    // ...\n}\n"}]}]
3e:["$","p",null,{"children":["此外，可以應用 ",["$","a",null,{"href":"#singleton-attribute","children":"Singleton"}]," 和 ",["$","a",null,{"href":"#scoped-attribute","children":"Scoped"}]," 屬性來指示 Container 綁定應解析一次還是每個請求 / Job 生命週期解析一次："]}]
3f:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Services\\RedisEventPusher;\nuse Illuminate\\Container\\Attributes\\Bind;\nuse Illuminate\\Container\\Attributes\\Singleton;\n\n#[Bind(RedisEventPusher::class)]\n#[Singleton]\ninterface EventPusher\n{\n    // ...\n}\n"}]}]
40:["$","a",null,{"name":"contextual-binding"}]
41:["$","h3",null,{"id":"上下文綁定-contextual-binding","children":["$","a",null,{"href":"#上下文綁定-contextual-binding","children":"上下文綁定 (Contextual Binding)"}]}]
42:["$","p",null,{"children":["有時您可能由兩個類別使用相同的介面，但您希望將不同的實作注入到每個類別中。例如，兩個 Controllers 可能依賴於 ",["$","code",null,{"children":"Illuminate\\Contracts\\Filesystem\\Filesystem"}]," ",["$","a",null,{"href":"/docs/%7B'12.x'%7D/contracts","children":"Contract"}]," 的不同實作。Laravel 提供了一個簡單、流暢的介面來定義此行為："]}]
43:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Http\\Controllers\\PhotoController;\nuse App\\Http\\Controllers\\UploadController;\nuse App\\Http\\Controllers\\VideoController;\nuse Illuminate\\Contracts\\Filesystem\\Filesystem;\nuse Illuminate\\Support\\Facades\\Storage;\n\n$this->app->when(PhotoController::class)\n    ->needs(Filesystem::class)\n    ->give(function () {\n        return Storage::disk('local');\n    });\n\n$this->app->when([VideoController::class, UploadController::class])\n    ->needs(Filesystem::class)\n    ->give(function () {\n        return Storage::disk('s3');\n    });\n"}]}]
44:["$","a",null,{"name":"contextual-attributes"}]
45:["$","h3",null,{"id":"上下文屬性-contextual-attributes","children":["$","a",null,{"href":"#上下文屬性-contextual-attributes","children":"上下文屬性 (Contextual Attributes)"}]}]
46:["$","p",null,{"children":"由於上下文綁定通常用於注入驅動程式的實作或設定值，Laravel 提供了各種上下文綁定屬性，允許注入這些類型的值，而無需在 Service Providers 中手動定義上下文綁定。"}]
47:["$","p",null,{"children":["例如，",["$","code",null,{"children":"Storage"}]," 屬性可用於注入特定的 ",["$","a",null,{"href":"/docs/%7B'12.x'%7D/filesystem","children":"Storage Disk"}],"："]}]
48:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"<?php\n\nnamespace App\\Http\\Controllers;\n\nuse Illuminate\\Container\\Attributes\\Storage;\nuse Illuminate\\Contracts\\Filesystem\\Filesystem;\n\nclass PhotoController extends Controller\n{\n    public function __construct(\n        #[Storage('local')] protected Filesystem $filesystem\n    ) {\n        // ...\n    }\n}\n"}]}]
49:["$","p",null,{"children":["除了 ",["$","code",null,{"children":"Storage"}]," 屬性之外，Laravel 還提供 ",["$","code",null,{"children":"Auth"}],"、",["$","code",null,{"children":"Cache"}],"、",["$","code",null,{"children":"Config"}],"、",["$","code",null,{"children":"Context"}],"、",["$","code",null,{"children":"DB"}],"、",["$","code",null,{"children":"Give"}],"、",["$","code",null,{"children":"Log"}],"、",["$","code",null,{"children":"RouteParameter"}]," 和 ",["$","a",null,{"href":"#tagging","children":"Tag"}]," 屬性："]}]
99:T552,<?php

namespace App\Http\Controllers;

use App\Contracts\UserRepository;
use App\Models\Photo;
use App\Repositories\DatabaseRepository;
use Illuminate\Container\Attributes\Auth;
use Illuminate\Container\Attributes\Cache;
use Illuminate\Container\Attributes\Config;
use Illuminate\Container\Attributes\Context;
use Illuminate\Container\Attributes\DB;
use Illuminate\Container\Attributes\Give;
use Illuminate\Container\Attributes\Log;
use Illuminate\Container\Attributes\RouteParameter;
use Illuminate\Container\Attributes\Tag;
use Illuminate\Contracts\Auth\Guard;
use Illuminate\Contracts\Cache\Repository;
use Illuminate\Database\Connection;
use Psr\Log\LoggerInterface;

class PhotoController extends Controller
{
    public function __construct(
        #[Auth('web')] protected Guard $auth,
        #[Cache('redis')] protected Repository $cache,
        #[Config('app.timezone')] protected string $timezone,
        #[Context('uuid')] protected string $uuid,
        #[Context('ulid', hidden: true)] protected string $ulid,
        #[DB('mysql')] protected Connection $connection,
        #[Give(DatabaseRepository::class)] protected UserRepository $users,
        #[Log('daily')] protected LoggerInterface $log,
        #[RouteParameter('photo')] protected Photo $photo,
        #[Tag('reports')] protected iterable $reports,
    ) {
        // ...
    }
}
4a:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$99"}]}]
4b:["$","p",null,{"children":["此外，Laravel 提供了一個 ",["$","code",null,{"children":"CurrentUser"}]," 屬性，用於將目前通過驗證的使用者注入到給定的路由或類別中："]}]
4c:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Models\\User;\nuse Illuminate\\Container\\Attributes\\CurrentUser;\n\nRoute::get('/user', function (#[CurrentUser] User $user) {\n    return $user;\n})->middleware('auth');\n"}]}]
4d:["$","a",null,{"name":"defining-custom-attributes"}]
4e:["$","h4",null,{"id":"定義自訂屬性","children":["$","a",null,{"href":"#定義自訂屬性","children":"定義自訂屬性"}]}]
4f:["$","p",null,{"children":["您可以透過實作 ",["$","code",null,{"children":"Illuminate\\Contracts\\Container\\ContextualAttribute"}]," Contract 來建立自己的上下文屬性。Container 將呼叫您的屬性的 ",["$","code",null,{"children":"resolve"}]," 方法，該方法應解析應注入到使用該屬性的類別中的值。在下面的範例中，我們將重新實作 Laravel 內建的 ",["$","code",null,{"children":"Config"}]," 屬性："]}]
50:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"<?php\n\nnamespace App\\Attributes;\n\nuse Attribute;\nuse Illuminate\\Contracts\\Container\\Container;\nuse Illuminate\\Contracts\\Container\\ContextualAttribute;\n\n#[Attribute(Attribute::TARGET_PARAMETER)]\nclass Config implements ContextualAttribute\n{\n    /**\n     * Create a new attribute instance.\n     */\n    public function __construct(public string $key, public mixed $default = null)\n    {\n    }\n\n    /**\n     * Resolve the configuration value.\n     *\n     * @param  self  $attribute\n     * @param  \\Illuminate\\Contracts\\Container\\Container  $container\n     * @return mixed\n     */\n    public static function resolve(self $attribute, Container $container)\n    {\n        return $container->make('config')->get($attribute->key, $attribute->default);\n    }\n}\n"}]}]
51:["$","a",null,{"name":"binding-primitives"}]
52:["$","h3",null,{"id":"綁定基本型別","children":["$","a",null,{"href":"#綁定基本型別","children":"綁定基本型別"}]}]
53:["$","p",null,{"children":"有時您可能有一個類別接收一些注入的類別，但也需要一個注入的基本值，例如整數。您可以輕鬆地使用上下文綁定來注入您的類別可能需要的任何值："}]
54:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Http\\Controllers\\UserController;\n\n$this->app->when(UserController::class)\n    ->needs('$variableName')\n    ->give($value);\n"}]}]
55:["$","p",null,{"children":["有時一個類別可能依賴於一個 ",["$","a",null,{"href":"#tagging","children":"標記 (tagged)"}]," 實例的陣列。使用 ",["$","code",null,{"children":"giveTagged"}]," 方法，您可以輕鬆地注入帶有該標記的所有 Container 綁定："]}]
56:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$this->app->when(ReportAggregator::class)\n    ->needs('$reports')\n    ->giveTagged('reports');\n"}]}]
57:["$","p",null,{"children":["如果您需要從應用程式的設定檔中注入一個值，可以使用 ",["$","code",null,{"children":"giveConfig"}]," 方法："]}]
58:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$this->app->when(ReportAggregator::class)\n    ->needs('$timezone')\n    ->giveConfig('app.timezone');\n"}]}]
59:["$","a",null,{"name":"binding-typed-variadics"}]
5a:["$","h3",null,{"id":"綁定型別化可變參數","children":["$","a",null,{"href":"#綁定型別化可變參數","children":"綁定型別化可變參數"}]}]
5b:["$","p",null,{"children":"偶爾，您可能有一個類別使用可變參數建構子參數接收一個型別化物件的陣列："}]
5c:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"<?php\n\nuse App\\Models\\Filter;\nuse App\\Services\\Logger;\n\nclass Firewall\n{\n    /**\n     * The filter instances.\n     *\n     * @var array\n     */\n    protected $filters;\n\n    /**\n     * Create a new class instance.\n     */\n    public function __construct(\n        protected Logger $logger,\n        Filter ...$filters,\n    ) {\n        $this->filters = $filters;\n    }\n}\n"}]}]
5d:["$","p",null,{"children":["使用上下文綁定，您可以透過為 ",["$","code",null,{"children":"give"}]," 方法提供一個返回已解析 ",["$","code",null,{"children":"Filter"}]," 實例陣列的 Closure 來解析此依賴："]}]
5e:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$this->app->when(Firewall::class)\n    ->needs(Filter::class)\n    ->give(function (Application $app) {\n          return [\n              $app->make(NullFilter::class),\n              $app->make(ProfanityFilter::class),\n              $app->make(TooLongFilter::class),\n          ];\n    });\n"}]}]
5f:["$","p",null,{"children":["為了方便起見，您也可以只提供一個類別名稱陣列，以便每當 ",["$","code",null,{"children":"Firewall"}]," 需要 ",["$","code",null,{"children":"Filter"}]," 實例時由 Container 解析："]}]
60:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$this->app->when(Firewall::class)\n    ->needs(Filter::class)\n    ->give([\n        NullFilter::class,\n        ProfanityFilter::class,\n        TooLongFilter::class,\n    ]);\n"}]}]
61:["$","a",null,{"name":"variadic-tag-dependencies"}]
62:["$","h4",null,{"id":"可變參數標記依賴","children":["$","a",null,{"href":"#可變參數標記依賴","children":"可變參數標記依賴"}]}]
63:["$","p",null,{"children":["有時一個類別可能有一個型別提示為給定類別的可變參數依賴 (",["$","code",null,{"children":"Report ...$reports"}],")。使用 ",["$","code",null,{"children":"needs"}]," 和 ",["$","code",null,{"children":"giveTagged"}]," 方法，您可以輕鬆地為給定依賴注入帶有該 ",["$","a",null,{"href":"#tagging","children":"標記"}]," 的所有 Container 綁定："]}]
64:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$this->app->when(ReportAggregator::class)\n    ->needs(Report::class)\n    ->giveTagged('reports');\n"}]}]
65:["$","a",null,{"name":"tagging"}]
66:["$","h3",null,{"id":"標記-tagging","children":["$","a",null,{"href":"#標記-tagging","children":"標記 (Tagging)"}]}]
67:["$","p",null,{"children":["偶爾，您可能需要解析某個「類別」的所有綁定。例如，也許您正在建立一個報告分析器，它接收許多不同 ",["$","code",null,{"children":"Report"}]," 介面實作的陣列。註冊 ",["$","code",null,{"children":"Report"}]," 實作後，您可以使用 ",["$","code",null,{"children":"tag"}]," 方法為它們分配一個標記："]}]
68:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$this->app->bind(CpuReport::class, function () {\n    // ...\n});\n\n$this->app->bind(MemoryReport::class, function () {\n    // ...\n});\n\n$this->app->tag([CpuReport::class, MemoryReport::class], 'reports');\n"}]}]
69:["$","p",null,{"children":["一旦服務被標記，您可以透過 Container 的 ",["$","code",null,{"children":"tagged"}]," 方法輕鬆地解析它們："]}]
6a:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$this->app->bind(ReportAnalyzer::class, function (Application $app) {\n    return new ReportAnalyzer($app->tagged('reports'));\n});\n"}]}]
6b:["$","a",null,{"name":"extending-bindings"}]
6c:["$","h3",null,{"id":"擴充綁定","children":["$","a",null,{"href":"#擴充綁定","children":"擴充綁定"}]}]
6d:["$","p",null,{"children":[["$","code",null,{"children":"extend"}]," 方法允許修改已解析的服務。例如，當一個服務被解析時，您可以執行額外的程式碼來裝飾或設定該服務。",["$","code",null,{"children":"extend"}]," 方法接受兩個參數，您要擴充的服務類別和一個應返回修改後服務的 Closure。Closure 接收正在解析的服務和 Container 實例："]}]
6e:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$this->app->extend(Service::class, function (Service $service, Application $app) {\n    return new DecoratedService($service);\n});\n"}]}]
6f:["$","a",null,{"name":"resolving"}]
70:["$","h2",null,{"id":"解析-resolving","children":["$","a",null,{"href":"#解析-resolving","children":"解析 (Resolving)"}]}]
71:["$","a",null,{"name":"the-make-method"}]
72:["$","h3",null,{"id":"make-方法","children":["$","a",null,{"href":"#make-方法","children":[["$","code",null,{"children":"make"}]," 方法"]}]}]
73:["$","p",null,{"children":["您可以使用 ",["$","code",null,{"children":"make"}]," 方法從 Container 中解析類別實例。",["$","code",null,{"children":"make"}]," 方法接受您希望解析的類別或介面的名稱："]}]
74:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Services\\Transistor;\n\n$transistor = $this->app->make(Transistor::class);\n"}]}]
75:["$","p",null,{"children":["如果您的類別的某些依賴無法透過 Container 解析，您可以透過將它們作為關聯陣列傳遞給 ",["$","code",null,{"children":"makeWith"}]," 方法來注入它們。例如，我們可以手動傳遞 ",["$","code",null,{"children":"Transistor"}]," 服務所需的 ",["$","code",null,{"children":"$$id"}]," 建構子參數："]}]
76:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Services\\Transistor;\n\n$transistor = $this->app->makeWith(Transistor::class, ['id' => 1]);\n"}]}]
77:["$","p",null,{"children":[["$","code",null,{"children":"bound"}]," 方法可用於判斷類別或介面是否已在 Container 中明確綁定："]}]
78:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"if ($this->app->bound(Transistor::class)) {\n    // ...\n}\n"}]}]
79:["$","p",null,{"children":["如果您在 Service Provider 之外，位於無法存取 ",["$","code",null,{"children":"$$app"}]," 變數的程式碼位置，您可以使用 ",["$","code",null,{"children":"App"}]," ",["$","a",null,{"href":"/docs/%7B'12.x'%7D/facades","children":"Facade"}]," 或 ",["$","code",null,{"children":"app"}]," ",["$","a",null,{"href":"/docs/%7B'12.x'%7D/helpers#method-app","children":"Helper"}]," 從 Container 中解析類別實例："]}]
7a:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Services\\Transistor;\nuse Illuminate\\Support\\Facades\\App;\n\n$transistor = App::make(Transistor::class);\n\n$transistor = app(Transistor::class);\n"}]}]
7b:["$","p",null,{"children":["如果您希望將 Laravel Container 實例本身注入到由 Container 解析的類別中，您可以在類別的建構子中對 ",["$","code",null,{"children":"Illuminate\\Container\\Container"}]," 類別進行型別提示："]}]
7c:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use Illuminate\\Container\\Container;\n\n/**\n * Create a new class instance.\n */\npublic function __construct(\n    protected Container $container,\n) {}\n"}]}]
7d:["$","a",null,{"name":"automatic-injection"}]
7e:["$","h3",null,{"id":"自動注入","children":["$","a",null,{"href":"#自動注入","children":"自動注入"}]}]
7f:["$","p",null,{"children":["或者，重要的是，您可以在由 Container 解析的類別的建構子中對依賴進行型別提示，包括 ",["$","a",null,{"href":"/docs/%7B'12.x'%7D/controllers","children":"Controllers"}],"、",["$","a",null,{"href":"/docs/%7B'12.x'%7D/events","children":"Event Listeners"}],"、",["$","a",null,{"href":"/docs/%7B'12.x'%7D/middleware","children":"Middleware"}]," 等等。此外，您可以在 ",["$","a",null,{"href":"/docs/%7B'12.x'%7D/queues","children":"Queued Jobs"}]," 的 ",["$","code",null,{"children":"handle"}]," 方法中對依賴進行型別提示。實際上，這是您的大多數物件應該由 Container 解析的方式。"]}]
80:["$","p",null,{"children":"例如，您可以在 Controller 的建構子中對應用程式定義的服務進行型別提示。該服務將自動解析並注入到類別中："}]
81:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"<?php\n\nnamespace App\\Http\\Controllers;\n\nuse App\\Services\\AppleMusic;\n\nclass PodcastController extends Controller\n{\n    /**\n     * Create a new controller instance.\n     */\n    public function __construct(\n        protected AppleMusic $apple,\n    ) {}\n\n    /**\n     * Show information about the given podcast.\n     */\n    public function show(string $id): Podcast\n    {\n        return $this->apple->findPodcast($id);\n    }\n}\n"}]}]
82:["$","a",null,{"name":"method-invocation-and-injection"}]
83:["$","h2",null,{"id":"方法呼叫與注入","children":["$","a",null,{"href":"#方法呼叫與注入","children":"方法呼叫與注入"}]}]
84:["$","p",null,{"children":"有時您可能希望在物件實例上呼叫方法，同時允許 Container 自動注入該方法的依賴。例如，給定以下類別："}]
85:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"<?php\n\nnamespace App;\n\nuse App\\Services\\AppleMusic;\n\nclass PodcastStats\n{\n    /**\n     * Generate a new podcast stats report.\n     */\n    public function generate(AppleMusic $apple): array\n    {\n        return [\n            // ...\n        ];\n    }\n}\n"}]}]
86:["$","p",null,{"children":["您可以像這樣透過 Container 呼叫 ",["$","code",null,{"children":"generate"}]," 方法："]}]
87:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\PodcastStats;\nuse Illuminate\\Support\\Facades\\App;\n\n$stats = App::call([new PodcastStats, 'generate']);\n"}]}]
88:["$","p",null,{"children":[["$","code",null,{"children":"call"}]," 方法接受任何 PHP callable。Container 的 ",["$","code",null,{"children":"call"}]," 方法甚至可用於呼叫 Closure，同時自動注入其依賴："]}]
89:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Services\\AppleMusic;\nuse Illuminate\\Support\\Facades\\App;\n\n$result = App::call(function (AppleMusic $apple) {\n    // ...\n});\n"}]}]
8a:["$","a",null,{"name":"container-events"}]
8b:["$","h2",null,{"id":"container-events","children":["$","a",null,{"href":"#container-events","children":"Container Events"}]}]
8c:["$","p",null,{"children":["Service Container 每次解析物件時都會觸發一個事件。您可以使用 ",["$","code",null,{"children":"resolving"}]," 方法監聽此事件："]}]
8d:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Services\\Transistor;\nuse Illuminate\\Contracts\\Foundation\\Application;\n\n$this->app->resolving(Transistor::class, function (Transistor $transistor, Application $app) {\n    // Called when container resolves objects of type \"Transistor\"...\n});\n\n$this->app->resolving(function (mixed $object, Application $app) {\n    // Called when container resolves object of any type...\n});\n"}]}]
8e:["$","p",null,{"children":"如您所見，正在解析的物件將傳遞給回呼，允許您在將物件提供給其取用者之前設定該物件的任何其他屬性。"}]
8f:["$","a",null,{"name":"rebinding"}]
90:["$","h3",null,{"id":"重新綁定-rebinding","children":["$","a",null,{"href":"#重新綁定-rebinding","children":"重新綁定 (Rebinding)"}]}]
91:["$","p",null,{"children":[["$","code",null,{"children":"rebinding"}]," 方法允許您監聽服務何時重新綁定到 Container，這意味著它在初始綁定後再次註冊或被覆蓋。當您需要在每次更新特定綁定時更新依賴或修改行為時，這很有用："]}]
92:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Contracts\\PodcastPublisher;\nuse App\\Services\\SpotifyPublisher;\nuse App\\Services\\TransistorPublisher;\nuse Illuminate\\Contracts\\Foundation\\Application;\n\n$this->app->bind(PodcastPublisher::class, SpotifyPublisher::class);\n\n$this->app->rebinding(\n    PodcastPublisher::class,\n    function (Application $app, PodcastPublisher $newInstance) {\n        //\n    },\n);\n\n// New binding will trigger rebinding closure...\n$this->app->bind(PodcastPublisher::class, TransistorPublisher::class);\n"}]}]
93:["$","a",null,{"name":"psr-11"}]
94:["$","h2",null,{"id":"psr-11","children":["$","a",null,{"href":"#psr-11","children":"PSR-11"}]}]
95:["$","p",null,{"children":["Laravel 的 Service Container 實作了 ",["$","a",null,{"href":"https://github.com/php-fig/fig-standards/blob/master/accepted/PSR-11-container.md","children":"PSR-11"}]," 介面。因此，您可以對 PSR-11 Container 介面進行型別提示以獲取 Laravel Container 的實例："]}]
96:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Services\\Transistor;\nuse Psr\\Container\\ContainerInterface;\n\nRoute::get('/', function (ContainerInterface $container) {\n    $service = $container->get(Transistor::class);\n\n    // ...\n});\n"}]}]
97:["$","p",null,{"children":["如果無法解析給定的識別碼，則會拋出例外。如果識別碼從未綁定，則例外將是 ",["$","code",null,{"children":"Psr\\Container\\NotFoundExceptionInterface"}]," 的實例。如果識別碼已綁定但無法解析，則將拋出 ",["$","code",null,{"children":"Psr\\Container\\ContainerExceptionInterface"}]," 的實例。"]}]
98:["$","$L9a",null,{"children":["$","$9b",null,{"name":"Next.MetadataOutlet","children":"$@9c"}]}]
9c:null
