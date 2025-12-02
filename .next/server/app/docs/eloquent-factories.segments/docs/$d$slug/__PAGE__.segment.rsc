1:"$Sreact.fragment"
92:I[97367,["/_next/static/chunks/ff1a16fafef87110.js","/_next/static/chunks/247eb132b7f7b574.js"],"OutletBoundary"]
93:"$Sreact.suspense"
2:T42c,namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\User>
 */
class UserFactory extends Factory
{
    /**
     * The current password being used by the factory.
     */
    protected static ?string $password;

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => fake()->name(),
            'email' => fake()->unique()->safeEmail(),
            'email_verified_at' => now(),
            'password' => static::$password ??= Hash::make('password'),
            'remember_token' => Str::random(10),
        ];
    }

    /**
     * Indicate that the model's email address should be unverified.
     */
    public function unverified(): static
    {
        return $this->state(fn (array $attributes) => [
            'email_verified_at' => null,
        ]);
    }
}
0:{"buildId":"0lISzds8vnU9N34ubzJcA","rsc":["$","$1","c",{"children":[["$","div",null,{"className":"container mx-auto py-10","children":["$","div",null,{"className":"mx-auto max-w-3xl","children":[["$","div",null,{"className":"mb-8","children":[["$","h1",null,{"className":"scroll-m-20 text-4xl font-extrabold tracking-tight lg:text-5xl","children":"Eloquent Factories"}],["$","p",null,{"className":"text-xl text-muted-foreground mt-2","children":"Model factories 提供方便的方式來產生測試資料"}]]}],["$","article",null,{"className":"prose prose-slate dark:prose-invert max-w-none","children":[["$","h1",null,{"id":"eloquent工廠-eloquent-factories","children":["$","a",null,{"href":"#eloquent工廠-eloquent-factories","children":"Eloquent：工廠 (Eloquent: Factories)"}]}],"\n",["$","ul",null,{"children":["\n",["$","li",null,{"children":["$","a",null,{"href":"#introduction","children":"簡介 (Introduction)"}]}],"\n",["$","li",null,{"children":[["$","a",null,{"href":"#defining-model-factories","children":"定義模型工廠 (Defining Model Factories)"}],"\n",["$","ul",null,{"children":["\n",["$","li",null,{"children":["$","a",null,{"href":"#generating-factories","children":"產生工廠 (Generating Factories)"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#factory-states","children":"工廠狀態 (Factory States)"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#factory-callbacks","children":"工廠回呼 (Factory Callbacks)"}]}],"\n"]}],"\n"]}],"\n",["$","li",null,{"children":[["$","a",null,{"href":"#creating-models-using-factories","children":"使用工廠建立模型 (Creating Models Using Factories)"}],"\n",["$","ul",null,{"children":["\n",["$","li",null,{"children":["$","a",null,{"href":"#instantiating-models","children":"實例化模型 (Instantiating Models)"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#persisting-models","children":"保存模型 (Persisting Models)"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#sequences","children":"序列 (Sequences)"}]}],"\n"]}],"\n"]}],"\n",["$","li",null,{"children":[["$","a",null,{"href":"#factory-relationships","children":"工廠關聯 (Factory Relationships)"}],"\n",["$","ul",null,{"children":["\n",["$","li",null,{"children":["$","a",null,{"href":"#has-many-relationships","children":"一對多關聯 (Has Many Relationships)"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#belongs-to-relationships","children":"從屬關聯 (Belongs To Relationships)"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#many-to-many-relationships","children":"多對多關聯 (Many to Many Relationships)"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#polymorphic-relationships","children":"多態關聯 (Polymorphic Relationships)"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#defining-relationships-within-factories","children":"在工廠中定義關聯 (Defining Relationships Within Factories)"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#recycling-an-existing-model-for-relationships","children":"為關聯回收現有模型 (Recycling an Existing Model for Relationships)"}]}],"\n"]}],"\n"]}],"\n"]}],"\n",["$","a",null,{"name":"introduction"}],"\n",["$","h2",null,{"id":"簡介-introduction","children":["$","a",null,{"href":"#簡介-introduction","children":"簡介 (Introduction)"}]}],"\n",["$","p",null,{"children":["在測試應用或生成資料庫資料時，你可能需要在資料庫中插入一些記錄。與其手動指定每一列的值，不如讓 Laravel 允許你使用模型工廠為每個 ",["$","a",null,{"href":"/docs/eloquent","children":"Eloquent 模型"}]," 定義一組預設屬性。"]}],"\n",["$","p",null,{"children":["若要查看如何編寫工廠的範例，請查看應用中的 ",["$","code",null,{"children":"database/factories/UserFactory.php"}]," 檔案。此工廠包含在所有新 Laravel 應用中，並包含以下工廠定義："]}],"\n",["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$2"}]}],"\n","$L3","\n","$L4","\n","$L5","\n","$L6","\n","$L7","\n","$L8","\n","$L9","\n","$La","\n","$Lb","\n","$Lc","\n","$Ld","\n","$Le","\n","$Lf","\n","$L10","\n","$L11","\n","$L12","\n","$L13","\n","$L14","\n","$L15","\n","$L16","\n","$L17","\n","$L18","\n","$L19","\n","$L1a","\n","$L1b","\n","$L1c","\n","$L1d","\n","$L1e","\n","$L1f","\n","$L20","\n","$L21","\n","$L22","\n","$L23","\n","$L24","\n","$L25","\n","$L26","\n","$L27","\n","$L28","\n","$L29","\n","$L2a","\n","$L2b","\n","$L2c","\n","$L2d","\n","$L2e","\n","$L2f","\n","$L30","\n","$L31","\n","$L32","\n","$L33","\n","$L34","\n","$L35","\n","$L36","\n","$L37","\n","$L38","\n","$L39","\n","$L3a","\n","$L3b","\n","$L3c","\n","$L3d","\n","$L3e","\n","$L3f","\n","$L40","\n","$L41","\n","$L42","\n","$L43","\n","$L44","\n","$L45","\n","$L46","\n","$L47","\n","$L48","\n","$L49","\n","$L4a","\n","$L4b","\n","$L4c","\n","$L4d","\n","$L4e","\n","$L4f","\n","$L50","\n","$L51","\n","$L52","\n","$L53","\n","$L54","\n","$L55","\n","$L56","\n","$L57","\n","$L58","\n","$L59","\n","$L5a","\n","$L5b","\n","$L5c","\n","$L5d","\n","$L5e","\n","$L5f","\n","$L60","\n","$L61","\n","$L62","\n","$L63","\n","$L64","\n","$L65","\n","$L66","\n","$L67","\n","$L68","\n","$L69","\n","$L6a","\n","$L6b","\n","$L6c","\n","$L6d","\n","$L6e","\n","$L6f","\n","$L70","\n","$L71","\n","$L72","\n","$L73","\n","$L74","\n","$L75","\n","$L76","\n","$L77","\n","$L78","\n","$L79","\n","$L7a","\n","$L7b","\n","$L7c","\n","$L7d","\n","$L7e","\n","$L7f","\n","$L80","\n","$L81","\n","$L82","\n","$L83","\n","$L84","\n","$L85","\n","$L86","\n","$L87","\n","$L88","\n","$L89","\n","$L8a","\n","$L8b","\n","$L8c","\n","$L8d","\n","$L8e","\n","$L8f","\n","$L90"]}]]}]}],null,"$L91"]}],"loading":null,"isPartial":false}
3:["$","p",null,{"children":["如你所見，在最基本的形式中，工廠是擴展 Laravel 基礎工廠類並定義 ",["$","code",null,{"children":"definition"}]," 方法的類。",["$","code",null,{"children":"definition"}]," 方法返回使用工廠建立模型時應應用的預設屬性值集。"]}]
4:["$","p",null,{"children":["通過 ",["$","code",null,{"children":"fake"}]," 幫助器，工廠可以訪問 ",["$","a",null,{"href":"https://github.com/FakerPHP/Faker","children":"Faker"}]," PHP 庫，這允許你方便地為測試和生成種子生成各種隨機資料。"]}]
5:["$","blockquote",null,{"children":["\n",["$","p",null,{"children":["[!NOTE]\n你可以通過更新 ",["$","code",null,{"children":"config/app.php"}]," 配置檔案中的 ",["$","code",null,{"children":"faker_locale"}]," 選項來更改應用的 Faker 語言環境。"]}],"\n"]}]
6:["$","a",null,{"name":"defining-model-factories"}]
7:["$","h2",null,{"id":"定義模型工廠-defining-model-factories","children":["$","a",null,{"href":"#定義模型工廠-defining-model-factories","children":"定義模型工廠 (Defining Model Factories)"}]}]
8:["$","a",null,{"name":"generating-factories"}]
9:["$","h3",null,{"id":"產生工廠-generating-factories","children":["$","a",null,{"href":"#產生工廠-generating-factories","children":"產生工廠 (Generating Factories)"}]}]
a:["$","p",null,{"children":["要建立工廠，執行 ",["$","code",null,{"children":"make:factory"}]," ",["$","a",null,{"href":"/docs/artisan","children":"Artisan 指令"}],"："]}]
b:["$","pre",null,{"children":["$","code",null,{"className":"language-shell","children":"php artisan make:factory PostFactory\n"}]}]
c:["$","p",null,{"children":["新工廠類將放置在你的 ",["$","code",null,{"children":"database/factories"}]," 目錄中。"]}]
d:["$","a",null,{"name":"factory-and-model-discovery-conventions"}]
e:["$","h4",null,{"id":"模型和工廠發現慣例-model-and-factory-discovery-conventions","children":["$","a",null,{"href":"#模型和工廠發現慣例-model-and-factory-discovery-conventions","children":"模型和工廠發現慣例 (Model and Factory Discovery Conventions)"}]}]
f:["$","p",null,{"children":["定義工廠後，你可以使用由 ",["$","code",null,{"children":"Illuminate\\Database\\Eloquent\\Factories\\HasFactory"}]," 特性提供的靜態 ",["$","code",null,{"children":"factory"}]," 方法來實例化該模型的工廠實例。"]}]
10:["$","p",null,{"children":[["$","code",null,{"children":"HasFactory"}]," 特性的 ",["$","code",null,{"children":"factory"}]," 方法將使用慣例來確定該特性分配給的模型的適當工廠。具體來說，該方法將在 ",["$","code",null,{"children":"Database\\Factories"}]," 命名空間中查找與模型名稱相符並以 ",["$","code",null,{"children":"Factory"}]," 為尾碼的類。如果這些慣例不適用於你的特定應用或工廠，你可以將 ",["$","code",null,{"children":"UseFactory"}]," 屬性新增到模型中以手動指定模型的工廠："]}]
11:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use Illuminate\\Database\\Eloquent\\Attributes\\UseFactory;\nuse Database\\Factories\\Administration\\FlightFactory;\n\n#[UseFactory(FlightFactory::class)]\nclass Flight extends Model\n{\n    // ...\n}\n"}]}]
12:["$","p",null,{"children":["或者，你可以在模型上覆寫 ",["$","code",null,{"children":"newFactory"}]," 方法以直接返回模型對應工廠的實例："]}]
13:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use Database\\Factories\\Administration\\FlightFactory;\n\n/**\n * Create a new factory instance for the model.\n */\nprotected static function newFactory()\n{\n    return FlightFactory::new();\n}\n"}]}]
14:["$","p",null,{"children":["然後，在對應的工廠上定義 ",["$","code",null,{"children":"model"}]," 屬性："]}]
15:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Administration\\Flight;\nuse Illuminate\\Database\\Eloquent\\Factories\\Factory;\n\nclass FlightFactory extends Factory\n{\n    /**\n     * The name of the factory's corresponding model.\n     *\n     * @var class-string<\\Illuminate\\Database\\Eloquent\\Model>\n     */\n    protected $model = Flight::class;\n}\n"}]}]
16:["$","a",null,{"name":"factory-states"}]
17:["$","h3",null,{"id":"工廠狀態-factory-states","children":["$","a",null,{"href":"#工廠狀態-factory-states","children":"工廠狀態 (Factory States)"}]}]
18:["$","p",null,{"children":["狀態操作方法允許你定義可以以任何組合應用於模型工廠的離散修改。例如，你的 ",["$","code",null,{"children":"Database\\Factories\\UserFactory"}]," 工廠可能包含一個 ",["$","code",null,{"children":"suspended"}]," 狀態方法，用於修改其預設屬性值之一。"]}]
19:["$","p",null,{"children":["狀態轉換方法通常呼叫 Laravel 基礎工廠類提供的 ",["$","code",null,{"children":"state"}]," 方法。",["$","code",null,{"children":"state"}]," 方法接受一個閉包，它將接收為工廠定義的原始屬性陣列，並應返回要修改的屬性陣列："]}]
1a:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use Illuminate\\Database\\Eloquent\\Factories\\Factory;\n\n/**\n * Indicate that the user is suspended.\n */\npublic function suspended(): Factory\n{\n    return $this->state(function (array $attributes) {\n        return [\n            'account_status' => 'suspended',\n        ];\n    });\n}\n"}]}]
1b:["$","a",null,{"name":"trashed-state"}]
1c:["$","h4",null,{"id":"已刪除狀態-trashed-state","children":["$","a",null,{"href":"#已刪除狀態-trashed-state","children":"\"已刪除\"狀態 (\"Trashed\" State)"}]}]
1d:["$","p",null,{"children":["如果你的 Eloquent 模型可以是",["$","a",null,{"href":"/docs/eloquent#soft-deleting","children":"軟刪除"}],"，你可以叫用內建的 ",["$","code",null,{"children":"trashed"}]," 狀態方法來指示建立的模型應已是「軟刪除」。你無需手動定義 ",["$","code",null,{"children":"trashed"}]," 狀態，因為它自動可用於所有工廠："]}]
1e:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Models\\User;\n\n$user = User::factory()->trashed()->create();\n"}]}]
1f:["$","a",null,{"name":"factory-callbacks"}]
20:["$","h3",null,{"id":"工廠回呼-factory-callbacks","children":["$","a",null,{"href":"#工廠回呼-factory-callbacks","children":"工廠回呼 (Factory Callbacks)"}]}]
21:["$","p",null,{"children":["工廠回呼使用 ",["$","code",null,{"children":"afterMaking"}]," 和 ",["$","code",null,{"children":"afterCreating"}]," 方法進行登記，允許你在建立或建立模型後執行其他任務。你應該通過在工廠類上定義 ",["$","code",null,{"children":"configure"}]," 方法來登記這些回呼。當工廠被實例化時，Laravel 將自動呼叫此方法："]}]
22:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"namespace Database\\Factories;\n\nuse App\\Models\\User;\nuse Illuminate\\Database\\Eloquent\\Factories\\Factory;\n\nclass UserFactory extends Factory\n{\n    /**\n     * Configure the model factory.\n     */\n    public function configure(): static\n    {\n        return $this->afterMaking(function (User $user) {\n            // ...\n        })->afterCreating(function (User $user) {\n            // ...\n        });\n    }\n\n    // ...\n}\n"}]}]
23:["$","p",null,{"children":"你也可以在狀態方法中登記工廠回呼，以執行特定於給定狀態的其他任務："}]
24:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Models\\User;\nuse Illuminate\\Database\\Eloquent\\Factories\\Factory;\n\n/**\n * Indicate that the user is suspended.\n */\npublic function suspended(): Factory\n{\n    return $this->state(function (array $attributes) {\n        return [\n            'account_status' => 'suspended',\n        ];\n    })->afterMaking(function (User $user) {\n        // ...\n    })->afterCreating(function (User $user) {\n        // ...\n    });\n}\n"}]}]
25:["$","a",null,{"name":"creating-models-using-factories"}]
26:["$","h2",null,{"id":"使用工廠建立模型-creating-models-using-factories","children":["$","a",null,{"href":"#使用工廠建立模型-creating-models-using-factories","children":"使用工廠建立模型 (Creating Models Using Factories)"}]}]
27:["$","a",null,{"name":"instantiating-models"}]
28:["$","h3",null,{"id":"實例化模型-instantiating-models","children":["$","a",null,{"href":"#實例化模型-instantiating-models","children":"實例化模型 (Instantiating Models)"}]}]
29:["$","p",null,{"children":["定義工廠後，你可以使用由 ",["$","code",null,{"children":"Illuminate\\Database\\Eloquent\\Factories\\HasFactory"}]," 特性提供給模型的靜態 ",["$","code",null,{"children":"factory"}]," 方法來實例化該模型的工廠實例。讓我們看一下建立模型的幾個示例。首先，我們將使用 ",["$","code",null,{"children":"make"}]," 方法建立模型而不將其保存到資料庫："]}]
2a:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Models\\User;\n\n$user = User::factory()->make();\n"}]}]
2b:["$","p",null,{"children":["你可以使用 ",["$","code",null,{"children":"count"}]," 方法建立許多模型的集合："]}]
2c:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$users = User::factory()->count(3)->make();\n"}]}]
2d:["$","a",null,{"name":"applying-states"}]
2e:["$","h4",null,{"id":"應用狀態-applying-states","children":["$","a",null,{"href":"#應用狀態-applying-states","children":"應用狀態 (Applying States)"}]}]
2f:["$","p",null,{"children":["你也可以將任何 ",["$","a",null,{"href":"#factory-states","children":"狀態"}]," 應用於模型。如果你想對模型應用多個狀態轉換，你可以簡單地直接呼叫狀態轉換方法："]}]
30:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$users = User::factory()->count(5)->suspended()->make();\n"}]}]
31:["$","a",null,{"name":"overriding-attributes"}]
32:["$","h4",null,{"id":"覆寫屬性-overriding-attributes","children":["$","a",null,{"href":"#覆寫屬性-overriding-attributes","children":"覆寫屬性 (Overriding Attributes)"}]}]
33:["$","p",null,{"children":["如果你想覆寫模型的某些預設值，你可以將值陣列傳遞給 ",["$","code",null,{"children":"make"}]," 方法。只有指定的屬性將被替換，而其餘屬性將保持工廠指定的預設值："]}]
34:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$user = User::factory()->make([\n    'name' => 'Abigail Otwell',\n]);\n"}]}]
35:["$","p",null,{"children":["或者，可以在工廠實例上直接呼叫 ",["$","code",null,{"children":"state"}]," 方法來執行內聯狀態轉換："]}]
36:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$user = User::factory()->state([\n    'name' => 'Abigail Otwell',\n])->make();\n"}]}]
37:["$","blockquote",null,{"children":["\n",["$","p",null,{"children":["[!NOTE]\n使用工廠建立模型時，",["$","a",null,{"href":"/docs/eloquent#mass-assignment","children":"大量分配保護"}]," 會自動禁用。"]}],"\n"]}]
38:["$","a",null,{"name":"persisting-models"}]
39:["$","h3",null,{"id":"保存模型-persisting-models","children":["$","a",null,{"href":"#保存模型-persisting-models","children":"保存模型 (Persisting Models)"}]}]
3a:["$","p",null,{"children":[["$","code",null,{"children":"create"}]," 方法實例化模型實例並使用 Eloquent 的 ",["$","code",null,{"children":"save"}]," 方法將其保存到資料庫："]}]
3b:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Models\\User;\n\n// Create a single App\\Models\\User instance...\n$user = User::factory()->create();\n\n// Create three App\\Models\\User instances...\n$users = User::factory()->count(3)->create();\n"}]}]
3c:["$","p",null,{"children":["你可以通過將屬性陣列傳遞給 ",["$","code",null,{"children":"create"}]," 方法來覆寫工廠的預設模型屬性："]}]
3d:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$user = User::factory()->create([\n    'name' => 'Abigail',\n]);\n"}]}]
3e:["$","a",null,{"name":"sequences"}]
3f:["$","h3",null,{"id":"序列-sequences","children":["$","a",null,{"href":"#序列-sequences","children":"序列 (Sequences)"}]}]
40:["$","p",null,{"children":["有時你可能希望為每個建立的模型交替特定模型屬性的值。你可以通過將狀態轉換定義為序列來完成此操作。例如，你可能希望為每個建立的使用者交替 ",["$","code",null,{"children":"admin"}]," 列的值在 ",["$","code",null,{"children":"Y"}]," 和 ",["$","code",null,{"children":"N"}]," 之間："]}]
41:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Models\\User;\nuse Illuminate\\Database\\Eloquent\\Factories\\Sequence;\n\n$users = User::factory()\n    ->count(10)\n    ->state(new Sequence(\n        ['admin' => 'Y'],\n        ['admin' => 'N'],\n    ))\n    ->create();\n"}]}]
42:["$","p",null,{"children":["在此示例中，五個使用者將使用 ",["$","code",null,{"children":"Y"}]," 的 ",["$","code",null,{"children":"admin"}]," 值建立，五個使用者將使用 ",["$","code",null,{"children":"N"}]," 的 ",["$","code",null,{"children":"admin"}]," 值建立。"]}]
43:["$","p",null,{"children":"如果需要，你可以將閉包包含為序列值。每次序列需要新值時，閉包將被調用："}]
44:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use Illuminate\\Database\\Eloquent\\Factories\\Sequence;\n\n$users = User::factory()\n    ->count(10)\n    ->state(new Sequence(\n        fn (Sequence $sequence) => ['role' => UserRoles::all()->random()],\n    ))\n    ->create();\n"}]}]
45:["$","p",null,{"children":["在序列閉包中，你可以訪問注入到閉包中的序列實例上的 ",["$","code",null,{"children":"$$index"}]," 屬性。",["$","code",null,{"children":"$$index"}]," 屬性包含迄今為止通過序列發生的反覆運算次數："]}]
46:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$users = User::factory()\n    ->count(10)\n    ->state(new Sequence(\n        fn (Sequence $sequence) => ['name' => 'Name '.$sequence->index],\n    ))\n    ->create();\n"}]}]
47:["$","p",null,{"children":["為了方便起見，序列也可以使用 ",["$","code",null,{"children":"sequence"}]," 方法應用，該方法在內部只是調用 ",["$","code",null,{"children":"state"}]," 方法。",["$","code",null,{"children":"sequence"}]," 方法接受閉包或序列屬性陣列："]}]
48:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$users = User::factory()\n    ->count(2)\n    ->sequence(\n        ['name' => 'First User'],\n        ['name' => 'Second User'],\n    )\n    ->create();\n"}]}]
49:["$","a",null,{"name":"factory-relationships"}]
4a:["$","h2",null,{"id":"工廠關聯-factory-relationships","children":["$","a",null,{"href":"#工廠關聯-factory-relationships","children":"工廠關聯 (Factory Relationships)"}]}]
4b:["$","a",null,{"name":"has-many-relationships"}]
4c:["$","h3",null,{"id":"一對多關聯-has-many-relationships","children":["$","a",null,{"href":"#一對多關聯-has-many-relationships","children":"一對多關聯 (Has Many Relationships)"}]}]
4d:["$","p",null,{"children":["接下來，讓我們探索使用 Laravel 流暢工廠方法建立 Eloquent 模型關聯。首先，讓我們假設我們的應用有一個 ",["$","code",null,{"children":"App\\Models\\User"}]," 模型和一個 ",["$","code",null,{"children":"App\\Models\\Post"}]," 模型。同時，假設 ",["$","code",null,{"children":"User"}]," 模型定義與 ",["$","code",null,{"children":"Post"}]," 的 ",["$","code",null,{"children":"hasMany"}]," 關聯。我們可以建立一個有三個帖子的使用者，使用 Laravel 工廠提供的 ",["$","code",null,{"children":"has"}]," 方法。",["$","code",null,{"children":"has"}]," 方法接受一個工廠實例："]}]
4e:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Models\\Post;\nuse App\\Models\\User;\n\n$user = User::factory()\n    ->has(Post::factory()->count(3))\n    ->create();\n"}]}]
4f:["$","p",null,{"children":["按慣例，將 ",["$","code",null,{"children":"Post"}]," 模型傳遞給 ",["$","code",null,{"children":"has"}]," 方法時，Laravel 將假設 ",["$","code",null,{"children":"User"}]," 模型必須有一個定義關聯的 ",["$","code",null,{"children":"posts"}]," 方法。如有必要，你可以顯式指定要操作的關聯的名稱："]}]
50:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$user = User::factory()\n    ->has(Post::factory()->count(3), 'posts')\n    ->create();\n"}]}]
51:["$","p",null,{"children":"當然，你可以對相關模型執行狀態操作。另外，如果你的狀態變更需要訪問父模型，你可以傳遞基於閉包的狀態轉換："}]
52:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$user = User::factory()\n    ->has(\n        Post::factory()\n            ->count(3)\n            ->state(function (array $attributes, User $user) {\n                return ['user_type' => $user->type];\n            })\n        )\n    ->create();\n"}]}]
53:["$","a",null,{"name":"has-many-relationships-using-magic-methods"}]
54:["$","h4",null,{"id":"使用魔術方法-using-magic-methods","children":["$","a",null,{"href":"#使用魔術方法-using-magic-methods","children":"使用魔術方法 (Using Magic Methods)"}]}]
55:["$","p",null,{"children":["為了方便起見，你可以使用 Laravel 的魔術工廠關聯方法來建立關聯。例如，下面的示例將使用慣例來確定相關模型應通過 ",["$","code",null,{"children":"User"}]," 模型上的 ",["$","code",null,{"children":"posts"}]," 關聯方法建立："]}]
56:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$user = User::factory()\n    ->hasPosts(3)\n    ->create();\n"}]}]
57:["$","p",null,{"children":"使用魔術方法建立工廠關聯時，你可以傳遞一個屬性陣列來覆寫相關模型："}]
58:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$user = User::factory()\n    ->hasPosts(3, [\n        'published' => false,\n    ])\n    ->create();\n"}]}]
59:["$","p",null,{"children":"如果你的狀態變更需要訪問父模型，你可以提供基於閉包的狀態轉換："}]
5a:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$user = User::factory()\n    ->hasPosts(3, function (array $attributes, User $user) {\n        return ['user_type' => $user->type];\n    })\n    ->create();\n"}]}]
5b:["$","a",null,{"name":"belongs-to-relationships"}]
5c:["$","h3",null,{"id":"從屬關聯-belongs-to-relationships","children":["$","a",null,{"href":"#從屬關聯-belongs-to-relationships","children":"從屬關聯 (Belongs To Relationships)"}]}]
5d:["$","p",null,{"children":["現在我們已經探索了如何使用工廠建立「一對多」關聯，讓我們探索關聯的反面。",["$","code",null,{"children":"for"}]," 方法可用於定義工廠建立的模型所屬的父模型。例如，我們可以建立三個屬於單個使用者的 ",["$","code",null,{"children":"App\\Models\\Post"}]," 模型實例："]}]
5e:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Models\\Post;\nuse App\\Models\\User;\n\n$posts = Post::factory()\n    ->count(3)\n    ->for(User::factory()->state([\n        'name' => 'Jessica Archer',\n    ]))\n    ->create();\n"}]}]
5f:["$","p",null,{"children":["如果你已有應與正在建立的模型相關聯的父模型實例，你可以將模型實例傳遞給 ",["$","code",null,{"children":"for"}]," 方法："]}]
60:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$user = User::factory()->create();\n\n$posts = Post::factory()\n    ->count(3)\n    ->for($user)\n    ->create();\n"}]}]
61:["$","a",null,{"name":"belongs-to-relationships-using-magic-methods"}]
62:["$","h4",null,{"id":"使用魔術方法-using-magic-methods-1","children":["$","a",null,{"href":"#使用魔術方法-using-magic-methods-1","children":"使用魔術方法 (Using Magic Methods)"}]}]
63:["$","p",null,{"children":["為了方便起見，你可以使用 Laravel 的魔術工廠關聯方法來定義「從屬」關聯。例如，下面的示例將使用慣例來確定三個帖子應屬於 ",["$","code",null,{"children":"Post"}]," 模型上的 ",["$","code",null,{"children":"user"}]," 關聯："]}]
64:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$posts = Post::factory()\n    ->count(3)\n    ->forUser([\n        'name' => 'Jessica Archer',\n    ])\n    ->create();\n"}]}]
65:["$","a",null,{"name":"many-to-many-relationships"}]
66:["$","h3",null,{"id":"多對多關聯-many-to-many-relationships","children":["$","a",null,{"href":"#多對多關聯-many-to-many-relationships","children":"多對多關聯 (Many to Many Relationships)"}]}]
67:["$","p",null,{"children":["與 ",["$","a",null,{"href":"#has-many-relationships","children":"一對多關聯"}]," 類似，「多對多」關聯可以使用 ",["$","code",null,{"children":"has"}]," 方法建立："]}]
68:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Models\\Role;\nuse App\\Models\\User;\n\n$user = User::factory()\n    ->has(Role::factory()->count(3))\n    ->create();\n"}]}]
69:["$","a",null,{"name":"pivot-table-attributes"}]
6a:["$","h4",null,{"id":"中樞表屬性-pivot-table-attributes","children":["$","a",null,{"href":"#中樞表屬性-pivot-table-attributes","children":"中樞表屬性 (Pivot Table Attributes)"}]}]
6b:["$","p",null,{"children":["如果需要定義應在連接模型的中樞/中間表上設定的屬性，你可以使用 ",["$","code",null,{"children":"hasAttached"}]," 方法。此方法接受中樞表屬性名稱和值的陣列作為其第二個引數："]}]
6c:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Models\\Role;\nuse App\\Models\\User;\n\n$user = User::factory()\n    ->hasAttached(\n        Role::factory()->count(3),\n        ['active' => true]\n    )\n    ->create();\n"}]}]
6d:["$","p",null,{"children":"如果你的狀態變更需要訪問相關模型，你可以提供基於閉包的狀態轉換："}]
6e:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$user = User::factory()\n    ->hasAttached(\n        Role::factory()\n            ->count(3)\n            ->state(function (array $attributes, User $user) {\n                return ['name' => $user->name.' Role'];\n            }),\n        ['active' => true]\n    )\n    ->create();\n"}]}]
6f:["$","p",null,{"children":["如果你已有想要附加到正在建立的模型的模型實例，你可以將模型實例傳遞給 ",["$","code",null,{"children":"hasAttached"}]," 方法。在此示例中，同三個角色將附加到所有三個使用者："]}]
70:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$roles = Role::factory()->count(3)->create();\n\n$users = User::factory()\n    ->count(3)\n    ->hasAttached($roles, ['active' => true])\n    ->create();\n"}]}]
71:["$","a",null,{"name":"many-to-many-relationships-using-magic-methods"}]
72:["$","h4",null,{"id":"使用魔術方法-using-magic-methods-2","children":["$","a",null,{"href":"#使用魔術方法-using-magic-methods-2","children":"使用魔術方法 (Using Magic Methods)"}]}]
73:["$","p",null,{"children":["為了方便起見，你可以使用 Laravel 的魔術工廠關聯方法來定義多對多關聯。例如，下面的示例將使用慣例來確定相關模型應通過 ",["$","code",null,{"children":"User"}]," 模型上的 ",["$","code",null,{"children":"roles"}]," 關聯方法建立："]}]
74:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$user = User::factory()\n    ->hasRoles(1, [\n        'name' => 'Editor'\n    ])\n    ->create();\n"}]}]
75:["$","a",null,{"name":"polymorphic-relationships"}]
76:["$","h3",null,{"id":"多態關聯-polymorphic-relationships","children":["$","a",null,{"href":"#多態關聯-polymorphic-relationships","children":"多態關聯 (Polymorphic Relationships)"}]}]
77:["$","p",null,{"children":[["$","a",null,{"href":"/docs/eloquent-relationships#polymorphic-relationships","children":"多態關聯"}]," 也可以使用工廠建立。多態「形態多」關聯的建立方式與典型的「一對多」關聯相同。例如，如果 ",["$","code",null,{"children":"App\\Models\\Post"}]," 模型與 ",["$","code",null,{"children":"App\\Models\\Comment"}]," 模型有 ",["$","code",null,{"children":"morphMany"}]," 關聯："]}]
78:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Models\\Post;\n\n$post = Post::factory()->hasComments(3)->create();\n"}]}]
79:["$","a",null,{"name":"morph-to-relationships"}]
7a:["$","h4",null,{"id":"morph-to-關聯-morph-to-relationships","children":["$","a",null,{"href":"#morph-to-關聯-morph-to-relationships","children":"Morph To 關聯 (Morph To Relationships)"}]}]
7b:["$","p",null,{"children":["無法使用魔術方法建立 ",["$","code",null,{"children":"morphTo"}]," 關聯。相反，必須直接使用 ",["$","code",null,{"children":"for"}]," 方法並明確提供關聯的名稱。例如，假設 ",["$","code",null,{"children":"Comment"}]," 模型有一個定義 ",["$","code",null,{"children":"morphTo"}]," 關聯的 ",["$","code",null,{"children":"commentable"}]," 方法。在這種情況下，我們可以通過直接使用 ",["$","code",null,{"children":"for"}]," 方法建立屬於單個帖子的三個評論："]}]
7c:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$comments = Comment::factory()->count(3)->for(\n    Post::factory(), 'commentable'\n)->create();\n"}]}]
7d:["$","a",null,{"name":"polymorphic-many-to-many-relationships"}]
7e:["$","h4",null,{"id":"多態多對多關聯-polymorphic-many-to-many-relationships","children":["$","a",null,{"href":"#多態多對多關聯-polymorphic-many-to-many-relationships","children":"多態多對多關聯 (Polymorphic Many to Many Relationships)"}]}]
7f:["$","p",null,{"children":["多態「多對多」(",["$","code",null,{"children":"morphToMany"}]," / ",["$","code",null,{"children":"morphedByMany"}],") 關聯可以像非多態「多對多」關聯一樣建立："]}]
80:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Models\\Tag;\nuse App\\Models\\Video;\n\n$video = Video::factory()\n    ->hasAttached(\n        Tag::factory()->count(3),\n        ['public' => true]\n    )\n    ->create();\n"}]}]
81:["$","p",null,{"children":["當然，魔術 ",["$","code",null,{"children":"has"}]," 方法也可用於建立多態「多對多」關聯："]}]
82:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$video = Video::factory()\n    ->hasTags(3, ['public' => true])\n    ->create();\n"}]}]
83:["$","a",null,{"name":"defining-relationships-within-factories"}]
84:["$","h3",null,{"id":"在工廠中定義關聯-defining-relationships-within-factories","children":["$","a",null,{"href":"#在工廠中定義關聯-defining-relationships-within-factories","children":"在工廠中定義關聯 (Defining Relationships Within Factories)"}]}]
85:["$","p",null,{"children":["要在模型工廠中定義關聯，你通常會將新工廠實例分配給關聯的外鍵。這通常為「反向」關聯（如 ",["$","code",null,{"children":"belongsTo"}]," 和 ",["$","code",null,{"children":"morphTo"}]," 關聯）完成。例如，如果你想在建立帖子時建立新使用者，你可以執行以下操作："]}]
86:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Models\\User;\n\n/**\n * Define the model's default state.\n *\n * @return array<string, mixed>\n */\npublic function definition(): array\n{\n    return [\n        'user_id' => User::factory(),\n        'title' => fake()->title(),\n        'content' => fake()->paragraph(),\n    ];\n}\n"}]}]
87:["$","p",null,{"children":"如果關聯的列取決於定義它的工廠，你可以將閉包分配給屬性。閉包將接收工廠的評估屬性陣列："}]
88:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"/**\n * Define the model's default state.\n *\n * @return array<string, mixed>\n */\npublic function definition(): array\n{\n    return [\n        'user_id' => User::factory(),\n        'user_type' => function (array $attributes) {\n            return User::find($attributes['user_id'])->type;\n        },\n        'title' => fake()->title(),\n        'content' => fake()->paragraph(),\n    ];\n}\n"}]}]
89:["$","a",null,{"name":"recycling-an-existing-model-for-relationships"}]
8a:["$","h3",null,{"id":"為關聯回收現有模型-recycling-an-existing-model-for-relationships","children":["$","a",null,{"href":"#為關聯回收現有模型-recycling-an-existing-model-for-relationships","children":"為關聯回收現有模型 (Recycling an Existing Model for Relationships)"}]}]
8b:["$","p",null,{"children":["如果你有與另一個模型共享常見關聯的模型，你可以使用 ",["$","code",null,{"children":"recycle"}]," 方法來確保工廠建立的所有關聯中回收相關模型的單個實例。"]}]
8c:["$","p",null,{"children":["例如，假設你有 ",["$","code",null,{"children":"Airline"}],"、",["$","code",null,{"children":"Flight"}]," 和 ",["$","code",null,{"children":"Ticket"}]," 模型，其中機票屬於航空公司和航班，航班也屬於航空公司。建立機票時，你可能希望機票和航班都有相同的航空公司，所以你可以將航空公司實例傳遞給 ",["$","code",null,{"children":"recycle"}]," 方法："]}]
8d:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"Ticket::factory()\n    ->recycle(Airline::factory()->create())\n    ->create();\n"}]}]
8e:["$","p",null,{"children":["你可能會發現 ",["$","code",null,{"children":"recycle"}]," 方法特別有用，如果你有屬於常見使用者或團隊的模型。"]}]
8f:["$","p",null,{"children":[["$","code",null,{"children":"recycle"}]," 方法也接受現有模型的集合。當集合提供給 ",["$","code",null,{"children":"recycle"}]," 方法時，當工廠需要該類型的模型時，將從集合中選擇隨機模型："]}]
90:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"Ticket::factory()\n    ->recycle($airlines)\n    ->create();\n"}]}]
91:["$","$L92",null,{"children":["$","$93",null,{"name":"Next.MetadataOutlet","children":"$@94"}]}]
94:null
