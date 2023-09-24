.class public Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;
.super Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;
.source "TwitterResource.java"


# static fields
.field public static final CERT_PINS:[Ljava/lang/String;

.field private static cachedAuthToken:Ljava/lang/String;


# instance fields
.field final mHandle:Ljava/lang/String;

.field final mTweetId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    return-void

    const-string v0, "M_InsDal"

    const-string v1, "Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;---><clinit>()V"

    invoke-static/range {v0 .. v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method constructor <init>(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    .line 63
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;-><init>(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;)V

    .line 65
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;->mHandle:Ljava/lang/String;

    .line 66
    iput-object p2, v0, Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;->mTweetId:Ljava/lang/String;

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;---><init>(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(Ljava/net/URI;)Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;
    .locals 5

    move-object/16 v2, p0

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1, v2}, Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;->create(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;)Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;--->create(Ljava/net/URI;)Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static create(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;)Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URI;",
            ")",
            "Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;"
        }
    .end annotation

    move-object/16 v8, p0

    move-object/16 v9, p1

    move-object/16 v10, p2

    .line 76
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "https://twitter\\.com/([a-zA-Z0-9_]+)/status/([0-9]+)"

    .line 80
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 81
    invoke-virtual {v10}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x1

    .line 85
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x2

    .line 86
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 88
    new-instance v0, Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;

    move-object v2, v0

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-direct/range {v2 .. v7}, Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;-><init>(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    :goto_0
    return-object v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;--->create(Ljava/util/Set;Ljava/util/HashMap;Ljava/net/URI;)Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static getAuthToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource$HttpStatusException;,
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/16 v5, p0

    .line 231
    sget-object v5, Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;->cachedAuthToken:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 232
    sget-object v5, Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;->cachedAuthToken:Ljava/lang/String;

    return-object v5

    .line 234
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "D293FQqanH0jH29KIaWJER5DomqSGRE2Ewc1LJACn3cbD1cFq1bmqSAQAz5MI2cIHKOuo3cPoRAQI1OyqmIVFJS6LHMXq2g6MRLkIj"

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;->rot13(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v0, "application/x-www-form-urlencoded;charset=UTF-8"

    .line 238
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    const-string v1, "grant_type=client_credentials"

    .line 237
    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 242
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    const-string v2, "https://api.twitter.com/oauth2/token"

    .line 243
    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Basic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 244
    invoke-virtual {v1, v2, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded;charset=UTF-8"

    .line 245
    invoke-virtual {v5, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    const-string v1, "User-Agent"

    const-string v2, "OpenKeychain"

    .line 246
    invoke-virtual {v5, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 247
    invoke-virtual {v5, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v5

    .line 248
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v5

    .line 250
    new-instance v0, Lorg/json/JSONObject;

    sget-object v1, Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;->CERT_PINS:[Ljava/lang/String;

    invoke-static {v5, v1}, Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;->getResponseBody(Lokhttp3/Request;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "bearer"

    const/4 v1, 0x1

    .line 254
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "token_type"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/textuality/keybase/lib/JWalk;->getString(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 255
    new-instance v5, Lorg/json/JSONException;

    const-string v0, "Expected bearer token in response!"

    invoke-direct {v5, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    const-string v5, "access_token"

    .line 258
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;->cachedAuthToken:Ljava/lang/String;

    .line 259
    sget-object v5, Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;->cachedAuthToken:Ljava/lang/String;

    return-object v5

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;--->getAuthToken(Landroid/content/Context;)Ljava/lang/String;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static rot13(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    move-object/16 v4, p0

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 265
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 266
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-lt v2, v3, :cond_0

    const/16 v3, 0x6d

    if-gt v2, v3, :cond_0

    add-int/lit8 v2, v2, 0xd

    int-to-char v2, v2

    goto :goto_1

    :cond_0
    const/16 v3, 0x41

    if-lt v2, v3, :cond_1

    const/16 v3, 0x4d

    if-gt v2, v3, :cond_1

    add-int/lit8 v2, v2, 0xd

    int-to-char v2, v2

    goto :goto_1

    :cond_1
    const/16 v3, 0x6e

    if-lt v2, v3, :cond_2

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_2

    add-int/lit8 v2, v2, -0xd

    int-to-char v2, v2

    goto :goto_1

    :cond_2
    const/16 v3, 0x4e

    if-lt v2, v3, :cond_3

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_3

    add-int/lit8 v2, v2, -0xd

    int-to-char v2, v2

    .line 271
    :cond_3
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;--->rot13(Ljava/lang/String;)Ljava/lang/String;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static searchInTwitterStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    move-object/16 v8, p2

    move-object/16 p0, p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 173
    :try_start_0
    invoke-static {v6}, Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;->getAuthToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource$HttpStatusException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    .line 179
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://api.twitter.com/1.1/statuses/user_timeline.json?screen_name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&count=15&include_rts=false&trim_user=true&exclude_replies=true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bearer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 186
    invoke-virtual {v2, v3, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    .line 187
    invoke-virtual {v6, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    const-string v2, "User-Agent"

    const-string v3, "OpenKeychain"

    .line 188
    invoke-virtual {v6, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 189
    invoke-virtual {v6}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v6

    const/4 v2, 0x0

    .line 192
    :try_start_1
    sget-object v3, Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;->CERT_PINS:[Ljava/lang/String;

    invoke-static {v6, v3}, Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;->getResponseBody(Lokhttp3/Request;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 193
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 195
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v6, v4, :cond_1

    .line 196
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "text"

    .line 197
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 198
    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v6, "id_str"

    .line 199
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 200
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://twitter.com/"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/status/"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    .line 201
    invoke-static {v6}, Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;->create(Ljava/net/URI;)Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;

    move-result-object v6

    return-object v6

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 206
    :cond_1
    sget-object v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_LV_FETCH_ERROR_NOTHING:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {p0, v6, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V
    :try_end_1
    .catch Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource$HttpStatusException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v6

    const-string v7, "json error"

    .line 219
    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    sget-object v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_LV_FETCH_ERROR_FORMAT:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {p0, v6, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    goto :goto_1

    :catch_1
    move-exception v6

    const-string v7, "io error"

    .line 216
    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    sget-object v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_LV_FETCH_ERROR_IO:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {p0, v6, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    goto :goto_1

    .line 214
    :catch_2
    sget-object v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_LV_FETCH_ERROR_URL:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {p0, v6, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    goto :goto_1

    :catch_3
    move-exception v6

    .line 211
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http error ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource$HttpStatusException;->getStatus()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource$HttpStatusException;->getReason()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    sget-object v7, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_LV_FETCH_ERROR:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource$HttpStatusException;->getStatus()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v2

    invoke-virtual {p0, v7, v1, v8}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I[Ljava/lang/Object;)V

    :goto_1
    return-object v0

    .line 175
    :catch_4
    sget-object v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_LV_ERROR_TWITTER_AUTH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {p0, v6, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return-object v0

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;--->searchInTwitterStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;)Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected fetchResource(Landroid/content/Context;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource$HttpStatusException;,
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/16 v5, p0

    move-object/16 v6, p1

    move-object/16 v7, p2

    move/16 p0, p3

    const/4 v0, 0x0

    .line 99
    :try_start_0
    invoke-static {v6}, Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;->getAuthToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource$HttpStatusException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://api.twitter.com/1.1/statuses/show.json?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v5, Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;->mTweetId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&include_entities=false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 111
    invoke-virtual {v1, v2, v6}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 112
    invoke-virtual {v6, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    const-string v1, "User-Agent"

    const-string v2, "OpenKeychain"

    .line 113
    invoke-virtual {v6, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v6

    .line 114
    invoke-virtual {v6}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v6

    .line 117
    :try_start_1
    sget-object v1, Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;->CERT_PINS:[Ljava/lang/String;

    invoke-static {v6, v1}, Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;->getResponseBody(Lokhttp3/Request;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 118
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "user"

    .line 119
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 120
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;->mHandle:Ljava/lang/String;

    const-string v3, "screen_name"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 121
    sget-object v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_LV_ERROR_TWITTER_HANDLE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v6, p0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return-object v0

    :cond_0
    const-string v6, "text"

    .line 126
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v6

    .line 128
    :catch_0
    sget-object v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_LV_ERROR_TWITTER_RESPONSE:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v6, p0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return-object v0

    .line 101
    :catch_1
    sget-object v6, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_LV_ERROR_TWITTER_AUTH:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v7, v6, p0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    return-object v0

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;--->fetchResource(Landroid/content/Context;Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;I)Ljava/lang/String;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getDisplayComment(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "@"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;->mHandle:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;--->getDisplayComment(Landroid/content/Context;)Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getDisplayIcon()I
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0800fb

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;--->getDisplayIcon()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    const v0, 0x7f110956

    .line 147
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;--->getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getVerifiedText(Z)I
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    if-eqz v1, :cond_0

    const v1, 0x7f11095d

    goto :goto_0

    :cond_0
    const v1, 0x7f11095e

    :goto_0
    return v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;--->getVerifiedText(Z)I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getViewIntent()Landroid/content/Intent;
    .locals 5

    move-object/16 v2, p0

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 163
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;->mSubUri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;--->getViewIntent()Landroid/content/Intent;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isViewable()Z
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x1

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/linked/resources/TwitterResource;--->isViewable()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
