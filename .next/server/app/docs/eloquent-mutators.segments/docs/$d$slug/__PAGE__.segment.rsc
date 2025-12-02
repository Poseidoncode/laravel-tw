1:"$Sreact.fragment"
a3:I[97367,["/_next/static/chunks/ff1a16fafef87110.js","/_next/static/chunks/247eb132b7f7b574.js"],"OutletBoundary"]
a4:"$Sreact.suspense"
0:{"buildId":"kE5s4wNidqhVn8fA906WC","rsc":["$","$1","c",{"children":[["$","div",null,{"className":"container mx-auto py-10","children":["$","div",null,{"className":"mx-auto max-w-3xl","children":[["$","div",null,{"className":"mb-8","children":[["$","h1",null,{"className":"scroll-m-20 text-4xl font-extrabold tracking-tight lg:text-5xl","children":"Eloquent 變異器"}],["$","p",null,{"className":"text-xl text-muted-foreground mt-2","children":"Eloquent 變異器和轉換讓你轉換屬性值"}]]}],["$","article",null,{"className":"prose prose-slate dark:prose-invert max-w-none","children":[["$","h1",null,{"id":"eloquent變異器和類型轉換","children":["$","a",null,{"href":"#eloquent變異器和類型轉換","children":"Eloquent：變異器和類型轉換"}]}],"\n",["$","ul",null,{"children":["\n",["$","li",null,{"children":["$","a",null,{"href":"#introduction","children":"簡介"}]}],"\n",["$","li",null,{"children":[["$","a",null,{"href":"#accessors-and-mutators","children":"訪問器和變異器"}],"\n",["$","ul",null,{"children":["\n",["$","li",null,{"children":["$","a",null,{"href":"#defining-an-accessor","children":"定義訪問器"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#defining-a-mutator","children":"定義變異器"}]}],"\n"]}],"\n"]}],"\n",["$","li",null,{"children":[["$","a",null,{"href":"#attribute-casting","children":"屬性轉換"}],"\n",["$","ul",null,{"children":["\n",["$","li",null,{"children":["$","a",null,{"href":"#array-and-json-casting","children":"陣列和 JSON 轉換"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#date-casting","children":"日期轉換"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#enum-casting","children":"列舉轉換"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#encrypted-casting","children":"加密轉換"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#query-time-casting","children":"查詢時間轉換"}]}],"\n"]}],"\n"]}],"\n",["$","li",null,{"children":[["$","a",null,{"href":"#custom-casts","children":"自訂轉換"}],"\n",["$","ul",null,{"children":["\n",["$","li",null,{"children":["$","a",null,{"href":"#value-object-casting","children":"值物件轉換"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#array-json-serialization","children":"陣列 / JSON 序列化"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#inbound-casting","children":"入站轉換"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#cast-parameters","children":"轉換參數"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#comparing-cast-values","children":"比較轉換值"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#castables","children":"可轉換的"}]}],"\n"]}],"\n"]}],"\n"]}],"\n",["$","a",null,{"name":"introduction"}],"\n",["$","h2",null,{"id":"簡介","children":["$","a",null,{"href":"#簡介","children":"簡介"}]}],"\n",["$","p",null,{"children":["訪問器、變異器和屬性轉換允許你在檢索或在模型實例上設定時轉換 Eloquent 屬性值。例如，你可能想使用 ",["$","a",null,{"href":"/docs/encryption","children":"Laravel 加密工具"}]," 在值儲存在資料庫時將其加密，然後在訪問 Eloquent 模型上的屬性時自動解密。或者，你可能想轉換儲存在資料庫中的 JSON 字符串，當通過 Eloquent 模型訪問時將其轉換為陣列。"]}],"\n",["$","a",null,{"name":"accessors-and-mutators"}],"\n",["$","h2",null,{"id":"訪問器和變異器","children":["$","a",null,{"href":"#訪問器和變異器","children":"訪問器和變異器"}]}],"\n",["$","a",null,{"name":"defining-an-accessor"}],"\n",["$","h3",null,{"id":"定義訪問器","children":["$","a",null,{"href":"#定義訪問器","children":"定義訪問器"}]}],"\n",["$","p",null,{"children":"訪問器在訪問 Eloquent 屬性值時進行轉換。要定義訪問器，請在模型上建立一個受保護的方法來表示可訪問的屬性。此方法名稱應與真實基礎模型屬性/資料庫列的「駝峰大小寫」表示相對應。"}],"\n",["$","p",null,{"children":["在此範例中，我們為 ",["$","code",null,{"children":"first_name"}]," 屬性定義訪問器。當 Eloquent 嘗試檢索 ",["$","code",null,{"children":"first_name"}]," 屬性的值時，訪問器將被自動呼叫。所有屬性訪問器/變異器方法必須宣告返回類型提示為 ",["$","code",null,{"children":"Illuminate\\Database\\Eloquent\\Casts\\Attribute"}],"："]}],"\n",["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"<?php\n\nnamespace App\\Models;\n\nuse Illuminate\\Database\\Eloquent\\Casts\\Attribute;\nuse Illuminate\\Database\\Eloquent\\Model;\n\nclass User extends Model\n{\n    /**\n     * Get the user's first name.\n     */\n    protected function firstName(): Attribute\n    {\n        return Attribute::make(\n            get: fn (string $value) => ucfirst($value),\n        );\n    }\n}\n"}]}],"\n",["$","p",null,{"children":["所有訪問器方法都返回一個 ",["$","code",null,{"children":"Attribute"}]," 實例，定義屬性將如何被訪問，以及可選地進行變異。在此範例中，我們僅定義屬性將如何被訪問。為此，我們向 ",["$","code",null,{"children":"Attribute"}]," 類別建構子提供 ",["$","code",null,{"children":"get"}]," 參數。"]}],"\n",["$","p",null,{"children":["如你所見，列的原始值被傳遞給訪問器，允許你操縱並返回該值。要訪問訪問器的值，你可以簡單地訪問模型實例上的 ",["$","code",null,{"children":"first_name"}]," 屬性："]}],"\n",["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Models\\User;\n\n$user = User::find(1);\n\n$firstName = $user->first_name;\n"}]}],"\n",["$","blockquote",null,{"children":["\n","$L2","\n"]}],"\n","$L3","\n","$L4","\n","$L5","\n","$L6","\n","$L7","\n","$L8","\n","$L9","\n","$La","\n","$Lb","\n","$Lc","\n","$Ld","\n","$Le","\n","$Lf","\n","$L10","\n","$L11","\n","$L12","\n","$L13","\n","$L14","\n","$L15","\n","$L16","\n","$L17","\n","$L18","\n","$L19","\n","$L1a","\n","$L1b","\n","$L1c","\n","$L1d","\n","$L1e","\n","$L1f","\n","$L20","\n","$L21","\n","$L22","\n","$L23","\n","$L24","\n","$L25","\n","$L26","\n","$L27","\n","$L28","\n","$L29","\n","$L2a","\n","$L2b","\n","$L2c","\n","$L2d","\n","$L2e","\n","$L2f","\n","$L30","\n","$L31","\n","$L32","\n","$L33","\n","$L34","\n","$L35","\n","$L36","\n","$L37","\n","$L38","\n","$L39","\n","$L3a","\n","$L3b","\n","$L3c","\n","$L3d","\n","$L3e","\n","$L3f","\n","$L40","\n","$L41","\n","$L42","\n","$L43","\n","$L44","\n","$L45","\n","$L46","\n","$L47","\n","$L48","\n","$L49","\n","$L4a","\n","$L4b","\n","$L4c","\n","$L4d","\n","$L4e","\n","$L4f","\n","$L50","\n","$L51","\n","$L52","\n","$L53","\n","$L54","\n","$L55","\n","$L56","\n","$L57","\n","$L58","\n","$L59","\n","$L5a","\n","$L5b","\n","$L5c","\n","$L5d","\n","$L5e","\n","$L5f","\n","$L60","\n","$L61","\n","$L62","\n","$L63","\n","$L64","\n","$L65","\n","$L66","\n","$L67","\n","$L68","\n","$L69","\n","$L6a","\n","$L6b","\n","$L6c","\n","$L6d","\n","$L6e","\n","$L6f","\n","$L70","\n","$L71","\n","$L72","\n","$L73","\n","$L74","\n","$L75","\n","$L76","\n","$L77","\n","$L78","\n","$L79","\n","$L7a","\n","$L7b","\n","$L7c","\n","$L7d","\n","$L7e","\n","$L7f","\n","$L80","\n","$L81","\n","$L82","\n","$L83","\n","$L84","\n","$L85","\n","$L86","\n","$L87","\n","$L88","\n","$L89","\n","$L8a","\n","$L8b","\n","$L8c","\n","$L8d","\n","$L8e","\n","$L8f","\n","$L90","\n","$L91","\n","$L92","\n","$L93","\n","$L94","\n","$L95","\n","$L96","\n","$L97","\n","$L98","\n","$L99","\n","$L9a","\n","$L9b","\n","$L9c","\n","$L9d","\n","$L9e"]}]]}]}],null,"$L9f"]}],"loading":null,"isPartial":false}
2:["$","p",null,{"children":["[!NOTE]\n如果你想將這些計算值新增到模型的陣列/JSON 表示中，",["$","a",null,{"href":"/docs/eloquent-serialization#appending-values-to-json","children":"你需要附加它們"}],"。"]}]
3:["$","a",null,{"name":"building-value-objects-from-multiple-attributes"}]
4:["$","h4",null,{"id":"從多個屬性建構值物件","children":["$","a",null,{"href":"#從多個屬性建構值物件","children":"從多個屬性建構值物件"}]}]
5:["$","p",null,{"children":["有時你的訪問器可能需要將多個模型屬性轉換為單個「值物件」。為此，你的 ",["$","code",null,{"children":"get"}]," 閉包可能接受第二個 ",["$","code",null,{"children":"$$attributes"}]," 參數，該參數將自動提供給閉包，並將包含模型所有目前屬性的陣列："]}]
6:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Support\\Address;\nuse Illuminate\\Database\\Eloquent\\Casts\\Attribute;\n\n/**\n * Interact with the user's address.\n */\nprotected function address(): Attribute\n{\n    return Attribute::make(\n        get: fn (mixed $value, array $attributes) => new Address(\n            $attributes['address_line_one'],\n            $attributes['address_line_two'],\n        ),\n    );\n}\n"}]}]
7:["$","a",null,{"name":"accessor-caching"}]
8:["$","h4",null,{"id":"訪問器快取","children":["$","a",null,{"href":"#訪問器快取","children":"訪問器快取"}]}]
9:["$","p",null,{"children":"當從訪問器返回值物件時，對值物件所做的任何更改將在保存模型前自動同步回模型。這是可能的，因為 Eloquent 保留訪問器返回的實例，因此每次呼叫訪問器時都可以返回相同的實例："}]
a:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Models\\User;\n\n$user = User::find(1);\n\n$user->address->lineOne = 'Updated Address Line 1 Value';\n$user->address->lineTwo = 'Updated Address Line 2 Value';\n\n$user->save();\n"}]}]
b:["$","p",null,{"children":["但是，你有時可能希望為像字符串和布林這樣的原始值啟用快取，特別是如果它們計算密集。為此，你可以在定義訪問器時呼叫 ",["$","code",null,{"children":"shouldCache"}]," 方法："]}]
c:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"protected function hash(): Attribute\n{\n    return Attribute::make(\n        get: fn (string $value) => bcrypt(gzuncompress($value)),\n    )->shouldCache();\n}\n"}]}]
d:["$","p",null,{"children":["如果你想停用屬性的物件快取行為，你可以在定義屬性時呼叫 ",["$","code",null,{"children":"withoutObjectCaching"}]," 方法："]}]
e:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"/**\n * Interact with the user's address.\n */\nprotected function address(): Attribute\n{\n    return Attribute::make(\n        get: fn (mixed $value, array $attributes) => new Address(\n            $attributes['address_line_one'],\n            $attributes['address_line_two'],\n        ),\n    )->withoutObjectCaching();\n}\n"}]}]
f:["$","a",null,{"name":"defining-a-mutator"}]
10:["$","h3",null,{"id":"定義變異器","children":["$","a",null,{"href":"#定義變異器","children":"定義變異器"}]}]
11:["$","p",null,{"children":["變異器在設定 Eloquent 屬性值時進行轉換。要定義變異器，你可以在定義屬性時提供 ",["$","code",null,{"children":"set"}]," 參數。讓我們為 ",["$","code",null,{"children":"first_name"}]," 屬性定義一個變異器。當我們嘗試在模型上設定 ",["$","code",null,{"children":"first_name"}]," 屬性的值時，此變異器將被自動呼叫："]}]
12:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"<?php\n\nnamespace App\\Models;\n\nuse Illuminate\\Database\\Eloquent\\Casts\\Attribute;\nuse Illuminate\\Database\\Eloquent\\Model;\n\nclass User extends Model\n{\n    /**\n     * Interact with the user's first name.\n     */\n    protected function firstName(): Attribute\n    {\n        return Attribute::make(\n            get: fn (string $value) => ucfirst($value),\n            set: fn (string $value) => strtolower($value),\n        );\n    }\n}\n"}]}]
13:["$","p",null,{"children":["變異器閉包將接收要在屬性上設定的值，允許你操縱該值並返回已操縱的值。要使用我們的變異器，我們只需要在 Eloquent 模型上設定 ",["$","code",null,{"children":"first_name"}]," 屬性："]}]
14:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Models\\User;\n\n$user = User::find(1);\n\n$user->first_name = 'Sally';\n"}]}]
15:["$","p",null,{"children":["在此範例中，",["$","code",null,{"children":"set"}]," 回呼將被呼叫且值為 ",["$","code",null,{"children":"Sally"}],"。變異器將隨後對名稱應用 ",["$","code",null,{"children":"strtolower"}]," 函數，並在模型的內部 ",["$","code",null,{"children":"$$attributes"}]," 陣列中設定其結果值。"]}]
16:["$","a",null,{"name":"mutating-multiple-attributes"}]
17:["$","h4",null,{"id":"變異多個屬性","children":["$","a",null,{"href":"#變異多個屬性","children":"變異多個屬性"}]}]
18:["$","p",null,{"children":["有時你的變異器可能需要在基礎模型上設定多個屬性。為此，你可以從 ",["$","code",null,{"children":"set"}]," 閉包返回一個陣列。陣列中的每個鍵應對應於與模型關聯的基礎屬性/資料庫列："]}]
19:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Support\\Address;\nuse Illuminate\\Database\\Eloquent\\Casts\\Attribute;\n\n/**\n * Interact with the user's address.\n */\nprotected function address(): Attribute\n{\n    return Attribute::make(\n        get: fn (mixed $value, array $attributes) => new Address(\n            $attributes['address_line_one'],\n            $attributes['address_line_two'],\n        ),\n        set: fn (Address $value) => [\n            'address_line_one' => $value->lineOne,\n            'address_line_two' => $value->lineTwo,\n        ],\n    );\n}\n"}]}]
1a:["$","a",null,{"name":"attribute-casting"}]
1b:["$","h2",null,{"id":"屬性轉換","children":["$","a",null,{"href":"#屬性轉換","children":"屬性轉換"}]}]
1c:["$","p",null,{"children":["屬性轉換提供類似於訪問器和變異器的功能，無需在你的模型上定義任何額外的方法。相反，你的模型的 ",["$","code",null,{"children":"casts"}]," 方法提供了一種方便的方法來將屬性轉換為常見的資料類型。"]}]
1d:["$","p",null,{"children":[["$","code",null,{"children":"casts"}]," 方法應返回一個陣列，其中鍵是被轉換屬性的名稱，值是你希望將列轉換為的類型。支援的轉換類型有："]}]
1e:["$","div",null,{"className":"content-list","markdown":"1","children":["$","ul",null,{"children":["\n",["$","li",null,{"children":["$","code",null,{"children":"array"}]}],"\n",["$","li",null,{"children":["$","code",null,{"children":"AsFluent::class"}]}],"\n",["$","li",null,{"children":["$","code",null,{"children":"AsStringable::class"}]}],"\n",["$","li",null,{"children":["$","code",null,{"children":"AsUri::class"}]}],"\n",["$","li",null,{"children":["$","code",null,{"children":"boolean"}]}],"\n",["$","li",null,{"children":["$","code",null,{"children":"collection"}]}],"\n",["$","li",null,{"children":["$","code",null,{"children":"date"}]}],"\n",["$","li",null,{"children":["$","code",null,{"children":"datetime"}]}],"\n",["$","li",null,{"children":["$","code",null,{"children":"immutable_date"}]}],"\n",["$","li",null,{"children":["$","code",null,{"children":"immutable_datetime"}]}],"\n",["$","li",null,{"children":["\n",["$","code",null,{"children":"decimal:<precision>"}],"\n"]}],"\n",["$","li",null,{"children":["$","code",null,{"children":"double"}]}],"\n",["$","li",null,{"children":["$","code",null,{"children":"encrypted"}]}],"\n",["$","li",null,{"children":["$","code",null,{"children":"encrypted:array"}]}],"\n",["$","li",null,{"children":["$","code",null,{"children":"encrypted:collection"}]}],"\n",["$","li",null,{"children":["$","code",null,{"children":"encrypted:object"}]}],"\n",["$","li",null,{"children":["$","code",null,{"children":"float"}]}],"\n",["$","li",null,{"children":["$","code",null,{"children":"hashed"}]}],"\n",["$","li",null,{"children":["$","code",null,{"children":"integer"}]}],"\n",["$","li",null,{"children":["$","code",null,{"children":"object"}]}],"\n",["$","li",null,{"children":["$","code",null,{"children":"real"}]}],"\n",["$","li",null,{"children":["$","code",null,{"children":"string"}]}],"\n",["$","li",null,{"children":["$","code",null,{"children":"timestamp"}]}],"\n"]}]}]
1f:["$","p",null,{"children":["為了示範屬性轉換，讓我們將 ",["$","code",null,{"children":"is_admin"}]," 屬性轉換為布林值，該屬性在我們的資料庫中儲存為整數（",["$","code",null,{"children":"0"}]," 或 ",["$","code",null,{"children":"1"}],"）："]}]
20:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"<?php\n\nnamespace App\\Models;\n\nuse Illuminate\\Database\\Eloquent\\Model;\n\nclass User extends Model\n{\n    /**\n     * Get the attributes that should be cast.\n     *\n     * @return array<string, string>\n     */\n    protected function casts(): array\n    {\n        return [\n            'is_admin' => 'boolean',\n        ];\n    }\n}\n"}]}]
21:["$","p",null,{"children":["定義轉換後，即使基礎值在資料庫中儲存為整數，",["$","code",null,{"children":"is_admin"}]," 屬性在你訪問它時也將始終被轉換為布林值："]}]
22:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$user = App\\Models\\User::find(1);\n\nif ($user->is_admin) {\n    // ...\n}\n"}]}]
23:["$","p",null,{"children":["如果你需要在運行時新增臨時轉換，你可以使用 ",["$","code",null,{"children":"mergeCasts"}]," 方法。這些轉換定義將被新增到模型上已定義的任何轉換中："]}]
24:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$user->mergeCasts([\n    'is_admin' => 'integer',\n    'options' => 'object',\n]);\n"}]}]
25:["$","blockquote",null,{"children":["\n",["$","p",null,{"children":["[!WARNING]\n值為 ",["$","code",null,{"children":"null"}]," 的屬性將不會被轉換。此外，你永遠不應定義與關係同名的轉換（或屬性），或為模型的主鍵分配轉換。"]}],"\n"]}]
26:["$","a",null,{"name":"stringable-casting"}]
27:["$","h4",null,{"id":"字符串化轉換","children":["$","a",null,{"href":"#字符串化轉換","children":"字符串化轉換"}]}]
28:["$","p",null,{"children":["你可以使用 ",["$","code",null,{"children":"Illuminate\\Database\\Eloquent\\Casts\\AsStringable"}]," 轉換類別將模型屬性轉換為 ",["$","a",null,{"href":"/docs/strings#fluent-strings-method-list","children":"fluent Illuminate\\Support\\Stringable 物件"}],"："]}]
29:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"<?php\n\nnamespace App\\Models;\n\nuse Illuminate\\Database\\Eloquent\\Casts\\AsStringable;\nuse Illuminate\\Database\\Eloquent\\Model;\n\nclass User extends Model\n{\n    /**\n     * Get the attributes that should be cast.\n     *\n     * @return array<string, string>\n     */\n    protected function casts(): array\n    {\n        return [\n            'directory' => AsStringable::class,\n        ];\n    }\n}\n"}]}]
2a:["$","a",null,{"name":"array-and-json-casting"}]
2b:["$","h3",null,{"id":"陣列和-json-轉換","children":["$","a",null,{"href":"#陣列和-json-轉換","children":"陣列和 JSON 轉換"}]}]
2c:["$","p",null,{"children":[["$","code",null,{"children":"array"}]," 轉換特別適用於處理儲存為序列化 JSON 的列。例如，如果你的資料庫有包含序列化 JSON 的 ",["$","code",null,{"children":"JSON"}]," 或 ",["$","code",null,{"children":"TEXT"}]," 欄位類型，將 ",["$","code",null,{"children":"array"}]," 轉換新增到該屬性將在你通過 Eloquent 模型訪問時自動將屬性反序列化為 PHP 陣列："]}]
2d:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"<?php\n\nnamespace App\\Models;\n\nuse Illuminate\\Database\\Eloquent\\Model;\n\nclass User extends Model\n{\n    /**\n     * Get the attributes that should be cast.\n     *\n     * @return array<string, string>\n     */\n    protected function casts(): array\n    {\n        return [\n            'options' => 'array',\n        ];\n    }\n}\n"}]}]
2e:["$","p",null,{"children":["定義轉換後，你可以訪問 ",["$","code",null,{"children":"options"}]," 屬性，它將自動從 JSON 反序列化為 PHP 陣列。當你設定 ",["$","code",null,{"children":"options"}]," 屬性的值時，給定的陣列將自動被序列化回 JSON 以供儲存："]}]
2f:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Models\\User;\n\n$user = User::find(1);\n\n$options = $user->options;\n\n$options['key'] = 'value';\n\n$user->options = $options;\n\n$user->save();\n"}]}]
30:["$","p",null,{"children":["要使用更簡潔的語法更新 JSON 屬性的單個欄位，你可以 ",["$","a",null,{"href":"/docs/eloquent#mass-assignment-json-columns","children":"使屬性可大量分配"}],"，並在呼叫 ",["$","code",null,{"children":"update"}]," 方法時使用 ",["$","code",null,{"children":"->"}]," 運算子："]}]
31:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$user = User::find(1);\n\n$user->update(['options->key' => 'value']);\n"}]}]
32:["$","a",null,{"name":"json-and-unicode"}]
33:["$","h4",null,{"id":"json-和-unicode","children":["$","a",null,{"href":"#json-和-unicode","children":"JSON 和 Unicode"}]}]
34:["$","p",null,{"children":["如果你想將陣列屬性儲存為帶有未轉義 Unicode 字符的 JSON，你可以使用 ",["$","code",null,{"children":"json:unicode"}]," 轉換："]}]
35:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"/**\n * Get the attributes that should be cast.\n *\n * @return array<string, string>\n */\nprotected function casts(): array\n{\n    return [\n        'options' => 'json:unicode',\n    ];\n}\n"}]}]
36:["$","a",null,{"name":"array-object-and-collection-casting"}]
37:["$","h4",null,{"id":"陣列物件和集合轉換","children":["$","a",null,{"href":"#陣列物件和集合轉換","children":"陣列物件和集合轉換"}]}]
38:["$","p",null,{"children":["雖然標準 ",["$","code",null,{"children":"array"}]," 轉換對許多應用程式來說是充分的，但它確實有一些缺點。由於 ",["$","code",null,{"children":"array"}]," 轉換返回原始類型，無法直接變異陣列的偏移量。例如，以下代碼將觸發 PHP 錯誤："]}]
39:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$user = User::find(1);\n\n$user->options['key'] = $value;\n"}]}]
3a:["$","p",null,{"children":["為了解決這個問題，Laravel 提供了一個 ",["$","code",null,{"children":"AsArrayObject"}]," 轉換，將你的 JSON 屬性轉換為 ",["$","a",null,{"href":"https://www.php.net/manual/en/class.arrayobject.php","children":"ArrayObject"}]," 類別。此功能是使用 Laravel 的 ",["$","a",null,{"href":"#custom-casts","children":"自訂轉換"}]," 實現來實現的，這允許 Laravel 智慧地快取和轉換變異的物件，以便可以修改單個偏移量而不會觸發 PHP 錯誤。要使用 ",["$","code",null,{"children":"AsArrayObject"}]," 轉換，只需將其分配給屬性："]}]
3b:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use Illuminate\\Database\\Eloquent\\Casts\\AsArrayObject;\n\n/**\n * Get the attributes that should be cast.\n *\n * @return array<string, string>\n */\nprotected function casts(): array\n{\n    return [\n        'options' => AsArrayObject::class,\n    ];\n}\n"}]}]
3c:["$","p",null,{"children":["類似地，Laravel 提供了一個 ",["$","code",null,{"children":"AsCollection"}]," 轉換，將你的 JSON 屬性轉換為 Laravel ",["$","a",null,{"href":"/docs/collections","children":"集合"}]," 實例："]}]
3d:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use Illuminate\\Database\\Eloquent\\Casts\\AsCollection;\n\n/**\n * Get the attributes that should be cast.\n *\n * @return array<string, string>\n */\nprotected function casts(): array\n{\n    return [\n        'options' => AsCollection::class,\n    ];\n}\n"}]}]
3e:["$","p",null,{"children":["如果你想要 ",["$","code",null,{"children":"AsCollection"}]," 轉換例項化自訂集合類別而不是 Laravel 的基礎集合類別，你可以提供集合類別名稱作為轉換參數："]}]
3f:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Collections\\OptionCollection;\nuse Illuminate\\Database\\Eloquent\\Casts\\AsCollection;\n\n/**\n * Get the attributes that should be cast.\n *\n * @return array<string, string>\n */\nprotected function casts(): array\n{\n    return [\n        'options' => AsCollection::using(OptionCollection::class),\n    ];\n}\n"}]}]
40:["$","p",null,{"children":[["$","code",null,{"children":"of"}]," 方法可用於表示集合項應通過集合的 ",["$","a",null,{"href":"/docs/collections#method-mapinto","children":"mapInto 方法"}]," 對應到給定的類別："]}]
41:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\ValueObjects\\Option;\nuse Illuminate\\Database\\Eloquent\\Casts\\AsCollection;\n\n/**\n * Get the attributes that should be cast.\n *\n * @return array<string, string>\n */\nprotected function casts(): array\n{\n    return [\n        'options' => AsCollection::of(Option::class)\n    ];\n}\n"}]}]
42:["$","p",null,{"children":["當對應集合到物件時，物件應實現 ",["$","code",null,{"children":"Illuminate\\Contracts\\Support\\Arrayable"}]," 和 ",["$","code",null,{"children":"JsonSerializable"}]," 介面，以定義其實例應如何序列化為資料庫中的 JSON："]}]
a0:T403,<?php

