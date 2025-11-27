1:"$Sreact.fragment"
14c:I[97367,["/_next/static/chunks/ff1a16fafef87110.js","/_next/static/chunks/247eb132b7f7b574.js"],"OutletBoundary"]
14d:"$Sreact.suspense"
0:{"buildId":"RqgZpdjvmRmsNEZZwi_AJ","rsc":["$","$1","c",{"children":[["$","div",null,{"className":"container mx-auto py-10","children":["$","div",null,{"className":"mx-auto max-w-3xl","children":[["$","div",null,{"className":"mb-8","children":[["$","h1",null,{"className":"scroll-m-20 text-4xl font-extrabold tracking-tight lg:text-5xl","children":"Mail"}],["$","p",null,{"className":"text-xl text-muted-foreground mt-2","children":"Laravel 提供簡潔的 API 來透過各種郵件服務傳送電子郵件"}]]}],["$","article",null,{"className":"prose prose-slate dark:prose-invert max-w-none","children":[["$","h1",null,{"id":"mail","children":["$","a",null,{"href":"#mail","children":"Mail"}]}],"\n",["$","ul",null,{"children":["\n",["$","li",null,{"children":[["$","a",null,{"href":"#introduction","children":"Introduction"}],"\n",["$","ul",null,{"children":["\n",["$","li",null,{"children":["$","a",null,{"href":"#configuration","children":"Configuration"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#driver-prerequisites","children":"Driver Prerequisites"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#failover-configuration","children":"Failover Configuration"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#round-robin-configuration","children":"Round Robin Configuration"}]}],"\n"]}],"\n"]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#generating-mailables","children":"Generating Mailables"}]}],"\n",["$","li",null,{"children":[["$","a",null,{"href":"#writing-mailables","children":"Writing Mailables"}],"\n",["$","ul",null,{"children":["\n",["$","li",null,{"children":["$","a",null,{"href":"#configuring-the-sender","children":"Configuring the Sender"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#configuring-the-view","children":"Configuring the View"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#view-data","children":"View Data"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#attachments","children":"Attachments"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#inline-attachments","children":"Inline Attachments"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#attachable-objects","children":"Attachable Objects"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#headers","children":"Headers"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#tags-and-metadata","children":"Tags and Metadata"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#customizing-the-symfony-message","children":"Customizing the Symfony Message"}]}],"\n"]}],"\n"]}],"\n",["$","li",null,{"children":[["$","a",null,{"href":"#markdown-mailables","children":"Markdown Mailables"}],"\n",["$","ul",null,{"children":["\n",["$","li",null,{"children":["$","a",null,{"href":"#generating-markdown-mailables","children":"Generating Markdown Mailables"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#writing-markdown-messages","children":"Writing Markdown Messages"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#customizing-the-components","children":"Customizing the Components"}]}],"\n"]}],"\n"]}],"\n",["$","li",null,{"children":[["$","a",null,{"href":"#sending-mail","children":"Sending Mail"}],"\n",["$","ul",null,{"children":["\n",["$","li",null,{"children":["$","a",null,{"href":"#queueing-mail","children":"Queueing Mail"}]}],"\n"]}],"\n"]}],"\n",["$","li",null,{"children":[["$","a",null,{"href":"#rendering-mailables","children":"Rendering Mailables"}],"\n",["$","ul",null,{"children":["\n",["$","li",null,{"children":["$","a",null,{"href":"#previewing-mailables-in-the-browser","children":"Previewing Mailables in the Browser"}]}],"\n"]}],"\n"]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#localizing-mailables","children":"Localizing Mailables"}]}],"\n",["$","li",null,{"children":[["$","a",null,{"href":"#testing-mailables","children":"Testing"}],"\n",["$","ul",null,{"children":["\n",["$","li",null,{"children":["$","a",null,{"href":"#testing-mailable-content","children":"Testing Mailable Content"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#testing-mailable-sending","children":"Testing Mailable Sending"}]}],"\n"]}],"\n"]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#mail-and-local-development","children":"Mail and Local Development"}]}],"\n",["$","li",null,{"children":["$","a",null,{"href":"#events","children":"Events"}]}],"\n",["$","li",null,{"children":[["$","a",null,{"href":"#custom-transports","children":"Custom Transports"}],"\n",["$","ul",null,{"children":["\n",["$","li",null,{"children":["$","a",null,{"href":"#additional-symfony-transports","children":"Additional Symfony Transports"}]}],"\n"]}],"\n"]}],"\n"]}],"\n",["$","a",null,{"name":"introduction"}],"\n",["$","h2",null,{"id":"簡介","children":["$","a",null,{"href":"#簡介","children":"簡介"}]}],"\n",["$","p",null,{"children":["Sending email doesn't have to be complicated. Laravel provides a clean, simple email API powered by the popular ","$L2"," component. Laravel and Symfony Mailer provide drivers for sending email via SMTP, Mailgun, Postmark, Resend, Amazon SES, and ","$L3",", allowing you to quickly get started sending mail through a local or cloud-based service of your choice."]}],"\n","$L4","\n","$L5","\n","$L6","\n","$L7","\n","$L8","\n","$L9","\n","$La","\n","$Lb","\n","$Lc","\n","$Ld","\n","$Le","\n","$Lf","\n","$L10","\n","$L11","\n","$L12","\n","$L13","\n","$L14","\n","$L15","\n","$L16","\n","$L17","\n","$L18","\n","$L19","\n","$L1a","\n","$L1b","\n","$L1c","\n","$L1d","\n","$L1e","\n","$L1f","\n","$L20","\n","$L21","\n","$L22","\n","$L23","\n","$L24","\n","$L25","\n","$L26","\n","$L27","\n","$L28","\n","$L29","\n","$L2a","\n","$L2b","\n","$L2c","\n","$L2d","\n","$L2e","\n","$L2f","\n","$L30","\n","$L31","\n","$L32","\n","$L33","\n","$L34","\n","$L35","\n","$L36","\n","$L37","\n","$L38","\n","$L39","\n","$L3a","\n","$L3b","\n","$L3c","\n","$L3d","\n","$L3e","\n","$L3f","\n","$L40","\n","$L41","\n","$L42","\n","$L43","\n","$L44","\n","$L45","\n","$L46","\n","$L47","\n","$L48","\n","$L49","\n","$L4a","\n","$L4b","\n","$L4c","\n","$L4d","\n","$L4e","\n","$L4f","\n","$L50","\n","$L51","\n","$L52","\n","$L53","\n","$L54","\n","$L55","\n","$L56","\n","$L57","\n","$L58","\n","$L59","\n","$L5a","\n","$L5b","\n","$L5c","\n","$L5d","\n","$L5e","\n","$L5f","\n","$L60","\n","$L61","\n","$L62","\n","$L63","\n","$L64","\n","$L65","\n","$L66","\n","$L67","\n","$L68","\n","$L69","\n","$L6a","\n","$L6b","\n","$L6c","\n","$L6d","\n","$L6e","\n","$L6f","\n","$L70","\n","$L71","\n","$L72","\n","$L73","\n","$L74","\n","$L75","\n","$L76","\n","$L77","\n","$L78","\n","$L79","\n","$L7a","\n","$L7b","\n","$L7c","\n","$L7d","\n","$L7e","\n","$L7f","\n","$L80","\n","$L81","\n","$L82","\n","$L83","\n","$L84","\n","$L85","\n","$L86","\n","$L87","\n","$L88","\n","$L89","\n","$L8a","\n","$L8b","\n","$L8c","\n","$L8d","\n","$L8e","\n","$L8f","\n","$L90","\n","$L91","\n","$L92","\n","$L93","\n","$L94","\n","$L95","\n","$L96","\n","$L97","\n","$L98","\n","$L99","\n","$L9a","\n","$L9b","\n","$L9c","\n","$L9d","\n","$L9e","\n","$L9f","\n","$La0","\n","$La1","\n","$La2","\n","$La3","\n","$La4","\n","$La5","\n","$La6","\n","$La7","\n","$La8","\n","$La9","\n","$Laa","\n","$Lab","\n","$Lac","\n","$Lad","\n","$Lae","\n","$Laf","\n","$Lb0","\n","$Lb1","\n","$Lb2","\n","$Lb3","\n","$Lb4","\n","$Lb5","\n","$Lb6","\n","$Lb7","\n","$Lb8","\n","$Lb9","\n","$Lba","\n","$Lbb","\n","$Lbc","\n","$Lbd","\n","$Lbe","\n","$Lbf","\n","$Lc0","\n","$Lc1","\n","$Lc2","\n","$Lc3","\n","$Lc4","\n","$Lc5","\n","$Lc6","\n","$Lc7","\n","$Lc8","\n","$Lc9","\n","$Lca","\n","$Lcb","\n","$Lcc","\n","$Lcd","\n","$Lce","\n","$Lcf","\n","$Ld0","\n","$Ld1","\n","$Ld2","\n","$Ld3","\n","$Ld4","\n","$Ld5","\n","$Ld6","\n","$Ld7","\n","$Ld8","\n","$Ld9","\n","$Lda","\n","$Ldb","\n","$Ldc","\n","$Ldd","\n","$Lde","\n","$Ldf","\n","$Le0","\n","$Le1","\n","$Le2","\n","$Le3","\n","$Le4","\n","$Le5","\n","$Le6","\n","$Le7","\n","$Le8","\n","$Le9","\n","$Lea","\n","$Leb","\n","$Lec","\n","$Led","\n","$Lee","\n","$Lef","\n","$Lf0","\n","$Lf1","\n","$Lf2","\n","$Lf3","\n","$Lf4","\n","$Lf5","\n","$Lf6","\n","$Lf7","\n","$Lf8","\n","$Lf9","\n","$Lfa","\n","$Lfb","\n","$Lfc","\n","$Lfd","\n","$Lfe","\n","$Lff","\n","$L100","\n","$L101","\n","$L102","\n","$L103","\n","$L104","\n","$L105","\n","$L106","\n","$L107","\n","$L108","\n","$L109","\n","$L10a","\n","$L10b","\n","$L10c","\n","$L10d","\n","$L10e","\n","$L10f","\n","$L110","\n","$L111","\n","$L112","\n","$L113","\n","$L114","\n","$L115","\n","$L116","\n","$L117","\n","$L118","\n","$L119","\n","$L11a","\n","$L11b","\n","$L11c","\n","$L11d","\n","$L11e","\n","$L11f","\n","$L120","\n","$L121","\n","$L122","\n","$L123","\n","$L124","\n","$L125","\n","$L126","\n","$L127","\n","$L128","\n","$L129","\n","$L12a","\n","$L12b","\n","$L12c","\n","$L12d","\n","$L12e","\n","$L12f","\n","$L130","\n","$L131","\n","$L132","\n","$L133","\n","$L134","\n","$L135","\n","$L136","\n","$L137","\n","$L138","\n","$L139","\n","$L13a","\n","$L13b","\n","$L13c","\n","$L13d","\n","$L13e","\n","$L13f","\n","$L140","\n","$L141","\n","$L142","\n","$L143","\n","$L144","\n","$L145","\n","$L146"]}]]}]}],null,"$L147"]}],"loading":null,"isPartial":false}
2:["$","a",null,{"href":"https://symfony.com/doc/current/mailer.html","children":"Symfony Mailer"}]
3:["$","code",null,{"children":"sendmail"}]
4:["$","a",null,{"name":"configuration"}]
5:["$","h3",null,{"id":"設定","children":["$","a",null,{"href":"#設定","children":"設定"}]}]
6:["$","p",null,{"children":["Laravel's email services may be configured via your application's ",["$","code",null,{"children":"config/mail.php"}]," configuration file. Each mailer configured within this file may have its own unique configuration and even its own unique \"transport\", allowing your application to use different email services to send certain email messages. For example, your application might use Postmark to send transactional emails while using Amazon SES to send bulk emails."]}]
7:["$","p",null,{"children":["Within your ",["$","code",null,{"children":"mail"}]," configuration file, you will find a ",["$","code",null,{"children":"mailers"}]," configuration array. This array contains a sample configuration entry for each of the major mail drivers / transports supported by Laravel, while the ",["$","code",null,{"children":"default"}]," configuration value determines which mailer will be used by default when your application needs to send an email message."]}]
8:["$","a",null,{"name":"driver-prerequisites"}]
9:["$","h3",null,{"id":"driver--transport-prerequisites","children":["$","a",null,{"href":"#driver--transport-prerequisites","children":"Driver / Transport Prerequisites"}]}]
a:["$","p",null,{"children":"The API based drivers such as Mailgun, Postmark, and Resend are often simpler and faster than sending mail via SMTP servers. Whenever possible, we recommend that you use one of these drivers."}]
b:["$","a",null,{"name":"mailgun-driver"}]
c:["$","h4",null,{"id":"mailgun-driver","children":["$","a",null,{"href":"#mailgun-driver","children":"Mailgun Driver"}]}]
d:["$","p",null,{"children":"To use the Mailgun driver, install Symfony's Mailgun Mailer transport via Composer:"}]
e:["$","pre",null,{"children":["$","code",null,{"className":"language-shell","children":"composer require symfony/mailgun-mailer symfony/http-client\n"}]}]
f:["$","p",null,{"children":["Next, you will need to make two changes in your application's ",["$","code",null,{"children":"config/mail.php"}]," configuration file. First, set your default mailer to ",["$","code",null,{"children":"mailgun"}],":"]}]
10:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"'default' => env('MAIL_MAILER', 'mailgun'),\n"}]}]
11:["$","p",null,{"children":["Second, add the following configuration array to your array of ",["$","code",null,{"children":"mailers"}],":"]}]
12:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"'mailgun' => [\n    'transport' => 'mailgun',\n    // 'client' => [\n    //     'timeout' => 5,\n    // ],\n],\n"}]}]
13:["$","p",null,{"children":["After configuring your application's default mailer, add the following options to your ",["$","code",null,{"children":"config/services.php"}]," configuration file:"]}]
14:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"'mailgun' => [\n    'domain' => env('MAILGUN_DOMAIN'),\n    'secret' => env('MAILGUN_SECRET'),\n    'endpoint' => env('MAILGUN_ENDPOINT', 'api.mailgun.net'),\n    'scheme' => 'https',\n],\n"}]}]
15:["$","p",null,{"children":["If you are not using the United States ",["$","a",null,{"href":"https://documentation.mailgun.com/docs/mailgun/api-reference/#mailgun-regions","children":"Mailgun region"}],", you may define your region's endpoint in the ",["$","code",null,{"children":"services"}]," configuration file:"]}]
16:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"'mailgun' => [\n    'domain' => env('MAILGUN_DOMAIN'),\n    'secret' => env('MAILGUN_SECRET'),\n    'endpoint' => env('MAILGUN_ENDPOINT', 'api.eu.mailgun.net'),\n    'scheme' => 'https',\n],\n"}]}]
17:["$","a",null,{"name":"postmark-driver"}]
18:["$","h4",null,{"id":"postmark-driver","children":["$","a",null,{"href":"#postmark-driver","children":"Postmark Driver"}]}]
19:["$","p",null,{"children":["To use the ",["$","a",null,{"href":"https://postmarkapp.com/","children":"Postmark"}]," driver, install Symfony's Postmark Mailer transport via Composer:"]}]
1a:["$","pre",null,{"children":["$","code",null,{"className":"language-shell","children":"composer require symfony/postmark-mailer symfony/http-client\n"}]}]
1b:["$","p",null,{"children":["Next, set the ",["$","code",null,{"children":"default"}]," option in your application's ",["$","code",null,{"children":"config/mail.php"}]," configuration file to ",["$","code",null,{"children":"postmark"}],". After configuring your application's default mailer, ensure that your ",["$","code",null,{"children":"config/services.php"}]," configuration file contains the following options:"]}]
1c:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"'postmark' => [\n    'key' => env('POSTMARK_API_KEY'),\n],\n"}]}]
1d:["$","p",null,{"children":["If you would like to specify the Postmark message stream that should be used by a given mailer, you may add the ",["$","code",null,{"children":"message_stream_id"}]," configuration option to the mailer's configuration array. This configuration array can be found in your application's ",["$","code",null,{"children":"config/mail.php"}]," configuration file:"]}]
1e:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"'postmark' => [\n    'transport' => 'postmark',\n    'message_stream_id' => env('POSTMARK_MESSAGE_STREAM_ID'),\n    // 'client' => [\n    //     'timeout' => 5,\n    // ],\n],\n"}]}]
1f:["$","p",null,{"children":"This way you are also able to set up multiple Postmark mailers with different message streams."}]
20:["$","a",null,{"name":"resend-driver"}]
21:["$","h4",null,{"id":"resend-driver","children":["$","a",null,{"href":"#resend-driver","children":"Resend Driver"}]}]
22:["$","p",null,{"children":["To use the ",["$","a",null,{"href":"https://resend.com/","children":"Resend"}]," driver, install Resend's PHP SDK via Composer:"]}]
23:["$","pre",null,{"children":["$","code",null,{"className":"language-shell","children":"composer require resend/resend-php\n"}]}]
24:["$","p",null,{"children":["Next, set the ",["$","code",null,{"children":"default"}]," option in your application's ",["$","code",null,{"children":"config/mail.php"}]," configuration file to ",["$","code",null,{"children":"resend"}],". After configuring your application's default mailer, ensure that your ",["$","code",null,{"children":"config/services.php"}]," configuration file contains the following options:"]}]
25:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"'resend' => [\n    'key' => env('RESEND_API_KEY'),\n],\n"}]}]
26:["$","a",null,{"name":"ses-driver"}]
27:["$","h4",null,{"id":"ses-driver","children":["$","a",null,{"href":"#ses-driver","children":"SES Driver"}]}]
28:["$","p",null,{"children":"To use the Amazon SES driver you must first install the Amazon AWS SDK for PHP. You may install this library via the Composer package manager:"}]
29:["$","pre",null,{"children":["$","code",null,{"className":"language-shell","children":"composer require aws/aws-sdk-php\n"}]}]
2a:["$","p",null,{"children":["Next, set the ",["$","code",null,{"children":"default"}]," option in your ",["$","code",null,{"children":"config/mail.php"}]," configuration file to ",["$","code",null,{"children":"ses"}]," and verify that your ",["$","code",null,{"children":"config/services.php"}]," configuration file contains the following options:"]}]
2b:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"'ses' => [\n    'key' => env('AWS_ACCESS_KEY_ID'),\n    'secret' => env('AWS_SECRET_ACCESS_KEY'),\n    'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),\n],\n"}]}]
2c:["$","p",null,{"children":["To utilize AWS ",["$","a",null,{"href":"https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_use-resources.html","children":"temporary credentials"}]," via a session token, you may add a ",["$","code",null,{"children":"token"}]," key to your application's SES configuration:"]}]
2d:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"'ses' => [\n    'key' => env('AWS_ACCESS_KEY_ID'),\n    'secret' => env('AWS_SECRET_ACCESS_KEY'),\n    'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),\n    'token' => env('AWS_SESSION_TOKEN'),\n],\n"}]}]
2e:["$","p",null,{"children":["To interact with SES's ",["$","a",null,{"href":"https://docs.aws.amazon.com/ses/latest/dg/sending-email-subscription-management.html","children":"subscription management features"}],", you may return the ",["$","code",null,{"children":"X-Ses-List-Management-Options"}]," header in the array returned by the ",["$","a",null,{"href":"#headers","children":"headers"}]," method of a mail message:"]}]
2f:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"/**\n * Get the message headers.\n */\npublic function headers(): Headers\n{\n    return new Headers(\n        text: [\n            'X-Ses-List-Management-Options' => 'contactListName=MyContactList;topicName=MyTopic',\n        ],\n    );\n}\n"}]}]
30:["$","p",null,{"children":["If you would like to define ",["$","a",null,{"href":"https://docs.aws.amazon.com/aws-sdk-php/v3/api/api-sesv2-2019-09-27.html#sendemail","children":"additional options"}]," that Laravel should pass to the AWS SDK's ",["$","code",null,{"children":"SendEmail"}]," method when sending an email, you may define an ",["$","code",null,{"children":"options"}]," array within your ",["$","code",null,{"children":"ses"}]," configuration:"]}]
31:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"'ses' => [\n    'key' => env('AWS_ACCESS_KEY_ID'),\n    'secret' => env('AWS_SECRET_ACCESS_KEY'),\n    'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),\n    'options' => [\n        'ConfigurationSetName' => 'MyConfigurationSet',\n        'EmailTags' => [\n            ['Name' => 'foo', 'Value' => 'bar'],\n        ],\n    ],\n],\n"}]}]
32:["$","a",null,{"name":"failover-configuration"}]
33:["$","h3",null,{"id":"failover-configuration","children":["$","a",null,{"href":"#failover-configuration","children":"Failover Configuration"}]}]
34:["$","p",null,{"children":"Sometimes, an external service you have configured to send your application's mail may be down. In these cases, it can be useful to define one or more backup mail delivery configurations that will be used in case your primary delivery driver is down."}]
35:["$","p",null,{"children":["To accomplish this, you should define a mailer within your application's ",["$","code",null,{"children":"mail"}]," configuration file that uses the ",["$","code",null,{"children":"failover"}]," transport. The configuration array for your application's ",["$","code",null,{"children":"failover"}]," mailer should contain an array of ",["$","code",null,{"children":"mailers"}]," that reference the order in which configured mailers should be chosen for delivery:"]}]
36:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"'mailers' => [\n    'failover' => [\n        'transport' => 'failover',\n        'mailers' => [\n            'postmark',\n            'mailgun',\n            'sendmail',\n        ],\n        'retry_after' => 60,\n    ],\n\n    // ...\n],\n"}]}]
37:["$","p",null,{"children":["Once your failover mailer has been defined, you should set this mailer as the default mailer used by your application by specifying its name as the value of the ",["$","code",null,{"children":"default"}]," configuration key within your application's ",["$","code",null,{"children":"mail"}]," configuration file:"]}]
38:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"'default' => env('MAIL_MAILER', 'failover'),\n"}]}]
39:["$","a",null,{"name":"round-robin-configuration"}]
3a:["$","h3",null,{"id":"round-robin-configuration","children":["$","a",null,{"href":"#round-robin-configuration","children":"Round Robin Configuration"}]}]
3b:["$","p",null,{"children":["The ",["$","code",null,{"children":"roundrobin"}]," transport allows you to distribute your mailing workload across multiple mailers. To get started, define a mailer within your application's ",["$","code",null,{"children":"mail"}]," configuration file that uses the ",["$","code",null,{"children":"roundrobin"}]," transport. The configuration array for your application's ",["$","code",null,{"children":"roundrobin"}]," mailer should contain an array of ",["$","code",null,{"children":"mailers"}]," that reference which configured mailers should be used for delivery:"]}]
3c:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"'mailers' => [\n    'roundrobin' => [\n        'transport' => 'roundrobin',\n        'mailers' => [\n            'ses',\n            'postmark',\n        ],\n        'retry_after' => 60,\n    ],\n\n    // ...\n],\n"}]}]
3d:["$","p",null,{"children":["Once your round robin mailer has been defined, you should set this mailer as the default mailer used by your application by specifying its name as the value of the ",["$","code",null,{"children":"default"}]," configuration key within your application's ",["$","code",null,{"children":"mail"}]," configuration file:"]}]
3e:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"'default' => env('MAIL_MAILER', 'roundrobin'),\n"}]}]
3f:["$","p",null,{"children":["The round robin transport selects a random mailer from the list of configured mailers and then switches to the next available mailer for each subsequent email. In contrast to ",["$","code",null,{"children":"failover"}]," transport, which helps to achieve ",["$","em",null,{"children":["$","a",null,{"href":"https://en.wikipedia.org/wiki/High_availability","children":"high availability"}]}],", the ",["$","code",null,{"children":"roundrobin"}]," transport provides ",["$","em",null,{"children":["$","a",null,{"href":"https://en.wikipedia.org/wiki/Load_balancing_(computing)","children":"load balancing"}]}],"."]}]
40:["$","a",null,{"name":"generating-mailables"}]
41:["$","h2",null,{"id":"generating-mailables","children":["$","a",null,{"href":"#generating-mailables","children":"Generating Mailables"}]}]
42:["$","p",null,{"children":["When building Laravel applications, each type of email sent by your application is represented as a \"mailable\" class. These classes are stored in the ",["$","code",null,{"children":"app/Mail"}]," directory. Don't worry if you don't see this directory in your application, since it will be generated for you when you create your first mailable class using the ",["$","code",null,{"children":"make:mail"}]," Artisan command:"]}]
43:["$","pre",null,{"children":["$","code",null,{"className":"language-shell","children":"php artisan make:mail OrderShipped\n"}]}]
44:["$","a",null,{"name":"writing-mailables"}]
45:["$","h2",null,{"id":"writing-mailables","children":["$","a",null,{"href":"#writing-mailables","children":"Writing Mailables"}]}]
46:["$","p",null,{"children":["Once you have generated a mailable class, open it up so we can explore its contents. Mailable class configuration is done in several methods, including the ",["$","code",null,{"children":"envelope"}],", ",["$","code",null,{"children":"content"}],", and ",["$","code",null,{"children":"attachments"}]," methods."]}]
47:["$","p",null,{"children":["The ",["$","code",null,{"children":"envelope"}]," method returns an ",["$","code",null,{"children":"Illuminate\\Mail\\Mailables\\Envelope"}]," object that defines the subject and, sometimes, the recipients of the message. The ",["$","code",null,{"children":"content"}]," method returns an ",["$","code",null,{"children":"Illuminate\\Mail\\Mailables\\Content"}]," object that defines the ",["$","a",null,{"href":"/docs/%7B'12.x'%7D/blade","children":"Blade template"}]," that will be used to generate the message content."]}]
48:["$","a",null,{"name":"configuring-the-sender"}]
49:["$","h3",null,{"id":"configuring-the-sender","children":["$","a",null,{"href":"#configuring-the-sender","children":"Configuring the Sender"}]}]
4a:["$","a",null,{"name":"using-the-envelope"}]
4b:["$","h4",null,{"id":"using-the-envelope","children":["$","a",null,{"href":"#using-the-envelope","children":"Using the Envelope"}]}]
4c:["$","p",null,{"children":"First, let's explore configuring the sender of the email. Or, in other words, who the email is going to be \"from\". There are two ways to configure the sender. First, you may specify the \"from\" address on your message's envelope:"}]
4d:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use Illuminate\\Mail\\Mailables\\Address;\nuse Illuminate\\Mail\\Mailables\\Envelope;\n\n/**\n * Get the message envelope.\n */\npublic function envelope(): Envelope\n{\n    return new Envelope(\n        from: new Address('jeffrey@example.com', 'Jeffrey Way'),\n        subject: 'Order Shipped',\n    );\n}\n"}]}]
4e:["$","p",null,{"children":["If you would like, you may also specify a ",["$","code",null,{"children":"replyTo"}]," address:"]}]
4f:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"return new Envelope(\n    from: new Address('jeffrey@example.com', 'Jeffrey Way'),\n    replyTo: [\n        new Address('taylor@example.com', 'Taylor Otwell'),\n    ],\n    subject: 'Order Shipped',\n);\n"}]}]
50:["$","a",null,{"name":"using-a-global-from-address"}]
51:["$","h4",null,{"id":"using-a-global-from-address","children":["$","a",null,{"href":"#using-a-global-from-address","children":["Using a Global ",["$","code",null,{"children":"from"}]," Address"]}]}]
52:["$","p",null,{"children":["However, if your application uses the same \"from\" address for all of its emails, it can become cumbersome to add it to each mailable class you generate. Instead, you may specify a global \"from\" address in your ",["$","code",null,{"children":"config/mail.php"}]," configuration file. This address will be used if no other \"from\" address is specified within the mailable class:"]}]
53:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"'from' => [\n    'address' => env('MAIL_FROM_ADDRESS', 'hello@example.com'),\n    'name' => env('MAIL_FROM_NAME', 'Example'),\n],\n"}]}]
54:["$","p",null,{"children":["In addition, you may define a global \"reply_to\" address within your ",["$","code",null,{"children":"config/mail.php"}]," configuration file:"]}]
55:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"'reply_to' => [\n    'address' => 'example@example.com',\n    'name' => 'App Name',\n],\n"}]}]
56:["$","a",null,{"name":"configuring-the-view"}]
57:["$","h3",null,{"id":"configuring-the-view","children":["$","a",null,{"href":"#configuring-the-view","children":"Configuring the View"}]}]
58:["$","p",null,{"children":["Within a mailable class's ",["$","code",null,{"children":"content"}]," method, you may define the ",["$","code",null,{"children":"view"}],", or which template should be used when rendering the email's contents. Since each email typically uses a ",["$","a",null,{"href":"/docs/%7B'12.x'%7D/blade","children":"Blade template"}]," to render its contents, you have the full power and convenience of the Blade templating engine when building your email's HTML:"]}]
59:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"/**\n * Get the message content definition.\n */\npublic function content(): Content\n{\n    return new Content(\n        view: 'mail.orders.shipped',\n    );\n}\n"}]}]
5a:["$","blockquote",null,{"children":["\n",["$","p",null,{"children":["[!NOTE]\nYou may wish to create a ",["$","code",null,{"children":"resources/views/mail"}]," directory to house all of your email templates; however, you are free to place them wherever you wish within your ",["$","code",null,{"children":"resources/views"}]," directory."]}],"\n"]}]
5b:["$","a",null,{"name":"plain-text-emails"}]
5c:["$","h4",null,{"id":"plain-text-emails","children":["$","a",null,{"href":"#plain-text-emails","children":"Plain Text Emails"}]}]
5d:["$","p",null,{"children":["If you would like to define a plain-text version of your email, you may specify the plain-text template when creating the message's ",["$","code",null,{"children":"Content"}]," definition. Like the ",["$","code",null,{"children":"view"}]," parameter, the ",["$","code",null,{"children":"text"}]," parameter should be a template name which will be used to render the contents of the email. You are free to define both an HTML and plain-text version of your message:"]}]
5e:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"/**\n * Get the message content definition.\n */\npublic function content(): Content\n{\n    return new Content(\n        view: 'mail.orders.shipped',\n        text: 'mail.orders.shipped-text'\n    );\n}\n"}]}]
5f:["$","p",null,{"children":["For clarity, the ",["$","code",null,{"children":"html"}]," parameter may be used as an alias of the ",["$","code",null,{"children":"view"}]," parameter:"]}]
60:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"return new Content(\n    html: 'mail.orders.shipped',\n    text: 'mail.orders.shipped-text'\n);\n"}]}]
61:["$","a",null,{"name":"view-data"}]
62:["$","h3",null,{"id":"view-data","children":["$","a",null,{"href":"#view-data","children":"View Data"}]}]
63:["$","a",null,{"name":"via-public-properties"}]
64:["$","h4",null,{"id":"via-public-properties","children":["$","a",null,{"href":"#via-public-properties","children":"Via Public Properties"}]}]
65:["$","p",null,{"children":"Typically, you will want to pass some data to your view that you can utilize when rendering the email's HTML. There are two ways you may make data available to your view. First, any public property defined on your mailable class will automatically be made available to the view. So, for example, you may pass data into your mailable class's constructor and set that data to public properties defined on the class:"}]
66:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"<?php\n\nnamespace App\\Mail;\n\nuse App\\Models\\Order;\nuse Illuminate\\Bus\\Queueable;\nuse Illuminate\\Mail\\Mailable;\nuse Illuminate\\Mail\\Mailables\\Content;\nuse Illuminate\\Queue\\SerializesModels;\n\nclass OrderShipped extends Mailable\n{\n    use Queueable, SerializesModels;\n\n    /**\n     * Create a new message instance.\n     */\n    public function __construct(\n        public Order $order,\n    ) {}\n\n    /**\n     * Get the message content definition.\n     */\n    public function content(): Content\n    {\n        return new Content(\n            view: 'mail.orders.shipped',\n        );\n    }\n}\n"}]}]
67:["$","p",null,{"children":"Once the data has been set to a public property, it will automatically be available in your view, so you may access it like you would access any other data in your Blade templates:"}]
68:["$","pre",null,{"children":["$","code",null,{"className":"language-blade","children":"<div>\n    Price: {{ $order->price }}\n</div>\n"}]}]
69:["$","a",null,{"name":"via-the-with-parameter"}]
6a:["$","h4",null,{"id":"via-the-with-parameter","children":["$","a",null,{"href":"#via-the-with-parameter","children":["Via the ",["$","code",null,{"children":"with"}]," Parameter:"]}]}]
6b:["$","p",null,{"children":["If you would like to customize the format of your email's data before it is sent to the template, you may manually pass your data to the view via the ",["$","code",null,{"children":"Content"}]," definition's ",["$","code",null,{"children":"with"}]," parameter. Typically, you will still pass data via the mailable class's constructor; however, you should set this data to ",["$","code",null,{"children":"protected"}]," or ",["$","code",null,{"children":"private"}]," properties so the data is not automatically made available to the template:"]}]
6c:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"<?php\n\nnamespace App\\Mail;\n\nuse App\\Models\\Order;\nuse Illuminate\\Bus\\Queueable;\nuse Illuminate\\Mail\\Mailable;\nuse Illuminate\\Mail\\Mailables\\Content;\nuse Illuminate\\Queue\\SerializesModels;\n\nclass OrderShipped extends Mailable\n{\n    use Queueable, SerializesModels;\n\n    /**\n     * Create a new message instance.\n     */\n    public function __construct(\n        protected Order $order,\n    ) {}\n\n    /**\n     * Get the message content definition.\n     */\n    public function content(): Content\n    {\n        return new Content(\n            view: 'mail.orders.shipped',\n            with: [\n                'orderName' => $this->order->name,\n                'orderPrice' => $this->order->price,\n            ],\n        );\n    }\n}\n"}]}]
6d:["$","p",null,{"children":["Once the data has been passed via the ",["$","code",null,{"children":"with"}]," parameter, it will automatically be available in your view, so you may access it like you would access any other data in your Blade templates:"]}]
6e:["$","pre",null,{"children":["$","code",null,{"className":"language-blade","children":"<div>\n    Price: {{ $orderPrice }}\n</div>\n"}]}]
6f:["$","a",null,{"name":"attachments"}]
70:["$","h3",null,{"id":"attachments","children":["$","a",null,{"href":"#attachments","children":"Attachments"}]}]
71:["$","p",null,{"children":["To add attachments to an email, you will add attachments to the array returned by the message's ",["$","code",null,{"children":"attachments"}]," method. First, you may add an attachment by providing a file path to the ",["$","code",null,{"children":"fromPath"}]," method provided by the ",["$","code",null,{"children":"Attachment"}]," class:"]}]
72:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use Illuminate\\Mail\\Mailables\\Attachment;\n\n/**\n * Get the attachments for the message.\n *\n * @return array<int, \\Illuminate\\Mail\\Mailables\\Attachment>\n */\npublic function attachments(): array\n{\n    return [\n        Attachment::fromPath('/path/to/file'),\n    ];\n}\n"}]}]
73:["$","p",null,{"children":["When attaching files to a message, you may also specify the display name and / or MIME type for the attachment using the ",["$","code",null,{"children":"as"}]," and ",["$","code",null,{"children":"withMime"}]," methods:"]}]
74:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"/**\n * Get the attachments for the message.\n *\n * @return array<int, \\Illuminate\\Mail\\Mailables\\Attachment>\n */\npublic function attachments(): array\n{\n    return [\n        Attachment::fromPath('/path/to/file')\n            ->as('name.pdf')\n            ->withMime('application/pdf'),\n    ];\n}\n"}]}]
75:["$","a",null,{"name":"attaching-files-from-disk"}]
76:["$","h4",null,{"id":"attaching-files-from-disk","children":["$","a",null,{"href":"#attaching-files-from-disk","children":"Attaching Files From Disk"}]}]
77:["$","p",null,{"children":["If you have stored a file on one of your ",["$","a",null,{"href":"/docs/%7B'12.x'%7D/filesystem","children":"filesystem disks"}],", you may attach it to the email using the ",["$","code",null,{"children":"fromStorage"}]," attachment method:"]}]
78:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"/**\n * Get the attachments for the message.\n *\n * @return array<int, \\Illuminate\\Mail\\Mailables\\Attachment>\n */\npublic function attachments(): array\n{\n    return [\n        Attachment::fromStorage('/path/to/file'),\n    ];\n}\n"}]}]
79:["$","p",null,{"children":"Of course, you may also specify the attachment's name and MIME type:"}]
7a:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"/**\n * Get the attachments for the message.\n *\n * @return array<int, \\Illuminate\\Mail\\Mailables\\Attachment>\n */\npublic function attachments(): array\n{\n    return [\n        Attachment::fromStorage('/path/to/file')\n            ->as('name.pdf')\n            ->withMime('application/pdf'),\n    ];\n}\n"}]}]
7b:["$","p",null,{"children":["The ",["$","code",null,{"children":"fromStorageDisk"}]," method may be used if you need to specify a storage disk other than your default disk:"]}]
7c:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"/**\n * Get the attachments for the message.\n *\n * @return array<int, \\Illuminate\\Mail\\Mailables\\Attachment>\n */\npublic function attachments(): array\n{\n    return [\n        Attachment::fromStorageDisk('s3', '/path/to/file')\n            ->as('name.pdf')\n            ->withMime('application/pdf'),\n    ];\n}\n"}]}]
7d:["$","a",null,{"name":"raw-data-attachments"}]
7e:["$","h4",null,{"id":"raw-data-attachments","children":["$","a",null,{"href":"#raw-data-attachments","children":"Raw Data Attachments"}]}]
7f:["$","p",null,{"children":["The ",["$","code",null,{"children":"fromData"}]," attachment method may be used to attach a raw string of bytes as an attachment. For example, you might use this method if you have generated a PDF in memory and want to attach it to the email without writing it to disk. The ",["$","code",null,{"children":"fromData"}]," method accepts a closure which resolves the raw data bytes as well as the name that the attachment should be assigned:"]}]
80:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"/**\n * Get the attachments for the message.\n *\n * @return array<int, \\Illuminate\\Mail\\Mailables\\Attachment>\n */\npublic function attachments(): array\n{\n    return [\n        Attachment::fromData(fn () => $this->pdf, 'Report.pdf')\n            ->withMime('application/pdf'),\n    ];\n}\n"}]}]
81:["$","a",null,{"name":"inline-attachments"}]
82:["$","h3",null,{"id":"inline-attachments","children":["$","a",null,{"href":"#inline-attachments","children":"Inline Attachments"}]}]
83:["$","p",null,{"children":["Embedding inline images into your emails is typically cumbersome; however, Laravel provides a convenient way to attach images to your emails. To embed an inline image, use the ",["$","code",null,{"children":"embed"}]," method on the ",["$","code",null,{"children":"$$message"}]," variable within your email template. Laravel automatically makes the ",["$","code",null,{"children":"$$message"}]," variable available to all of your email templates, so you don't need to worry about passing it in manually:"]}]
84:["$","pre",null,{"children":["$","code",null,{"className":"language-blade","children":"<body>\n    Here is an image:\n\n    <img src=\"{{ $message- />embed($pathToImage) }}\" />\n</body>\n"}]}]
85:["$","blockquote",null,{"children":["\n",["$","p",null,{"children":["[!WARNING]\nThe ",["$","code",null,{"children":"$$message"}]," variable is not available in plain-text message templates since plain-text messages do not utilize inline attachments."]}],"\n"]}]
86:["$","a",null,{"name":"embedding-raw-data-attachments"}]
87:["$","h4",null,{"id":"embedding-raw-data-attachments","children":["$","a",null,{"href":"#embedding-raw-data-attachments","children":"Embedding Raw Data Attachments"}]}]
88:["$","p",null,{"children":["If you already have a raw image data string you wish to embed into an email template, you may call the ",["$","code",null,{"children":"embedData"}]," method on the ",["$","code",null,{"children":"$$message"}]," variable. When calling the ",["$","code",null,{"children":"embedData"}]," method, you will need to provide a filename that should be assigned to the embedded image:"]}]
89:["$","pre",null,{"children":["$","code",null,{"className":"language-blade","children":"<body>\n    Here is an image from raw data:\n\n    <img src=\"{{ $message- />embedData($data, 'example-image.jpg') }}\" />\n</body>\n"}]}]
8a:["$","a",null,{"name":"attachable-objects"}]
8b:["$","h3",null,{"id":"attachable-objects","children":["$","a",null,{"href":"#attachable-objects","children":"Attachable Objects"}]}]
8c:["$","p",null,{"children":["While attaching files to messages via simple string paths is often sufficient, in many cases the attachable entities within your application are represented by classes. For example, if your application is attaching a photo to a message, your application may also have a ",["$","code",null,{"children":"Photo"}]," model that represents that photo. When that is the case, wouldn't it be convenient to simply pass the ",["$","code",null,{"children":"Photo"}]," model to the ",["$","code",null,{"children":"attach"}]," method? Attachable objects allow you to do just that."]}]
8d:["$","p",null,{"children":["To get started, implement the ",["$","code",null,{"children":"Illuminate\\Contracts\\Mail\\Attachable"}]," interface on the object that will be attachable to messages. This interface dictates that your class defines a ",["$","code",null,{"children":"toMailAttachment"}]," method that returns an ",["$","code",null,{"children":"Illuminate\\Mail\\Attachment"}]," instance:"]}]
8e:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"<?php\n\nnamespace App\\Models;\n\nuse Illuminate\\Contracts\\Mail\\Attachable;\nuse Illuminate\\Database\\Eloquent\\Model;\nuse Illuminate\\Mail\\Attachment;\n\nclass Photo extends Model implements Attachable\n{\n    /**\n     * Get the attachable representation of the model.\n     */\n    public function toMailAttachment(): Attachment\n    {\n        return Attachment::fromPath('/path/to/file');\n    }\n}\n"}]}]
8f:["$","p",null,{"children":["Once you have defined your attachable object, you may return an instance of that object from the ",["$","code",null,{"children":"attachments"}]," method when building an email message:"]}]
90:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"/**\n * Get the attachments for the message.\n *\n * @return array<int, \\Illuminate\\Mail\\Mailables\\Attachment>\n */\npublic function attachments(): array\n{\n    return [$this->photo];\n}\n"}]}]
91:["$","p",null,{"children":["Of course, attachment data may be stored on a remote file storage service such as Amazon S3. So, Laravel also allows you to generate attachment instances from data that is stored on one of your application's ",["$","a",null,{"href":"/docs/%7B'12.x'%7D/filesystem","children":"filesystem disks"}],":"]}]
92:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"// Create an attachment from a file on your default disk...\nreturn Attachment::fromStorage($this->path);\n\n// Create an attachment from a file on a specific disk...\nreturn Attachment::fromStorageDisk('backblaze', $this->path);\n"}]}]
93:["$","p",null,{"children":["In addition, you may create attachment instances via data that you have in memory. To accomplish this, provide a closure to the ",["$","code",null,{"children":"fromData"}]," method. The closure should return the raw data that represents the attachment:"]}]
94:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"return Attachment::fromData(fn () => $this->content, 'Photo Name');\n"}]}]
95:["$","p",null,{"children":["Laravel also provides additional methods that you may use to customize your attachments. For example, you may use the ",["$","code",null,{"children":"as"}]," and ",["$","code",null,{"children":"withMime"}]," methods to customize the file's name and MIME type:"]}]
96:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"return Attachment::fromPath('/path/to/file')\n    ->as('Photo Name')\n    ->withMime('image/jpeg');\n"}]}]
97:["$","a",null,{"name":"headers"}]
98:["$","h3",null,{"id":"headers","children":["$","a",null,{"href":"#headers","children":"Headers"}]}]
99:["$","p",null,{"children":["Sometimes you may need to attach additional headers to the outgoing message. For instance, you may need to set a custom ",["$","code",null,{"children":"Message-Id"}]," or other arbitrary text headers."]}]
9a:["$","p",null,{"children":["To accomplish this, define a ",["$","code",null,{"children":"headers"}]," method on your mailable. The ",["$","code",null,{"children":"headers"}]," method should return an ",["$","code",null,{"children":"Illuminate\\Mail\\Mailables\\Headers"}]," instance. This class accepts ",["$","code",null,{"children":"messageId"}],", ",["$","code",null,{"children":"references"}],", and ",["$","code",null,{"children":"text"}]," parameters. Of course, you may provide only the parameters you need for your particular message:"]}]
9b:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use Illuminate\\Mail\\Mailables\\Headers;\n\n/**\n * Get the message headers.\n */\npublic function headers(): Headers\n{\n    return new Headers(\n        messageId: 'custom-message-id@example.com',\n        references: ['previous-message@example.com'],\n        text: [\n            'X-Custom-Header' => 'Custom Value',\n        ],\n    );\n}\n"}]}]
9c:["$","a",null,{"name":"tags-and-metadata"}]
9d:["$","h3",null,{"id":"tags-and-metadata","children":["$","a",null,{"href":"#tags-and-metadata","children":"Tags and Metadata"}]}]
9e:["$","p",null,{"children":["Some third-party email providers such as Mailgun and Postmark support message \"tags\" and \"metadata\", which may be used to group and track emails sent by your application. You may add tags and metadata to an email message via your ",["$","code",null,{"children":"Envelope"}]," definition:"]}]
9f:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use Illuminate\\Mail\\Mailables\\Envelope;\n\n/**\n * Get the message envelope.\n *\n * @return \\Illuminate\\Mail\\Mailables\\Envelope\n */\npublic function envelope(): Envelope\n{\n    return new Envelope(\n        subject: 'Order Shipped',\n        tags: ['shipment'],\n        metadata: [\n            'order_id' => $this->order->id,\n        ],\n    );\n}\n"}]}]
a0:["$","p",null,{"children":["If your application is using the Mailgun driver, you may consult Mailgun's documentation for more information on ",["$","a",null,{"href":"https://documentation.mailgun.com/docs/mailgun/user-manual/tracking-messages/#tags","children":"tags"}]," and ",["$","a",null,{"href":"https://documentation.mailgun.com/docs/mailgun/user-manual/sending-messages/#attaching-metadata-to-messages","children":"metadata"}],". Likewise, the Postmark documentation may also be consulted for more information on their support for ",["$","a",null,{"href":"https://postmarkapp.com/blog/tags-support-for-smtp","children":"tags"}]," and ",["$","a",null,{"href":"https://postmarkapp.com/support/article/1125-custom-metadata-faq","children":"metadata"}],"."]}]
a1:["$","p",null,{"children":["If your application is using Amazon SES to send emails, you should use the ",["$","code",null,{"children":"metadata"}]," method to attach ",["$","a",null,{"href":"https://docs.aws.amazon.com/ses/latest/APIReference/API_MessageTag.html","children":"SES \"tags\""}]," to the message."]}]
a2:["$","a",null,{"name":"customizing-the-symfony-message"}]
a3:["$","h3",null,{"id":"customizing-the-symfony-message","children":["$","a",null,{"href":"#customizing-the-symfony-message","children":"Customizing the Symfony Message"}]}]
a4:["$","p",null,{"children":["Laravel's mail capabilities are powered by Symfony Mailer. Laravel allows you to register custom callbacks that will be invoked with the Symfony Message instance before sending the message. This gives you an opportunity to deeply customize the message before it is sent. To accomplish this, define a ",["$","code",null,{"children":"using"}]," parameter on your ",["$","code",null,{"children":"Envelope"}]," definition:"]}]
a5:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use Illuminate\\Mail\\Mailables\\Envelope;\nuse Symfony\\Component\\Mime\\Email;\n\n/**\n * Get the message envelope.\n */\npublic function envelope(): Envelope\n{\n    return new Envelope(\n        subject: 'Order Shipped',\n        using: [\n            function (Email $message) {\n                // ...\n            },\n        ]\n    );\n}\n"}]}]
a6:["$","a",null,{"name":"markdown-mailables"}]
a7:["$","h2",null,{"id":"markdown-mailables","children":["$","a",null,{"href":"#markdown-mailables","children":"Markdown Mailables"}]}]
a8:["$","p",null,{"children":["Markdown mailable messages allow you to take advantage of the pre-built templates and components of ",["$","a",null,{"href":"/docs/%7B'12.x'%7D/notifications#mail-notifications","children":"mail notifications"}]," in your mailables. Since the messages are written in Markdown, Laravel is able to render beautiful, responsive HTML templates for the messages while also automatically generating a plain-text counterpart."]}]
a9:["$","a",null,{"name":"generating-markdown-mailables"}]
aa:["$","h3",null,{"id":"generating-markdown-mailables","children":["$","a",null,{"href":"#generating-markdown-mailables","children":"Generating Markdown Mailables"}]}]
ab:["$","p",null,{"children":["To generate a mailable with a corresponding Markdown template, you may use the ",["$","code",null,{"children":"--markdown"}]," option of the ",["$","code",null,{"children":"make:mail"}]," Artisan command:"]}]
ac:["$","pre",null,{"children":["$","code",null,{"className":"language-shell","children":"php artisan make:mail OrderShipped --markdown=mail.orders.shipped\n"}]}]
ad:["$","p",null,{"children":["Then, when configuring the mailable ",["$","code",null,{"children":"Content"}]," definition within its ",["$","code",null,{"children":"content"}]," method, use the ",["$","code",null,{"children":"markdown"}]," parameter instead of the ",["$","code",null,{"children":"view"}]," parameter:"]}]
ae:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use Illuminate\\Mail\\Mailables\\Content;\n\n/**\n * Get the message content definition.\n */\npublic function content(): Content\n{\n    return new Content(\n        markdown: 'mail.orders.shipped',\n        with: [\n            'url' => $this->orderUrl,\n        ],\n    );\n}\n"}]}]
af:["$","a",null,{"name":"writing-markdown-messages"}]
b0:["$","h3",null,{"id":"writing-markdown-messages","children":["$","a",null,{"href":"#writing-markdown-messages","children":"Writing Markdown Messages"}]}]
b1:["$","p",null,{"children":"Markdown mailables use a combination of Blade components and Markdown syntax which allow you to easily construct mail messages while leveraging Laravel's pre-built email UI components:"}]
b2:["$","pre",null,{"children":["$","code",null,{"className":"language-blade","children":"<x-mail::message>\n# Order Shipped\n\nYour order has been shipped!\n\n<x-mail::button :url=\"$url\">\nView Order\n</x-mail::button>\n\nThanks,<br>\n{{ config('app.name') }}\n</x-mail::message>\n"}]}]
b3:["$","blockquote",null,{"children":["\n",["$","p",null,{"children":"[!NOTE]\nDo not use excess indentation when writing Markdown emails. Per Markdown standards, Markdown parsers will render indented content as code blocks."}],"\n"]}]
b4:["$","a",null,{"name":"button-component"}]
b5:["$","h4",null,{"id":"button-component","children":["$","a",null,{"href":"#button-component","children":"Button Component"}]}]
b6:["$","p",null,{"children":["The button component renders a centered button link. The component accepts two arguments, a ",["$","code",null,{"children":"url"}]," and an optional ",["$","code",null,{"children":"color"}],". Supported colors are ",["$","code",null,{"children":"primary"}],", ",["$","code",null,{"children":"success"}],", and ",["$","code",null,{"children":"error"}],". You may add as many button components to a message as you wish:"]}]
b7:["$","pre",null,{"children":["$","code",null,{"className":"language-blade","children":"<x-mail::button :url=\"$url\" color=\"success\">\nView Order\n</x-mail::button>\n"}]}]
b8:["$","a",null,{"name":"panel-component"}]
b9:["$","h4",null,{"id":"panel-component","children":["$","a",null,{"href":"#panel-component","children":"Panel Component"}]}]
ba:["$","p",null,{"children":"The panel component renders the given block of text in a panel that has a slightly different background color than the rest of the message. This allows you to draw attention to a given block of text:"}]
bb:["$","pre",null,{"children":["$","code",null,{"className":"language-blade","children":"<x-mail::panel>\nThis is the panel content.\n</x-mail::panel>\n"}]}]
bc:["$","a",null,{"name":"table-component"}]
bd:["$","h4",null,{"id":"table-component","children":["$","a",null,{"href":"#table-component","children":"Table Component"}]}]
be:["$","p",null,{"children":"The table component allows you to transform a Markdown table into an HTML table. The component accepts the Markdown table as its content. Table column alignment is supported using the default Markdown table alignment syntax:"}]
bf:["$","pre",null,{"children":["$","code",null,{"className":"language-blade","children":"<x-mail::table>\n| Laravel       | Table         | Example       |\n| ------------- | :-----------: | ------------: |\n| Col 2 is      | Centered      | $10           |\n| Col 3 is      | Right-Aligned | $20           |\n</x-mail::table>\n"}]}]
c0:["$","a",null,{"name":"customizing-the-components"}]
c1:["$","h3",null,{"id":"customizing-the-components","children":["$","a",null,{"href":"#customizing-the-components","children":"Customizing the Components"}]}]
c2:["$","p",null,{"children":["You may export all of the Markdown mail components to your own application for customization. To export the components, use the ",["$","code",null,{"children":"vendor:publish"}]," Artisan command to publish the ",["$","code",null,{"children":"laravel-mail"}]," asset tag:"]}]
c3:["$","pre",null,{"children":["$","code",null,{"className":"language-shell","children":"php artisan vendor:publish --tag=laravel-mail\n"}]}]
c4:["$","p",null,{"children":["This command will publish the Markdown mail components to the ",["$","code",null,{"children":"resources/views/vendor/mail"}]," directory. The ",["$","code",null,{"children":"mail"}]," directory will contain an ",["$","code",null,{"children":"html"}]," and a ",["$","code",null,{"children":"text"}]," directory, each containing their respective representations of every available component. You are free to customize these components however you like."]}]
c5:["$","a",null,{"name":"customizing-the-css"}]
c6:["$","h4",null,{"id":"customizing-the-css","children":["$","a",null,{"href":"#customizing-the-css","children":"Customizing the CSS"}]}]
c7:["$","p",null,{"children":["After exporting the components, the ",["$","code",null,{"children":"resources/views/vendor/mail/html/themes"}]," directory will contain a ",["$","code",null,{"children":"default.css"}]," file. You may customize the CSS in this file and your styles will automatically be converted to inline CSS styles within the HTML representations of your Markdown mail messages."]}]
c8:["$","p",null,{"children":["If you would like to build an entirely new theme for Laravel's Markdown components, you may place a CSS file within the ",["$","code",null,{"children":"html/themes"}]," directory. After naming and saving your CSS file, update the ",["$","code",null,{"children":"theme"}]," option of your application's ",["$","code",null,{"children":"config/mail.php"}]," configuration file to match the name of your new theme."]}]
c9:["$","p",null,{"children":["To customize the theme for an individual mailable, you may set the ",["$","code",null,{"children":"$$theme"}]," property of the mailable class to the name of the theme that should be used when sending that mailable."]}]
ca:["$","a",null,{"name":"sending-mail"}]
cb:["$","h2",null,{"id":"sending-mail","children":["$","a",null,{"href":"#sending-mail","children":"Sending Mail"}]}]
cc:["$","p",null,{"children":["To send a message, use the ",["$","code",null,{"children":"to"}]," method on the ",["$","code",null,{"children":"Mail"}]," ",["$","a",null,{"href":"/docs/%7B'12.x'%7D/facades","children":"facade"}],". The ",["$","code",null,{"children":"to"}]," method accepts an email address, a user instance, or a collection of users. If you pass an object or collection of objects, the mailer will automatically use their ",["$","code",null,{"children":"email"}]," and ",["$","code",null,{"children":"name"}]," properties when determining the email's recipients, so make sure these attributes are available on your objects. Once you have specified your recipients, you may pass an instance of your mailable class to the ",["$","code",null,{"children":"send"}]," method:"]}]
cd:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"<?php\n\nnamespace App\\Http\\Controllers;\n\nuse App\\Mail\\OrderShipped;\nuse App\\Models\\Order;\nuse Illuminate\\Http\\RedirectResponse;\nuse Illuminate\\Http\\Request;\nuse Illuminate\\Support\\Facades\\Mail;\n\nclass OrderShipmentController extends Controller\n{\n    /**\n     * Ship the given order.\n     */\n    public function store(Request $request): RedirectResponse\n    {\n        $order = Order::findOrFail($request->order_id);\n\n        // Ship the order...\n\n        Mail::to($request->user())->send(new OrderShipped($order));\n\n        return redirect('/orders');\n    }\n}\n"}]}]
ce:["$","p",null,{"children":"You are not limited to just specifying the \"to\" recipients when sending a message. You are free to set \"to\", \"cc\", and \"bcc\" recipients by chaining their respective methods together:"}]
cf:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"Mail::to($request->user())\n    ->cc($moreUsers)\n    ->bcc($evenMoreUsers)\n    ->send(new OrderShipped($order));\n"}]}]
d0:["$","a",null,{"name":"looping-over-recipients"}]
d1:["$","h4",null,{"id":"looping-over-recipients","children":["$","a",null,{"href":"#looping-over-recipients","children":"Looping Over Recipients"}]}]
d2:["$","p",null,{"children":["Occasionally, you may need to send a mailable to a list of recipients by iterating over an array of recipients / email addresses. However, since the ",["$","code",null,{"children":"to"}]," method appends email addresses to the mailable's list of recipients, each iteration through the loop will send another email to every previous recipient. Therefore, you should always re-create the mailable instance for each recipient:"]}]
d3:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"foreach (['taylor@example.com', 'dries@example.com'] as $recipient) {\n    Mail::to($recipient)->send(new OrderShipped($order));\n}\n"}]}]
d4:["$","a",null,{"name":"sending-mail-via-a-specific-mailer"}]
d5:["$","h4",null,{"id":"sending-mail-via-a-specific-mailer","children":["$","a",null,{"href":"#sending-mail-via-a-specific-mailer","children":"Sending Mail via a Specific Mailer"}]}]
d6:["$","p",null,{"children":["By default, Laravel will send email using the mailer configured as the ",["$","code",null,{"children":"default"}]," mailer in your application's ",["$","code",null,{"children":"mail"}]," configuration file. However, you may use the ",["$","code",null,{"children":"mailer"}]," method to send a message using a specific mailer configuration:"]}]
d7:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"Mail::mailer('postmark')\n    ->to($request->user())\n    ->send(new OrderShipped($order));\n"}]}]
d8:["$","a",null,{"name":"queueing-mail"}]
d9:["$","h3",null,{"id":"queueing-mail","children":["$","a",null,{"href":"#queueing-mail","children":"Queueing Mail"}]}]
da:["$","a",null,{"name":"queueing-a-mail-message"}]
db:["$","h4",null,{"id":"queueing-a-mail-message","children":["$","a",null,{"href":"#queueing-a-mail-message","children":"Queueing a Mail Message"}]}]
dc:["$","p",null,{"children":["Since sending email messages can negatively impact the response time of your application, many developers choose to queue email messages for background sending. Laravel makes this easy using its built-in ",["$","a",null,{"href":"/docs/%7B'12.x'%7D/queues","children":"unified queue API"}],". To queue a mail message, use the ",["$","code",null,{"children":"queue"}]," method on the ",["$","code",null,{"children":"Mail"}]," facade after specifying the message's recipients:"]}]
dd:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"Mail::to($request->user())\n    ->cc($moreUsers)\n    ->bcc($evenMoreUsers)\n    ->queue(new OrderShipped($order));\n"}]}]
de:["$","p",null,{"children":["This method will automatically take care of pushing a job onto the queue so the message is sent in the background. You will need to ",["$","a",null,{"href":"/docs/%7B'12.x'%7D/queues","children":"configure your queues"}]," before using this feature."]}]
df:["$","a",null,{"name":"delayed-message-queueing"}]
e0:["$","h4",null,{"id":"delayed-message-queueing","children":["$","a",null,{"href":"#delayed-message-queueing","children":"Delayed Message Queueing"}]}]
e1:["$","p",null,{"children":["If you wish to delay the delivery of a queued email message, you may use the ",["$","code",null,{"children":"later"}]," method. As its first argument, the ",["$","code",null,{"children":"later"}]," method accepts a ",["$","code",null,{"children":"DateTime"}]," instance indicating when the message should be sent:"]}]
e2:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"Mail::to($request->user())\n    ->cc($moreUsers)\n    ->bcc($evenMoreUsers)\n    ->later(now()->addMinutes(10), new OrderShipped($order));\n"}]}]
e3:["$","a",null,{"name":"pushing-to-specific-queues"}]
e4:["$","h4",null,{"id":"pushing-to-specific-queues","children":["$","a",null,{"href":"#pushing-to-specific-queues","children":"Pushing to Specific Queues"}]}]
e5:["$","p",null,{"children":["Since all mailable classes generated using the ",["$","code",null,{"children":"make:mail"}]," command make use of the ",["$","code",null,{"children":"Illuminate\\Bus\\Queueable"}]," trait, you may call the ",["$","code",null,{"children":"onQueue"}]," and ",["$","code",null,{"children":"onConnection"}]," methods on any mailable class instance, allowing you to specify the connection and queue name for the message:"]}]
e6:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$$message = (new OrderShipped($order))\n    ->onConnection('sqs')\n    ->onQueue('emails');\n\nMail::to($request->user())\n    ->cc($moreUsers)\n    ->bcc($evenMoreUsers)\n    ->queue($message);\n"}]}]
e7:["$","a",null,{"name":"queueing-by-default"}]
e8:["$","h4",null,{"id":"queueing-by-default","children":["$","a",null,{"href":"#queueing-by-default","children":"Queueing by Default"}]}]
e9:["$","p",null,{"children":["If you have mailable classes that you want to always be queued, you may implement the ",["$","code",null,{"children":"ShouldQueue"}]," contract on the class. Now, even if you call the ",["$","code",null,{"children":"send"}]," method when mailing, the mailable will still be queued since it implements the contract:"]}]
ea:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use Illuminate\\Contracts\\Queue\\ShouldQueue;\n\nclass OrderShipped extends Mailable implements ShouldQueue\n{\n    // ...\n}\n"}]}]
eb:["$","a",null,{"name":"queued-mailables-and-database-transactions"}]
ec:["$","h4",null,{"id":"queued-mailables-and-database-transactions","children":["$","a",null,{"href":"#queued-mailables-and-database-transactions","children":"Queued Mailables and Database Transactions"}]}]
ed:["$","p",null,{"children":"When queued mailables are dispatched within database transactions, they may be processed by the queue before the database transaction has committed. When this happens, any updates you have made to models or database records during the database transaction may not yet be reflected in the database. In addition, any models or database records created within the transaction may not exist in the database. If your mailable depends on these models, unexpected errors can occur when the job that sends the queued mailable is processed."}]
ee:["$","p",null,{"children":["If your queue connection's ",["$","code",null,{"children":"after_commit"}]," configuration option is set to ",["$","code",null,{"children":"false"}],", you may still indicate that a particular queued mailable should be dispatched after all open database transactions have been committed by calling the ",["$","code",null,{"children":"afterCommit"}]," method when sending the mail message:"]}]
ef:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"Mail::to($request->user())->send(\n    (new OrderShipped($order))->afterCommit()\n);\n"}]}]
f0:["$","p",null,{"children":["Alternatively, you may call the ",["$","code",null,{"children":"afterCommit"}]," method from your mailable's constructor:"]}]
f1:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"<?php\n\nnamespace App\\Mail;\n\nuse Illuminate\\Bus\\Queueable;\nuse Illuminate\\Contracts\\Queue\\ShouldQueue;\nuse Illuminate\\Mail\\Mailable;\nuse Illuminate\\Queue\\SerializesModels;\n\nclass OrderShipped extends Mailable implements ShouldQueue\n{\n    use Queueable, SerializesModels;\n\n    /**\n     * Create a new message instance.\n     */\n    public function __construct()\n    {\n        $this->afterCommit();\n    }\n}\n"}]}]
f2:["$","blockquote",null,{"children":["\n",["$","p",null,{"children":["[!NOTE]\nTo learn more about working around these issues, please review the documentation regarding ",["$","a",null,{"href":"/docs/%7B'12.x'%7D/queues#jobs-and-database-transactions","children":"queued jobs and database transactions"}],"."]}],"\n"]}]
f3:["$","a",null,{"name":"queued-email-failures"}]
f4:["$","h4",null,{"id":"queued-email-failures","children":["$","a",null,{"href":"#queued-email-failures","children":"Queued Email Failures"}]}]
f5:["$","p",null,{"children":["When a queued email fails, the ",["$","code",null,{"children":"failed"}]," method on the queued mailable class will be invoked if it has been defined. The ",["$","code",null,{"children":"Throwable"}]," instance that caused the queued email to fail will be passed to the ",["$","code",null,{"children":"failed"}]," method:"]}]
f6:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"<?php\n\nnamespace App\\Mail;\n\nuse Illuminate\\Contracts\\Queue\\ShouldQueue;\nuse Illuminate\\Mail\\Mailable;\nuse Illuminate\\Queue\\SerializesModels;\nuse Throwable;\n\nclass OrderDelayed extends Mailable implements ShouldQueue\n{\n    use SerializesModels;\n\n    /**\n     * Handle a queued email's failure.\n     */\n    public function failed(Throwable $exception): void\n    {\n        // ...\n    }\n}\n"}]}]
f7:["$","a",null,{"name":"rendering-mailables"}]
f8:["$","h2",null,{"id":"rendering-mailables","children":["$","a",null,{"href":"#rendering-mailables","children":"Rendering Mailables"}]}]
f9:["$","p",null,{"children":["Sometimes you may wish to capture the HTML content of a mailable without sending it. To accomplish this, you may call the ",["$","code",null,{"children":"render"}]," method of the mailable. This method will return the evaluated HTML content of the mailable as a string:"]}]
fa:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Mail\\InvoicePaid;\nuse App\\Models\\Invoice;\n\n$invoice = Invoice::find(1);\n\nreturn (new InvoicePaid($invoice))->render();\n"}]}]
fb:["$","a",null,{"name":"previewing-mailables-in-the-browser"}]
fc:["$","h3",null,{"id":"previewing-mailables-in-the-browser","children":["$","a",null,{"href":"#previewing-mailables-in-the-browser","children":"Previewing Mailables in the Browser"}]}]
fd:["$","p",null,{"children":"When designing a mailable's template, it is convenient to quickly preview the rendered mailable in your browser like a typical Blade template. For this reason, Laravel allows you to return any mailable directly from a route closure or controller. When a mailable is returned, it will be rendered and displayed in the browser, allowing you to quickly preview its design without needing to send it to an actual email address:"}]
fe:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"Route::get('/mailable', function () {\n    $invoice = App\\Models\\Invoice::find(1);\n\n    return new App\\Mail\\InvoicePaid($invoice);\n});\n"}]}]
ff:["$","a",null,{"name":"localizing-mailables"}]
100:["$","h2",null,{"id":"localizing-mailables","children":["$","a",null,{"href":"#localizing-mailables","children":"Localizing Mailables"}]}]
101:["$","p",null,{"children":"Laravel allows you to send mailables in a locale other than the request's current locale, and will even remember this locale if the mail is queued."}]
102:["$","p",null,{"children":["To accomplish this, the ",["$","code",null,{"children":"Mail"}]," facade offers a ",["$","code",null,{"children":"locale"}]," method to set the desired language. The application will change into this locale when the mailable's template is being evaluated and then revert back to the previous locale when evaluation is complete:"]}]
103:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"Mail::to($request->user())->locale('es')->send(\n    new OrderShipped($order)\n);\n"}]}]
104:["$","a",null,{"name":"user-preferred-locales"}]
105:["$","h4",null,{"id":"user-preferred-locales","children":["$","a",null,{"href":"#user-preferred-locales","children":"User Preferred Locales"}]}]
106:["$","p",null,{"children":["Sometimes, applications store each user's preferred locale. By implementing the ",["$","code",null,{"children":"HasLocalePreference"}]," contract on one or more of your models, you may instruct Laravel to use this stored locale when sending mail:"]}]
107:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use Illuminate\\Contracts\\Translation\\HasLocalePreference;\n\nclass User extends Model implements HasLocalePreference\n{\n    /**\n     * Get the user's preferred locale.\n     */\n    public function preferredLocale(): string\n    {\n        return $this->locale;\n    }\n}\n"}]}]
108:["$","p",null,{"children":["Once you have implemented the interface, Laravel will automatically use the preferred locale when sending mailables and notifications to the model. Therefore, there is no need to call the ",["$","code",null,{"children":"locale"}]," method when using this interface:"]}]
109:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"Mail::to($request->user())->send(new OrderShipped($order));\n"}]}]
10a:["$","a",null,{"name":"testing-mailables"}]
10b:["$","h2",null,{"id":"testing","children":["$","a",null,{"href":"#testing","children":"Testing"}]}]
10c:["$","a",null,{"name":"testing-mailable-content"}]
10d:["$","h3",null,{"id":"testing-mailable-content","children":["$","a",null,{"href":"#testing-mailable-content","children":"Testing Mailable Content"}]}]
10e:["$","p",null,{"children":"Laravel provides a variety of methods for inspecting your mailable's structure. In addition, Laravel provides several convenient methods for testing that your mailable contains the content that you expect:"}]
148:T54a,use App\Mail\InvoicePaid;
use App\Models\User;

