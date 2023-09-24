.class public Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;
.super Lorg/apache/http/impl/cookie/CookieSpecBaseHC4;
.source "BrowserCompatSpecHC4.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final DEFAULT_DATE_PATTERNS:[Ljava/lang/String;


# instance fields
.field private final datepatterns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xe

    .line 63
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "EEE, dd-MMM-yy HH:mm:ss zzz"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "EEE MMM d HH:mm:ss yyyy"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "EEE, dd-MMM-yyyy HH:mm:ss z"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "EEE, dd-MMM-yyyy HH-mm-ss z"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "EEE, dd MMM yy HH:mm:ss z"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "EEE dd-MMM-yyyy HH:mm:ss z"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "EEE dd MMM yyyy HH:mm:ss z"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "EEE dd-MMM-yyyy HH-mm-ss z"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "EEE dd-MMM-yy HH:mm:ss z"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "EEE dd MMM yy HH:mm:ss z"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "EEE,dd-MMM-yy HH:mm:ss z"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "EEE,dd-MMM-yyyy HH:mm:ss z"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "EEE, dd-MM-yyyy HH:mm:ss z"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->DEFAULT_DATE_PATTERNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 123
    sget-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;->SECURITYLEVEL_DEFAULT:Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;-><init>([Ljava/lang/String;Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 118
    sget-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;->SECURITYLEVEL_DEFAULT:Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;-><init>([Ljava/lang/String;Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Lorg/apache/http/impl/cookie/CookieSpecBaseHC4;-><init>()V

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->datepatterns:[Ljava/lang/String;

    goto :goto_0

    .line 88
    :cond_0
    sget-object p1, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->DEFAULT_DATE_PATTERNS:[Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->datepatterns:[Ljava/lang/String;

    .line 90
    :goto_0
    sget-object p1, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4$2;->$SwitchMap$org$apache$http$impl$cookie$BrowserCompatSpecFactoryHC4$SecurityLevel:[I

    invoke-virtual {p2}, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactoryHC4$SecurityLevel;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_0

    .line 104
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unknown security level"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const-string p1, "path"

    .line 95
    new-instance p2, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4$1;

    invoke-direct {p2, p0}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4$1;-><init>(Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    goto :goto_1

    :pswitch_1
    const-string p1, "path"

    .line 92
    new-instance p2, Lorg/apache/http/impl/cookie/BasicPathHandlerHC4;

    invoke-direct {p2}, Lorg/apache/http/impl/cookie/BasicPathHandlerHC4;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    :goto_1
    const-string p1, "domain"

    .line 107
    new-instance p2, Lorg/apache/http/impl/cookie/BasicDomainHandlerHC4;

    invoke-direct {p2}, Lorg/apache/http/impl/cookie/BasicDomainHandlerHC4;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    const-string p1, "max-age"

    .line 108
    new-instance p2, Lorg/apache/http/impl/cookie/BasicMaxAgeHandlerHC4;

    invoke-direct {p2}, Lorg/apache/http/impl/cookie/BasicMaxAgeHandlerHC4;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    const-string p1, "secure"

    .line 109
    new-instance p2, Lorg/apache/http/impl/cookie/BasicSecureHandlerHC4;

    invoke-direct {p2}, Lorg/apache/http/impl/cookie/BasicSecureHandlerHC4;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    const-string p1, "comment"

    .line 110
    new-instance p2, Lorg/apache/http/impl/cookie/BasicCommentHandlerHC4;

    invoke-direct {p2}, Lorg/apache/http/impl/cookie/BasicCommentHandlerHC4;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    const-string p1, "expires"

    .line 111
    new-instance p2, Lorg/apache/http/impl/cookie/BasicExpiresHandlerHC4;

    iget-object v0, p0, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->datepatterns:[Ljava/lang/String;

    invoke-direct {p2, v0}, Lorg/apache/http/impl/cookie/BasicExpiresHandlerHC4;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    const-string p1, "version"

    .line 113
    new-instance p2, Lorg/apache/http/impl/cookie/BrowserCompatVersionAttributeHandler;

    invoke-direct {p2}, Lorg/apache/http/impl/cookie/BrowserCompatVersionAttributeHandler;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->registerAttribHandler(Ljava/lang/String;Lorg/apache/http/cookie/CookieAttributeHandler;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isQuoteEnclosed(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "\""

    .line 172
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    const-string v0, "List of cookies"

    .line 176
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 177
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x14

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    const-string v1, "Cookie"

    .line 178
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v1, ": "

    .line 179
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 180
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 181
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/cookie/Cookie;

    if-lez v2, :cond_0

    const-string v4, "; "

    .line 183
    invoke-virtual {v0, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 185
    :cond_0
    invoke-interface {v3}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    .line 186
    invoke-interface {v3}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 187
    invoke-interface {v3}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v3

    if-lez v3, :cond_1

    invoke-static {v5}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->isQuoteEnclosed(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 188
    sget-object v3, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;->INSTANCE:Lorg/apache/http/message/BasicHeaderValueFormatterHC4;

    new-instance v6, Lorg/apache/http/message/BasicHeaderElement;

    invoke-direct {v6, v4, v5}, Lorg/apache/http/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v6, v1}, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;->formatHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;

    goto :goto_1

    .line 194
    :cond_1
    invoke-virtual {v0, v4}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string v3, "="

    .line 195
    invoke-virtual {v0, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    if-eqz v5, :cond_2

    .line 197
    invoke-virtual {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    new-instance v1, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v1, v0}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionHeader()Lorg/apache/http/Header;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/Header;",
            "Lorg/apache/http/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    const-string v0, "Header"

    .line 128
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    .line 129
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    invoke-interface {p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Set-Cookie"

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 135
    invoke-interface {p1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v0

    .line 138
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v3, v1, :cond_2

    aget-object v7, v0, v3

    const-string v8, "version"

    .line 139
    invoke-interface {v7, v8}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v8

    if-eqz v8, :cond_0

    const/4 v5, 0x1

    :cond_0
    const-string v8, "expires"

    .line 142
    invoke-interface {v7, v8}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v7

    if-eqz v7, :cond_1

    const/4 v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_4

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    move-object p1, v0

    goto :goto_3

    .line 149
    :cond_4
    :goto_1
    sget-object v0, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParserHC4;->DEFAULT:Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParserHC4;

    .line 152
    instance-of v1, p1, Lorg/apache/http/FormattedHeader;

    if-eqz v1, :cond_5

    .line 153
    check-cast p1, Lorg/apache/http/FormattedHeader;

    invoke-interface {p1}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v1

    .line 154
    new-instance v3, Lorg/apache/http/message/ParserCursor;

    invoke-interface {p1}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    move-result p1

    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v4

    invoke-direct {v3, p1, v4}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    goto :goto_2

    .line 158
    :cond_5
    invoke-interface {p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 162
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v3}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 163
    invoke-virtual {v1, p1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 164
    new-instance v3, Lorg/apache/http/message/ParserCursor;

    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result p1

    invoke-direct {v3, v2, p1}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 166
    :goto_2
    new-array p1, v6, [Lorg/apache/http/HeaderElement;

    invoke-virtual {v0, v1, v3}, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParserHC4;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    move-result-object v0

    aput-object v0, p1, v2

    .line 168
    :goto_3
    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/cookie/BrowserCompatSpecHC4;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 160
    :cond_6
    new-instance p1, Lorg/apache/http/cookie/MalformedCookieException;

    const-string p2, "Header value is null"

    invoke-direct {p1, p2}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_7
    new-instance p2, Lorg/apache/http/cookie/MalformedCookieException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized cookie header \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "compatibility"

    return-object v0
.end method