namespace App\ValueObjects;

use Illuminate\Contracts\Support\Arrayable;
use JsonSerializable;

class Option implements Arrayable, JsonSerializable
{
    public string $name;
    public mixed $value;
    public bool $isLocked;

    /**
     * Create a new Option instance.
     */
    public function __construct(array $data)
    {
        $this->name = $data['name'];
        $this->value = $data['value'];
        $this->isLocked = $data['is_locked'];
    }

    /**
     * Get the instance as an array.
     *
     * @return array{name: string, data: string, is_locked: bool}
     */
    public function toArray(): array
    {
        return [
            'name' => $this->name,
            'value' => $this->value,
            'is_locked' => $this->isLocked,
        ];
    }

    /**
     * Specify the data which should be serialized to JSON.
     *
     * @return array{name: string, data: string, is_locked: bool}
     */
    public function jsonSerialize(): array
    {
        return $this->toArray();
    }
}
43:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$a0"}]}]
44:["$","a",null,{"name":"date-casting"}]
45:["$","h3",null,{"id":"日期轉換","children":["$","a",null,{"href":"#日期轉換","children":"日期轉換"}]}]
46:["$","p",null,{"children":["預設情況下，Eloquent 將 ",["$","code",null,{"children":"created_at"}]," 和 ",["$","code",null,{"children":"updated_at"}]," 列轉換為 ",["$","a",null,{"href":"https://github.com/briannesbitt/Carbon","children":"Carbon"}]," 的實例，它擴展了 PHP ",["$","code",null,{"children":"DateTime"}]," 類別並提供了大量有用的方法。你可以通過在模型的 ",["$","code",null,{"children":"casts"}]," 方法中定義其他日期轉換來轉換其他日期屬性。通常，日期應使用 ",["$","code",null,{"children":"datetime"}]," 或 ",["$","code",null,{"children":"immutable_datetime"}]," 轉換類型進行轉換。"]}]
47:["$","p",null,{"children":["定義 ",["$","code",null,{"children":"date"}]," 或 ",["$","code",null,{"children":"datetime"}]," 轉換時，你也可以指定日期的格式。當 ",["$","a",null,{"href":"/docs/eloquent-serialization","children":"模型被序列化為陣列或 JSON"}]," 時，將使用此格式："]}]
48:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"/**\n * Get the attributes that should be cast.\n *\n * @return array<string, string>\n */\nprotected function casts(): array\n{\n    return [\n        'created_at' => 'datetime:Y-m-d',\n    ];\n}\n"}]}]
49:["$","p",null,{"children":["將列轉換為日期時，你可以將對應的模型屬性值設定為 UNIX 時間戳、日期字符串（",["$","code",null,{"children":"Y-m-d"}],"）、日期時間字符串或 ",["$","code",null,{"children":"DateTime"}]," / ",["$","code",null,{"children":"Carbon"}]," 實例。日期的值將被正確轉換並儲存在你的資料庫中。"]}]
4a:["$","p",null,{"children":["你可以通過在模型上定義 ",["$","code",null,{"children":"serializeDate"}]," 方法來自訂所有模型日期的預設序列化格式。此方法不會影響你的日期如何格式化以儲存在資料庫中："]}]
4b:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"/**\n * Prepare a date for array / JSON serialization.\n */\nprotected function serializeDate(DateTimeInterface $date): string\n{\n    return $date->format('Y-m-d');\n}\n"}]}]
4c:["$","p",null,{"children":["要指定應在實際將模型的日期儲存在資料庫中時使用的格式，你應在模型上定義 ",["$","code",null,{"children":"$$dateFormat"}]," 屬性："]}]
4d:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"/**\n * The storage format of the model's date columns.\n *\n * @var string\n */\nprotected $dateFormat = 'U';\n"}]}]
4e:["$","a",null,{"name":"date-casting-and-timezones"}]
4f:["$","h4",null,{"id":"日期轉換序列化和時區","children":["$","a",null,{"href":"#日期轉換序列化和時區","children":"日期轉換、序列化和時區"}]}]
50:["$","p",null,{"children":["預設情況下，",["$","code",null,{"children":"date"}]," 和 ",["$","code",null,{"children":"datetime"}]," 轉換將日期序列化為 UTC ISO-8601 日期字符串（",["$","code",null,{"children":"YYYY-MM-DDTHH:MM:SS.uuuuuuZ"}],"），無論應用程式的 ",["$","code",null,{"children":"timezone"}]," 設定選項中指定的時區如何。我們強烈建議始終使用此序列化格式，以及通過不更改應用程式的 ",["$","code",null,{"children":"timezone"}]," 設定選項從其預設 ",["$","code",null,{"children":"UTC"}]," 值來將應用程式的日期儲存在 UTC 時區中。在整個應用程式中始終一致地使用 UTC 時區將提供與使用 PHP 和 JavaScript 編寫的其他日期操縱庫的最大互操作性。"]}]
51:["$","p",null,{"children":["如果將自訂格式應用於 ",["$","code",null,{"children":"date"}]," 或 ",["$","code",null,{"children":"datetime"}]," 轉換，例如 ",["$","code",null,{"children":"datetime:Y-m-d H:i:s"}],"，Carbon 實例的內部時區將在日期序列化期間使用。通常，這將是應用程式的 ",["$","code",null,{"children":"timezone"}]," 設定選項中指定的時區。但是，重要的是要注意，",["$","code",null,{"children":"timestamp"}]," 列（例如 ",["$","code",null,{"children":"created_at"}]," 和 ",["$","code",null,{"children":"updated_at"}],"）免除此行為，無論應用程式的時區設定如何，始終以 UTC 格式化。"]}]
52:["$","a",null,{"name":"enum-casting"}]
53:["$","h3",null,{"id":"列舉轉換","children":["$","a",null,{"href":"#列舉轉換","children":"列舉轉換"}]}]
54:["$","p",null,{"children":["Eloquent 也允許你將屬性值轉換為 PHP ",["$","a",null,{"href":"https://www.php.net/manual/en/language.enumerations.backed.php","children":"列舉"}],"。為了完成此操作，你可以在模型的 ",["$","code",null,{"children":"casts"}]," 方法中指定你希望轉換的屬性和列舉："]}]
55:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Enums\\ServerStatus;\n\n/**\n * Get the attributes that should be cast.\n *\n * @return array<string, string>\n */\nprotected function casts(): array\n{\n    return [\n        'status' => ServerStatus::class,\n    ];\n}\n"}]}]
56:["$","p",null,{"children":"在模型上定義轉換後，指定的屬性將在你與屬性進行互動時自動轉換為列舉或從列舉轉換："}]
57:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"if ($server->status == ServerStatus::Provisioned) {\n    $server->status = ServerStatus::Ready;\n\n    $server->save();\n}\n"}]}]
58:["$","a",null,{"name":"casting-arrays-of-enums"}]
59:["$","h4",null,{"id":"轉換列舉陣列","children":["$","a",null,{"href":"#轉換列舉陣列","children":"轉換列舉陣列"}]}]
5a:["$","p",null,{"children":["有時你可能需要模型在單個列中儲存列舉值的陣列。為了完成此操作，你可以利用 Laravel 提供的 ",["$","code",null,{"children":"AsEnumArrayObject"}]," 或 ",["$","code",null,{"children":"AsEnumCollection"}]," 轉換："]}]
5b:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Enums\\ServerStatus;\nuse Illuminate\\Database\\Eloquent\\Casts\\AsEnumCollection;\n\n/**\n * Get the attributes that should be cast.\n *\n * @return array<string, string>\n */\nprotected function casts(): array\n{\n    return [\n        'statuses' => AsEnumCollection::of(ServerStatus::class),\n    ];\n}\n"}]}]
5c:["$","a",null,{"name":"encrypted-casting"}]
5d:["$","h3",null,{"id":"加密轉換","children":["$","a",null,{"href":"#加密轉換","children":"加密轉換"}]}]
5e:["$","p",null,{"children":[["$","code",null,{"children":"encrypted"}]," 轉換將使用 Laravel 的內置 ",["$","a",null,{"href":"/docs/encryption","children":"加密"}]," 功能加密模型的屬性值。此外，",["$","code",null,{"children":"encrypted:array"}],"、",["$","code",null,{"children":"encrypted:collection"}],"、",["$","code",null,{"children":"encrypted:object"}],"、",["$","code",null,{"children":"AsEncryptedArrayObject"}]," 和 ",["$","code",null,{"children":"AsEncryptedCollection"}]," 轉換的行為類似於它們的未加密對應物；但是，如你所預期的，基礎值在儲存在資料庫時被加密。"]}]
5f:["$","p",null,{"children":["由於加密文字的最終長度是不可預測的且比其純文字對應物更長，請確保關聯的資料庫列是 ",["$","code",null,{"children":"TEXT"}]," 類型或更大。此外，由於值在資料庫中被加密，你將無法查詢或搜尋加密的屬性值。"]}]
60:["$","a",null,{"name":"key-rotation"}]
61:["$","h4",null,{"id":"金鑰輪換","children":["$","a",null,{"href":"#金鑰輪換","children":"金鑰輪換"}]}]
62:["$","p",null,{"children":["如你所知，Laravel 使用應用程式 ",["$","code",null,{"children":"app"}]," 設定檔中指定的 ",["$","code",null,{"children":"key"}]," 設定值來加密字符串。通常，此值對應於 ",["$","code",null,{"children":"APP_KEY"}]," 環境變數的值。如果你需要輪換應用程式的加密金鑰，你將需要使用新金鑰手動重新加密加密的屬性。"]}]
63:["$","a",null,{"name":"query-time-casting"}]
64:["$","h3",null,{"id":"查詢時間轉換","children":["$","a",null,{"href":"#查詢時間轉換","children":"查詢時間轉換"}]}]
65:["$","p",null,{"children":"有時你可能需要在執行查詢時應用轉換，例如從表中選擇原始值時。例如，考慮以下查詢："}]
66:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Models\\Post;\nuse App\\Models\\User;\n\n$users = User::select([\n    'users.*',\n    'last_posted_at' => Post::selectRaw('MAX(created_at)')\n        ->whereColumn('user_id', 'users.id')\n])->get();\n"}]}]
67:["$","p",null,{"children":["此查詢結果上的 ",["$","code",null,{"children":"last_posted_at"}]," 屬性將是一個簡單的字符串。如果我們可以在執行查詢時對此屬性應用 ",["$","code",null,{"children":"datetime"}]," 轉換，那就太棒了。值得慶幸的是，我們可以使用 ",["$","code",null,{"children":"withCasts"}]," 方法完成此操作："]}]
68:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$users = User::select([\n    'users.*',\n    'last_posted_at' => Post::selectRaw('MAX(created_at)')\n        ->whereColumn('user_id', 'users.id')\n])->withCasts([\n    'last_posted_at' => 'datetime'\n])->get();\n"}]}]
69:["$","a",null,{"name":"custom-casts"}]
6a:["$","h2",null,{"id":"自訂轉換","children":["$","a",null,{"href":"#自訂轉換","children":"自訂轉換"}]}]
6b:["$","p",null,{"children":["Laravel 有各種內置的、有用的轉換類型；但是，你可能偶爾需要定義自己的轉換類型。要建立轉換，請執行 ",["$","code",null,{"children":"make:cast"}]," Artisan 命令。新轉換類別將放在你的 ",["$","code",null,{"children":"app/Casts"}]," 目錄中："]}]
6c:["$","pre",null,{"children":["$","code",null,{"className":"language-shell","children":"php artisan make:cast AsJson\n"}]}]
6d:["$","p",null,{"children":["所有自訂轉換類別實現 ",["$","code",null,{"children":"CastsAttributes"}]," 介面。實現此介面的類別必須定義 ",["$","code",null,{"children":"get"}]," 和 ",["$","code",null,{"children":"set"}]," 方法。",["$","code",null,{"children":"get"}]," 方法負責將資料庫中的原始值轉換為轉換值，而 ",["$","code",null,{"children":"set"}]," 方法應將轉換值轉換為可儲存在資料庫中的原始值。例如，我們將把內置的 ",["$","code",null,{"children":"json"}]," 轉換類型重新實現為自訂轉換類型："]}]
6e:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"<?php\n\nnamespace App\\Casts;\n\nuse Illuminate\\Contracts\\Database\\Eloquent\\CastsAttributes;\nuse Illuminate\\Database\\Eloquent\\Model;\n\nclass AsJson implements CastsAttributes\n{\n    /**\n     * Cast the given value.\n     *\n     * @param  array<string, mixed>  $attributes\n     * @return array<string, mixed>\n     */\n    public function get(\n        Model $model,\n        string $key,\n        mixed $value,\n        array $attributes,\n    ): array {\n        return json_decode($value, true);\n    }\n\n    /**\n     * Prepare the given value for storage.\n     *\n     * @param  array<string, mixed>  $attributes\n     */\n    public function set(\n        Model $model,\n        string $key,\n        mixed $value,\n        array $attributes,\n    ): string {\n        return json_encode($value);\n    }\n}\n"}]}]
6f:["$","p",null,{"children":"定義自訂轉換類型後，你可以使用其類別名稱將其附加到模型屬性："}]
70:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"<?php\n\nnamespace App\\Models;\n\nuse App\\Casts\\AsJson;\nuse Illuminate\\Database\\Eloquent\\Model;\n\nclass User extends Model\n{\n    /**\n     * Get the attributes that should be cast.\n     *\n     * @return array<string, string>\n     */\n    protected function casts(): array\n    {\n        return [\n            'options' => AsJson::class,\n        ];\n    }\n}\n"}]}]
71:["$","a",null,{"name":"value-object-casting"}]
72:["$","h3",null,{"id":"值物件轉換","children":["$","a",null,{"href":"#值物件轉換","children":"值物件轉換"}]}]
73:["$","p",null,{"children":["你不限於將值轉換為原始類型。你也可以將值轉換為物件。定義將值轉換為物件的自訂轉換與轉換為原始類型非常相似；但是，如果你的值物件涵蓋多個資料庫列，",["$","code",null,{"children":"set"}]," 方法必須返回一個鍵/值對的陣列，將用於在模型上設定原始的、可儲存的值。如果你的值物件僅影響單個列，你應簡單地返回可儲存的值。"]}]
74:["$","p",null,{"children":["例如，我們將定義一個自訂轉換類別，將多個模型值轉換為單個 ",["$","code",null,{"children":"Address"}]," 值物件。我們將假設 ",["$","code",null,{"children":"Address"}]," 值物件有兩個公開屬性：",["$","code",null,{"children":"lineOne"}]," 和 ",["$","code",null,{"children":"lineTwo"}],"："]}]
a1:T499,<?php