test('mailable content', function () {
    $user = User::factory()->create();

    $mailable = new InvoicePaid($user);

    $mailable->assertFrom('jeffrey@example.com');
    $mailable->assertTo('taylor@example.com');
    $mailable->assertHasCc('abigail@example.com');
    $mailable->assertHasBcc('victoria@example.com');
    $mailable->assertHasReplyTo('tyler@example.com');
    $mailable->assertHasSubject('Invoice Paid');
    $mailable->assertHasTag('example-tag');
    $mailable->assertHasMetadata('key', 'value');

    $mailable->assertSeeInHtml($user->email);
    $mailable->assertDontSeeInHtml('Invoice Not Paid');
    $mailable->assertSeeInOrderInHtml(['Invoice Paid', 'Thanks']);

    $mailable->assertSeeInText($user->email);
    $mailable->assertDontSeeInText('Invoice Not Paid');
    $mailable->assertSeeInOrderInText(['Invoice Paid', 'Thanks']);

    $mailable->assertHasAttachment('/path/to/file');
    $mailable->assertHasAttachment(Attachment::fromPath('/path/to/file'));
    $mailable->assertHasAttachedData($pdfData, 'name.pdf', ['mime' => 'application/pdf']);
    $mailable->assertHasAttachmentFromStorage('/path/to/file', 'name.pdf', ['mime' => 'application/pdf']);
    $mailable->assertHasAttachmentFromStorageDisk('s3', '/path/to/file', 'name.pdf', ['mime' => 'application/pdf']);
});
10f:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$148"}]}]
149:T551,use App\Mail\InvoicePaid;
use App\Models\User;

