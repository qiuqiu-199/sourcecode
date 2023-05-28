.class public Lorg/apache/http/client/utils/URIBuilder;
.super Ljava/lang/Object;
.source "URIBuilder.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private encodedAuthority:Ljava/lang/String;

.field private encodedFragment:Ljava/lang/String;

.field private encodedPath:Ljava/lang/String;

.field private encodedQuery:Ljava/lang/String;

.field private encodedSchemeSpecificPart:Ljava/lang/String;

.field private encodedUserInfo:Ljava/lang/String;

.field private fragment:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private port:I

.field private query:Ljava/lang/String;

.field private queryParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private scheme:Ljava/lang/String;

.field private userInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 70
    iput v0, p0, Lorg/apache/http/client/utils/URIBuilder;->port:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/apache/http/client/utils/URIBuilder;->digestURI(Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-direct {p0, p1}, Lorg/apache/http/client/utils/URIBuilder;->digestURI(Ljava/net/URI;)V

    return-void
.end method

.method private buildString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    :cond_0
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 115
    :cond_1
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedAuthority:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "//"

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 117
    :cond_2
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->host:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, "//"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedUserInfo:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 120
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedUserInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 121
    :cond_3
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->userInfo:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 122
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->userInfo:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/http/client/utils/URIBuilder;->encodeUserInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_4
    :goto_0
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->host:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/http/conn/util/InetAddressUtilsHC4;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "["

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 127
    :cond_5
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :goto_1
    iget v1, p0, Lorg/apache/http/client/utils/URIBuilder;->port:I

    if-ltz v1, :cond_6

    const-string v1, ":"

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/http/client/utils/URIBuilder;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    :cond_6
    :goto_2
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedPath:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 134
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedPath:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/http/client/utils/URIBuilder;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 135
    :cond_7
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->path:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 136
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->path:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/http/client/utils/URIBuilder;->normalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/http/client/utils/URIBuilder;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_8
    :goto_3
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v1, "?"

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 140
    :cond_9
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    if-eqz v1, :cond_a

    const-string v1, "?"

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/http/client/utils/URIBuilder;->encodeUrlForm(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 142
    :cond_a
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->query:Ljava/lang/String;

    if-eqz v1, :cond_b

    const-string v1, "?"

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->query:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/http/client/utils/URIBuilder;->encodeUric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_b
    :goto_4
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedFragment:Ljava/lang/String;

    if-eqz v1, :cond_c

    const-string v1, "#"

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedFragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 148
    :cond_c
    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_d

    const-string v1, "#"

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->fragment:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/apache/http/client/utils/URIBuilder;->encodeUric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :cond_d
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private digestURI(Ljava/net/URI;)V
    .locals 2

    .line 155
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->scheme:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedAuthority:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->host:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/http/client/utils/URIBuilder;->port:I

    .line 160
    invoke-virtual {p1}, Ljava/net/URI;->getRawUserInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedUserInfo:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->userInfo:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedPath:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->path:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Lorg/apache/http/client/utils/URIBuilder;->parseQuery(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    .line 166
    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedFragment:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->fragment:Ljava/lang/String;

    return-void
.end method

.method private encodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 175
    sget-object v0, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->encPath(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private encodeUric(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 183
    sget-object v0, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->encUric(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private encodeUrlForm(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 179
    sget-object v0, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->format(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private encodeUserInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 171
    sget-object v0, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->encUserInfo(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static normalizePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 479
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 480
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    sub-int/2addr v0, v1

    .line 485
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method private parseQuery(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 95
    invoke-static {p1, p2}, Lorg/apache/http/client/utils/URLEncodedUtilsHC4;->parse(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 2

    .line 347
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    if-nez v0, :cond_0

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    .line 350
    :cond_0
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 351
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    .line 352
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 353
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->query:Ljava/lang/String;

    return-object p0
.end method

.method public addParameters(Ljava/util/List;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/apache/http/client/utils/URIBuilder;"
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    .line 308
    :cond_0
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    .line 309
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    .line 310
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 311
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->query:Ljava/lang/String;

    return-object p0
.end method

.method public build()Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/net/URI;

    invoke-direct {p0}, Lorg/apache/http/client/utils/URIBuilder;->buildString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public clearParameters()Lorg/apache/http/client/utils/URIBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 389
    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    .line 390
    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    .line 391
    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    return-object p0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .line 465
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 445
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 453
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 449
    iget v0, p0, Lorg/apache/http/client/utils/URIBuilder;->port:I

    return v0
.end method

.method public getQueryParams()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 458
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 460
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 437
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    .line 441
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public isAbsolute()Z
    .locals 1

    .line 426
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->scheme:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .line 433
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeQuery()Lorg/apache/http/client/utils/URIBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 248
    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    .line 249
    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->query:Ljava/lang/String;

    .line 250
    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    .line 251
    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    return-object p0
.end method

.method public setCustomQuery(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 0

    .line 405
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->query:Ljava/lang/String;

    const/4 p1, 0x0

    .line 406
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    .line 407
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 408
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    return-object p0
.end method

.method public setFragment(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 0

    .line 417
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->fragment:Ljava/lang/String;

    const/4 p1, 0x0

    .line 418
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedFragment:Ljava/lang/String;

    return-object p0
.end method

.method public setHost(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 0

    .line 218
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->host:Ljava/lang/String;

    const/4 p1, 0x0

    .line 219
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 220
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 2

    .line 365
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    if-nez v0, :cond_0

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    .line 368
    :cond_0
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 369
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 370
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 371
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 376
    :cond_2
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 377
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    .line 378
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 379
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->query:Ljava/lang/String;

    return-object p0
.end method

.method public setParameters(Ljava/util/List;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/apache/http/client/utils/URIBuilder;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    goto :goto_0

    .line 286
    :cond_0
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 288
    :goto_0
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    .line 289
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    .line 290
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 291
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->query:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setParameters([Lorg/apache/http/NameValuePair;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 4

    .line 325
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    goto :goto_0

    .line 328
    :cond_0
    iget-object v0, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 330
    :goto_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 331
    iget-object v3, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 333
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    .line 334
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 335
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->query:Ljava/lang/String;

    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 0

    .line 238
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->path:Ljava/lang/String;

    const/4 p1, 0x0

    .line 239
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 240
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedPath:Ljava/lang/String;

    return-object p0
.end method

.method public setPort(I)Lorg/apache/http/client/utils/URIBuilder;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, -0x1

    .line 228
    :cond_0
    iput p1, p0, Lorg/apache/http/client/utils/URIBuilder;->port:I

    const/4 p1, 0x0

    .line 229
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 230
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 266
    sget-object v0, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lorg/apache/http/client/utils/URIBuilder;->parseQuery(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->queryParams:Ljava/util/List;

    const/4 p1, 0x0

    .line 267
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->query:Ljava/lang/String;

    .line 268
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedQuery:Ljava/lang/String;

    .line 269
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    return-object p0
.end method

.method public setScheme(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 0

    .line 190
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->scheme:Ljava/lang/String;

    return-object p0
.end method

.method public setUserInfo(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 0

    .line 199
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->userInfo:Ljava/lang/String;

    const/4 p1, 0x0

    .line 200
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedSchemeSpecificPart:Ljava/lang/String;

    .line 201
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedAuthority:Ljava/lang/String;

    .line 202
    iput-object p1, p0, Lorg/apache/http/client/utils/URIBuilder;->encodedUserInfo:Ljava/lang/String;

    return-object p0
.end method

.method public setUserInfo(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;
    .locals 1

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/http/client/utils/URIBuilder;->setUserInfo(Ljava/lang/String;)Lorg/apache/http/client/utils/URIBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 470
    invoke-direct {p0}, Lorg/apache/http/client/utils/URIBuilder;->buildString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