namespace App\Casts;

use App\ValueObjects\Address;
use Illuminate\Contracts\Database\Eloquent\CastsAttributes;
use Illuminate\Database\Eloquent\Model;
use InvalidArgumentException;

class AsAddress implements CastsAttributes
{
    /**
     * Cast the given value.
     *
     * @param  array<string, mixed>  $attributes
     */
    public function get(
        Model $model,
        string $key,
        mixed $value,
        array $attributes,
    ): Address {
        return new Address(
            $attributes['address_line_one'],
            $attributes['address_line_two']
        );
    }

    /**
     * Prepare the given value for storage.
     *
     * @param  array<string, mixed>  $attributes
     * @return array<string, string>
     */
    public function set(
        Model $model,
        string $key,
        mixed $value,
        array $attributes,
    ): array {
        if (! $value instanceof Address) {
            throw new InvalidArgumentException('The given value is not an Address instance.');
        }

        return [
            'address_line_one' => $value->lineOne,
            'address_line_two' => $value->lineTwo,
        ];
    }
}
75:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$a1"}]}]
76:["$","p",null,{"children":"將值物件進行轉換時，對值物件所做的任何更改將在保存模型前自動同步回模型："}]
77:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Models\\User;\n\n$user = User::find(1);\n\n$user->address->lineOne = 'Updated Address Value';\n\n$user->save();\n"}]}]
78:["$","blockquote",null,{"children":["\n",["$","p",null,{"children":["[!NOTE]\n如果你計劃將包含值物件的 Eloquent 模型序列化為 JSON 或陣列，你應在值物件上實現 ",["$","code",null,{"children":"Illuminate\\Contracts\\Support\\Arrayable"}]," 和 ",["$","code",null,{"children":"JsonSerializable"}]," 介面。"]}],"\n"]}]
79:["$","a",null,{"name":"value-object-caching"}]
7a:["$","h4",null,{"id":"值物件快取","children":["$","a",null,{"href":"#值物件快取","children":"值物件快取"}]}]
7b:["$","p",null,{"children":"當解析被轉換為值物件的屬性時，它們由 Eloquent 進行快取。因此，如果再次訪問該屬性，將返回相同的物件實例。"}]
7c:["$","p",null,{"children":["如果你想停用自訂轉換類別的物件快取行為，你可以在自訂轉換類別上宣告一個公開的 ",["$","code",null,{"children":"withoutObjectCaching"}]," 屬性："]}]
7d:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"class AsAddress implements CastsAttributes\n{\n    public bool $withoutObjectCaching = true;\n\n    // ...\n}\n"}]}]
7e:["$","a",null,{"name":"array-json-serialization"}]
7f:["$","h3",null,{"id":"陣列--json-序列化","children":["$","a",null,{"href":"#陣列--json-序列化","children":"陣列 / JSON 序列化"}]}]
80:["$","p",null,{"children":["當使用 ",["$","code",null,{"children":"toArray"}]," 和 ",["$","code",null,{"children":"toJson"}]," 方法將 Eloquent 模型轉換為陣列或 JSON 時，你的自訂轉換值物件通常也會被序列化，只要它們實現 ",["$","code",null,{"children":"Illuminate\\Contracts\\Support\\Arrayable"}]," 和 ",["$","code",null,{"children":"JsonSerializable"}]," 介面。但是，當使用第三方庫提供的值物件時，你可能無法向物件新增這些介面。"]}]
81:["$","p",null,{"children":["因此，你可以指定你的自訂轉換類別將負責序列化值物件。為此，你的自訂轉換類別應實現 ",["$","code",null,{"children":"Illuminate\\Contracts\\Database\\Eloquent\\SerializesCastableAttributes"}]," 介面。此介面規定你的類別應包含一個 ",["$","code",null,{"children":"serialize"}]," 方法，該方法應返回值物件的序列化形式："]}]
82:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"/**\n * Get the serialized representation of the value.\n *\n * @param  array<string, mixed>  $attributes\n */\npublic function serialize(\n    Model $model,\n    string $key,\n    mixed $value,\n    array $attributes,\n): string {\n    return (string) $value;\n}\n"}]}]
83:["$","a",null,{"name":"inbound-casting"}]
84:["$","h3",null,{"id":"入站轉換","children":["$","a",null,{"href":"#入站轉換","children":"入站轉換"}]}]
85:["$","p",null,{"children":"有時，你可能需要編寫一個自訂轉換類別，它僅轉換在模型上設定的值，而不會在從模型檢索屬性時執行任何操作。"}]
86:["$","p",null,{"children":["入站專用自訂轉換應實現 ",["$","code",null,{"children":"CastsInboundAttributes"}]," 介面，它僅要求定義 ",["$","code",null,{"children":"set"}]," 方法。",["$","code",null,{"children":"make:cast"}]," Artisan 命令可以使用 ",["$","code",null,{"children":"--inbound"}]," 選項來呼叫以生成入站專用轉換類別："]}]
87:["$","pre",null,{"children":["$","code",null,{"className":"language-shell","children":"php artisan make:cast AsHash --inbound\n"}]}]
88:["$","p",null,{"children":"入站專用轉換的一個典型例子是「雜湊」轉換。例如，我們可能定義一個通過給定演算法轉換入站值的轉換："}]
89:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"<?php\n\nnamespace App\\Casts;\n\nuse Illuminate\\Contracts\\Database\\Eloquent\\CastsInboundAttributes;\nuse Illuminate\\Database\\Eloquent\\Model;\n\nclass AsHash implements CastsInboundAttributes\n{\n    /**\n     * Create a new cast class instance.\n     */\n    public function __construct(\n        protected string|null $algorithm = null,\n    ) {}\n\n    /**\n     * Prepare the given value for storage.\n     *\n     * @param  array<string, mixed>  $attributes\n     */\n    public function set(\n        Model $model,\n        string $key,\n        mixed $value,\n        array $attributes,\n    ): string {\n        return is_null($this->algorithm)\n            ? bcrypt($value)\n            : hash($this->algorithm, $value);\n    }\n}\n"}]}]
8a:["$","a",null,{"name":"cast-parameters"}]
8b:["$","h3",null,{"id":"轉換參數","children":["$","a",null,{"href":"#轉換參數","children":"轉換參數"}]}]
8c:["$","p",null,{"children":["將自訂轉換附加到模型時，可以通過使用 ",["$","code",null,{"children":":"}]," 字符從類別名稱中分隔並逗號分隔多個參數來指定轉換參數。參數將被傳遞到轉換類別的建構子："]}]
8d:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"/**\n * Get the attributes that should be cast.\n *\n * @return array<string, string>\n */\nprotected function casts(): array\n{\n    return [\n        'secret' => AsHash::class.':sha256',\n    ];\n}\n"}]}]
8e:["$","a",null,{"name":"comparing-cast-values"}]
8f:["$","h3",null,{"id":"比較轉換值","children":["$","a",null,{"href":"#比較轉換值","children":"比較轉換值"}]}]
90:["$","p",null,{"children":["如果你想定義兩個給定的轉換值應如何進行比較以確定它們是否已改變，你的自訂轉換類別可能實現 ",["$","code",null,{"children":"Illuminate\\Contracts\\Database\\Eloquent\\ComparesCastableAttributes"}]," 介面。這允許你對 Eloquent 認為哪些值已改變並因此在更新模型時儲存到資料庫進行細粒度控制。"]}]
91:["$","p",null,{"children":["此介面規定你的類別應包含一個 ",["$","code",null,{"children":"compare"}]," 方法，如果給定的值被認為相等，該方法應返回 ",["$","code",null,{"children":"true"}],"："]}]
92:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"/**\n * Determine if the given values are equal.\n *\n * @param  \\Illuminate\\Database\\Eloquent\\Model  $model\n * @param  string  $key\n * @param  mixed  $firstValue\n * @param  mixed  $secondValue\n * @return bool\n */\npublic function compare(\n    Model $model,\n    string $key,\n    mixed $firstValue,\n    mixed $secondValue\n): bool {\n    return $firstValue === $secondValue;\n}\n"}]}]
93:["$","a",null,{"name":"castables"}]
94:["$","h3",null,{"id":"可轉換的","children":["$","a",null,{"href":"#可轉換的","children":"可轉換的"}]}]
95:["$","p",null,{"children":["你可能想允許你應用程式的值物件定義自己的自訂轉換類別。與其將自訂轉換類別附加到模型，不如可以選擇附加一個實現 ",["$","code",null,{"children":"Illuminate\\Contracts\\Database\\Eloquent\\Castable"}]," 介面的值物件類別："]}]
96:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\ValueObjects\\Address;\n\nprotected function casts(): array\n{\n    return [\n        'address' => Address::class,\n    ];\n}\n"}]}]
97:["$","p",null,{"children":["實現 ",["$","code",null,{"children":"Castable"}]," 介面的物件必須定義一個 ",["$","code",null,{"children":"castUsing"}]," 方法，該方法返回負責轉換至和從 ",["$","code",null,{"children":"Castable"}]," 類別轉換的自訂轉換程式類別的類別名稱："]}]
98:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"<?php\n\nnamespace App\\ValueObjects;\n\nuse Illuminate\\Contracts\\Database\\Eloquent\\Castable;\nuse App\\Casts\\AsAddress;\n\nclass Address implements Castable\n{\n    /**\n     * Get the name of the caster class to use when casting from / to this cast target.\n     *\n     * @param  array<string, mixed>  $arguments\n     */\n    public static function castUsing(array $arguments): string\n    {\n        return AsAddress::class;\n    }\n}\n"}]}]
99:["$","p",null,{"children":["使用 ",["$","code",null,{"children":"Castable"}]," 類別時，你仍然可以在 ",["$","code",null,{"children":"casts"}]," 方法定義中提供參數。參數將被傳遞到 ",["$","code",null,{"children":"castUsing"}]," 方法："]}]
9a:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\ValueObjects\\Address;\n\nprotected function casts(): array\n{\n    return [\n        'address' => Address::class.':argument',\n    ];\n}\n"}]}]
9b:["$","a",null,{"name":"anonymous-cast-classes"}]
9c:["$","h4",null,{"id":"可轉換的和匿名轉換類別","children":["$","a",null,{"href":"#可轉換的和匿名轉換類別","children":"可轉換的和匿名轉換類別"}]}]
9d:["$","p",null,{"children":["通過結合「可轉換的」與 PHP 的 ",["$","a",null,{"href":"https://www.php.net/manual/en/language.oop5.anonymous.php","children":"匿名類別"}],"，你可以將值物件及其轉換邏輯定義為單個可轉換物件。為此，從值物件的 ",["$","code",null,{"children":"castUsing"}]," 方法返回匿名類別。匿名類別應實現 ",["$","code",null,{"children":"CastsAttributes"}]," 介面："]}]
a2:T4c1,<?php

namespace App\ValueObjects;

use Illuminate\Contracts\Database\Eloquent\Castable;
use Illuminate\Contracts\Database\Eloquent\CastsAttributes;

class Address implements Castable
{
    // ...

    /**
     * Get the caster class to use when casting from / to this cast target.
     *
     * @param  array<string, mixed>  $arguments
     */
    public static function castUsing(array $arguments): CastsAttributes
    {
        return new class implements CastsAttributes
        {
            public function get(
                Model $model,
                string $key,
                mixed $value,
                array $attributes,
            ): Address {
                return new Address(
                    $attributes['address_line_one'],
                    $attributes['address_line_two']
                );
            }

            public function set(
                Model $model,
                string $key,
                mixed $value,
                array $attributes,
            ): array {
                return [
                    'address_line_one' => $value->lineOne,
                    'address_line_two' => $value->lineTwo,
                ];
            }
        };
    }
}
9e:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$a2"}]}]
9f:["$","$La3",null,{"children":["$","$a4",null,{"name":"Next.MetadataOutlet","children":"$@a5"}]}]
a5:null