public function test_mailable_content(): void
{
    $user = User::factory()->create();

    $mailable = new InvoicePaid($user);

    $mailable->assertFrom('jeffrey@example.com');
    $mailable->assertTo('taylor@example.com');
    $mailable->assertHasCc('abigail@example.com');
    $mailable->assertHasBcc('victoria@example.com');
    $mailable->assertHasReplyTo('tyler@example.com');
    $mailable->assertHasSubject('Invoice Paid');
    $mailable->assertHasTag('example-tag');
    $mailable->assertHasMetadata('key', 'value');

    $mailable->assertSeeInHtml($user->email);
    $mailable->assertDontSeeInHtml('Invoice Not Paid');
    $mailable->assertSeeInOrderInHtml(['Invoice Paid', 'Thanks']);

    $mailable->assertSeeInText($user->email);
    $mailable->assertDontSeeInText('Invoice Not Paid');
    $mailable->assertSeeInOrderInText(['Invoice Paid', 'Thanks']);

    $mailable->assertHasAttachment('/path/to/file');
    $mailable->assertHasAttachment(Attachment::fromPath('/path/to/file'));
    $mailable->assertHasAttachedData($pdfData, 'name.pdf', ['mime' => 'application/pdf']);
    $mailable->assertHasAttachmentFromStorage('/path/to/file', 'name.pdf', ['mime' => 'application/pdf']);
    $mailable->assertHasAttachmentFromStorageDisk('s3', '/path/to/file', 'name.pdf', ['mime' => 'application/pdf']);
}
110:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$149"}]}]
111:["$","p",null,{"children":"As you might expect, the \"HTML\" assertions assert that the HTML version of your mailable contains a given string, while the \"text\" assertions assert that the plain-text version of your mailable contains a given string."}]
112:["$","a",null,{"name":"testing-mailable-sending"}]
113:["$","h3",null,{"id":"testing-mailable-sending","children":["$","a",null,{"href":"#testing-mailable-sending","children":"Testing Mailable Sending"}]}]
114:["$","p",null,{"children":"We suggest testing the content of your mailables separately from your tests that assert that a given mailable was \"sent\" to a specific user. Typically, the content of mailables is not relevant to the code you are testing, and it is sufficient to simply assert that Laravel was instructed to send a given mailable."}]
115:["$","p",null,{"children":["You may use the ",["$","code",null,{"children":"Mail"}]," facade's ",["$","code",null,{"children":"fake"}]," method to prevent mail from being sent. After calling the ",["$","code",null,{"children":"Mail"}]," facade's ",["$","code",null,{"children":"fake"}]," method, you may then assert that mailables were instructed to be sent to users and even inspect the data the mailables received:"]}]
116:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"<?php\n\nuse App\\Mail\\OrderShipped;\nuse Illuminate\\Support\\Facades\\Mail;\n\ntest('orders can be shipped', function () {\n    Mail::fake();\n\n    // Perform order shipping...\n\n    // Assert that no mailables were sent...\n    Mail::assertNothingSent();\n\n    // Assert that a mailable was sent...\n    Mail::assertSent(OrderShipped::class);\n\n    // Assert a mailable was sent twice...\n    Mail::assertSent(OrderShipped::class, 2);\n\n    // Assert a mailable was sent to an email address...\n    Mail::assertSent(OrderShipped::class, 'example@laravel.com');\n\n    // Assert a mailable was sent to multiple email addresses...\n    Mail::assertSent(OrderShipped::class, ['example@laravel.com', '...']);\n\n    // Assert a mailable was not sent...\n    Mail::assertNotSent(AnotherMailable::class);\n\n    // Assert a mailable was sent twice...\n    Mail::assertSentTimes(OrderShipped::class, 2);\n\n    // Assert 3 total mailables were sent...\n    Mail::assertSentCount(3);\n});\n"}]}]
14a:T468,<?php

namespace Tests\Feature;

use App\Mail\OrderShipped;
use Illuminate\Support\Facades\Mail;
use Tests\TestCase;

class ExampleTest extends TestCase
{
    public function test_orders_can_be_shipped(): void
    {
        Mail::fake();

        // Perform order shipping...

        // Assert that no mailables were sent...
        Mail::assertNothingSent();

        // Assert that a mailable was sent...
        Mail::assertSent(OrderShipped::class);

        // Assert a mailable was sent twice...
        Mail::assertSent(OrderShipped::class, 2);

        // Assert a mailable was sent to an email address...
        Mail::assertSent(OrderShipped::class, 'example@laravel.com');

        // Assert a mailable was sent to multiple email addresses...
        Mail::assertSent(OrderShipped::class, ['example@laravel.com', '...']);

        // Assert a mailable was not sent...
        Mail::assertNotSent(AnotherMailable::class);

        // Assert a mailable was sent twice...
        Mail::assertSentTimes(OrderShipped::class, 2);

        // Assert 3 total mailables were sent...
        Mail::assertSentCount(3);
    }
}
117:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$14a"}]}]
118:["$","p",null,{"children":["If you are queueing mailables for delivery in the background, you should use the ",["$","code",null,{"children":"assertQueued"}]," method instead of ",["$","code",null,{"children":"assertSent"}],":"]}]
119:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"Mail::assertQueued(OrderShipped::class);\nMail::assertNotQueued(OrderShipped::class);\nMail::assertNothingQueued();\nMail::assertQueuedCount(3);\n"}]}]
11a:["$","p",null,{"children":["You may pass a closure to the ",["$","code",null,{"children":"assertSent"}],", ",["$","code",null,{"children":"assertNotSent"}],", ",["$","code",null,{"children":"assertQueued"}],", or ",["$","code",null,{"children":"assertNotQueued"}]," methods in order to assert that a mailable was sent that passes a given \"truth test\". If at least one mailable was sent that passes the given truth test then the assertion will be successful:"]}]
11b:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"Mail::assertSent(function (OrderShipped $mail) use ($order) {\n    return $mail->order->id === $order->id;\n});\n"}]}]
11c:["$","p",null,{"children":["When calling the ",["$","code",null,{"children":"Mail"}]," facade's assertion methods, the mailable instance accepted by the provided closure exposes helpful methods for examining the mailable:"]}]
11d:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"Mail::assertSent(OrderShipped::class, function (OrderShipped $mail) use ($user) {\n    return $mail->hasTo($user->email) &&\n           $mail->hasCc('...') &&\n           $mail->hasBcc('...') &&\n           $mail->hasReplyTo('...') &&\n           $mail->hasFrom('...') &&\n           $mail->hasSubject('...') &&\n           $mail->usesMailer('ses');\n});\n"}]}]
11e:["$","p",null,{"children":"The mailable instance also includes several helpful methods for examining the attachments on a mailable:"}]
11f:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use Illuminate\\Mail\\Mailables\\Attachment;\n\nMail::assertSent(OrderShipped::class, function (OrderShipped $mail) {\n    return $mail->hasAttachment(\n        Attachment::fromPath('/path/to/file')\n            ->as('name.pdf')\n            ->withMime('application/pdf')\n    );\n});\n\nMail::assertSent(OrderShipped::class, function (OrderShipped $mail) {\n    return $mail->hasAttachment(\n        Attachment::fromStorageDisk('s3', '/path/to/file')\n    );\n});\n\nMail::assertSent(OrderShipped::class, function (OrderShipped $mail) use ($pdfData) {\n    return $mail->hasAttachment(\n        Attachment::fromData(fn () => $pdfData, 'name.pdf')\n    );\n});\n"}]}]
120:["$","p",null,{"children":["You may have noticed that there are two methods for asserting that mail was not sent: ",["$","code",null,{"children":"assertNotSent"}]," and ",["$","code",null,{"children":"assertNotQueued"}],". Sometimes you may wish to assert that no mail was sent ",["$","strong",null,{"children":"or"}]," queued. To accomplish this, you may use the ",["$","code",null,{"children":"assertNothingOutgoing"}]," and ",["$","code",null,{"children":"assertNotOutgoing"}]," methods:"]}]
121:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"Mail::assertNothingOutgoing();\n\nMail::assertNotOutgoing(function (OrderShipped $mail) use ($order) {\n    return $mail->order->id === $order->id;\n});\n"}]}]
122:["$","a",null,{"name":"mail-and-local-development"}]
123:["$","h2",null,{"id":"mail-and-local-development","children":["$","a",null,{"href":"#mail-and-local-development","children":"Mail and Local Development"}]}]
124:["$","p",null,{"children":"When developing an application that sends email, you probably don't want to actually send emails to live email addresses. Laravel provides several ways to \"disable\" the actual sending of emails during local development."}]
125:["$","a",null,{"name":"log-driver"}]
126:["$","h4",null,{"id":"log-driver","children":["$","a",null,{"href":"#log-driver","children":"Log Driver"}]}]
127:["$","p",null,{"children":["Instead of sending your emails, the ",["$","code",null,{"children":"log"}]," mail driver will write all email messages to your log files for inspection. Typically, this driver would only be used during local development. For more information on configuring your application per environment, check out the ",["$","a",null,{"href":"/docs/%7B'12.x'%7D/configuration#environment-configuration","children":"configuration documentation"}],"."]}]
128:["$","a",null,{"name":"mailtrap"}]
129:["$","h4",null,{"id":"helo--mailtrap--mailpit","children":["$","a",null,{"href":"#helo--mailtrap--mailpit","children":"HELO / Mailtrap / Mailpit"}]}]
12a:["$","p",null,{"children":["Alternatively, you may use a service like ",["$","a",null,{"href":"https://usehelo.com","children":"HELO"}]," or ",["$","a",null,{"href":"https://mailtrap.io","children":"Mailtrap"}]," and the ",["$","code",null,{"children":"smtp"}]," driver to send your email messages to a \"dummy\" mailbox where you may view them in a true email client. This approach has the benefit of allowing you to actually inspect the final emails in Mailtrap's message viewer."]}]
12b:["$","p",null,{"children":["If you are using ",["$","a",null,{"href":"/docs/%7B'12.x'%7D/sail","children":"Laravel Sail"}],", you may preview your messages using ",["$","a",null,{"href":"https://github.com/axllent/mailpit","children":"Mailpit"}],". When Sail is running, you may access the Mailpit interface at: ",["$","code",null,{"children":"http://localhost:8025"}],"."]}]
12c:["$","a",null,{"name":"using-a-global-to-address"}]
12d:["$","h4",null,{"id":"using-a-global-to-address","children":["$","a",null,{"href":"#using-a-global-to-address","children":["Using a Global ",["$","code",null,{"children":"to"}]," Address"]}]}]
12e:["$","p",null,{"children":["Finally, you may specify a global \"to\" address by invoking the ",["$","code",null,{"children":"alwaysTo"}]," method offered by the ",["$","code",null,{"children":"Mail"}]," facade. Typically, this method should be called from the ",["$","code",null,{"children":"boot"}]," method of one of your application's service providers:"]}]
12f:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use Illuminate\\Support\\Facades\\Mail;\n\n/**\n * Bootstrap any application services.\n */\npublic function boot(): void\n{\n    if ($this->app->environment('local')) {\n        Mail::alwaysTo('taylor@example.com');\n    }\n}\n"}]}]
130:["$","p",null,{"children":["When using the ",["$","code",null,{"children":"alwaysTo"}]," method, any additional \"cc\" or \"bcc\" addresses on mail messages will be removed."]}]
131:["$","a",null,{"name":"events"}]
132:["$","h2",null,{"id":"events","children":["$","a",null,{"href":"#events","children":"Events"}]}]
133:["$","p",null,{"children":["Laravel dispatches two events while sending mail messages. The ",["$","code",null,{"children":"MessageSending"}]," event is dispatched prior to a message being sent, while the ",["$","code",null,{"children":"MessageSent"}]," event is dispatched after a message has been sent. Remember, these events are dispatched when the mail is being ",["$","em",null,{"children":"sent"}],", not when it is queued. You may create ",["$","a",null,{"href":"/docs/%7B'12.x'%7D/events","children":"event listeners"}]," for these events within your application:"]}]
134:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use Illuminate\\Mail\\Events\\MessageSending;\n// use Illuminate\\Mail\\Events\\MessageSent;\n\nclass LogMessage\n{\n    /**\n     * Handle the event.\n     */\n    public function handle(MessageSending $event): void\n    {\n        // ...\n    }\n}\n"}]}]
135:["$","a",null,{"name":"custom-transports"}]
136:["$","h2",null,{"id":"custom-transports","children":["$","a",null,{"href":"#custom-transports","children":"Custom Transports"}]}]
137:["$","p",null,{"children":["Laravel includes a variety of mail transports; however, you may wish to write your own transports to deliver email via other services that Laravel does not support out of the box. To get started, define a class that extends the ",["$","code",null,{"children":"Symfony\\Component\\Mailer\\Transport\\AbstractTransport"}]," class. Then, implement the ",["$","code",null,{"children":"doSend"}]," and ",["$","code",null,{"children":"__toString"}]," methods on your transport:"]}]
14b:T4b3,<?php

namespace App\Mail;

use MailchimpTransactional\ApiClient;
use Symfony\Component\Mailer\SentMessage;
use Symfony\Component\Mailer\Transport\AbstractTransport;
use Symfony\Component\Mime\Address;
use Symfony\Component\Mime\MessageConverter;

class MailchimpTransport extends AbstractTransport
{
    /**
     * Create a new Mailchimp transport instance.
     */
    public function __construct(
        protected ApiClient $client,
    ) {
        parent::__construct();
    }

    /**
     * {@inheritDoc}
     */
    protected function doSend(SentMessage $message): void
    {
        $email = MessageConverter::toEmail($message->getOriginalMessage());

        $this->client->messages->send(['message' => [
            'from_email' => $email->getFrom(),
            'to' => collect($email->getTo())->map(function (Address $email) {
                return ['email' => $email->getAddress(), 'type' => 'to'];
            })->all(),
            'subject' => $email->getSubject(),
            'text' => $email->getTextBody(),
        ]]);
    }

    /**
     * Get the string representation of the transport.
     */
    public function __toString(): string
    {
        return 'mailchimp';
    }
}
138:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"$14b"}]}]
139:["$","p",null,{"children":["Once you've defined your custom transport, you may register it via the ",["$","code",null,{"children":"extend"}]," method provided by the ",["$","code",null,{"children":"Mail"}]," facade. Typically, this should be done within the ",["$","code",null,{"children":"boot"}]," method of your application's ",["$","code",null,{"children":"AppServiceProvider"}],". A ",["$","code",null,{"children":"$$config"}]," argument will be passed to the closure provided to the ",["$","code",null,{"children":"extend"}]," method. This argument will contain the configuration array defined for the mailer in the application's ",["$","code",null,{"children":"config/mail.php"}]," configuration file:"]}]
13a:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use App\\Mail\\MailchimpTransport;\nuse Illuminate\\Support\\Facades\\Mail;\nuse MailchimpTransactional\\ApiClient;\n\n/**\n * Bootstrap any application services.\n */\npublic function boot(): void\n{\n    Mail::extend('mailchimp', function (array $config = []) {\n        $client = new ApiClient;\n\n        $client->setApiKey($config['key']);\n\n        return new MailchimpTransport($client);\n    });\n}\n"}]}]
13b:["$","p",null,{"children":["Once your custom transport has been defined and registered, you may create a mailer definition within your application's ",["$","code",null,{"children":"config/mail.php"}]," configuration file that utilizes the new transport:"]}]
13c:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"'mailchimp' => [\n    'transport' => 'mailchimp',\n    'key' => env('MAILCHIMP_API_KEY'),\n    // ...\n],\n"}]}]
13d:["$","a",null,{"name":"additional-symfony-transports"}]
13e:["$","h3",null,{"id":"additional-symfony-transports","children":["$","a",null,{"href":"#additional-symfony-transports","children":"Additional Symfony Transports"}]}]
13f:["$","p",null,{"children":"Laravel includes support for some existing Symfony maintained mail transports like Mailgun and Postmark. However, you may wish to extend Laravel with support for additional Symfony maintained transports. You can do so by requiring the necessary Symfony mailer via Composer and registering the transport with Laravel. For example, you may install and register the \"Brevo\" (formerly \"Sendinblue\") Symfony mailer:"}]
140:["$","pre",null,{"children":["$","code",null,{"className":"language-shell","children":"composer require symfony/brevo-mailer symfony/http-client\n"}]}]
141:["$","p",null,{"children":["Once the Brevo mailer package has been installed, you may add an entry for your Brevo API credentials to your application's ",["$","code",null,{"children":"services"}]," configuration file:"]}]
142:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"'brevo' => [\n    'key' => env('BREVO_API_KEY'),\n],\n"}]}]
143:["$","p",null,{"children":["Next, you may use the ",["$","code",null,{"children":"Mail"}]," facade's ",["$","code",null,{"children":"extend"}]," method to register the transport with Laravel. Typically, this should be done within the ",["$","code",null,{"children":"boot"}]," method of a service provider:"]}]
144:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"use Illuminate\\Support\\Facades\\Mail;\nuse Symfony\\Component\\Mailer\\Bridge\\Brevo\\Transport\\BrevoTransportFactory;\nuse Symfony\\Component\\Mailer\\Transport\\Dsn;\n\n/**\n * Bootstrap any application services.\n */\npublic function boot(): void\n{\n    Mail::extend('brevo', function () {\n        return (new BrevoTransportFactory)->create(\n            new Dsn(\n                'brevo+api',\n                'default',\n                config('services.brevo.key')\n            )\n        );\n    });\n}\n"}]}]
145:["$","p",null,{"children":["Once your transport has been registered, you may create a mailer definition within your application's ",["$","code",null,{"children":"config/mail.php"}]," configuration file that utilizes the new transport:"]}]
146:["$","pre",null,{"children":["$","code",null,{"className":"language-php","children":"'brevo' => [\n    'transport' => 'brevo',\n    // ...\n],\n"}]}]
147:["$","$L14c",null,{"children":["$","$14d",null,{"name":"Next.MetadataOutlet","children":"$@14e"}]}]
14e:null
