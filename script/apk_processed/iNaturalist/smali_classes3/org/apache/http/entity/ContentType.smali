.class public final Lorg/apache/http/entity/ContentType;
.super Ljava/lang/Object;
.source "ContentType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field public static final APPLICATION_ATOM_XML:Lorg/apache/http/entity/ContentType;

.field public static final APPLICATION_FORM_URLENCODED:Lorg/apache/http/entity/ContentType;

.field public static final APPLICATION_JSON:Lorg/apache/http/entity/ContentType;

.field public static final APPLICATION_OCTET_STREAM:Lorg/apache/http/entity/ContentType;

.field public static final APPLICATION_SVG_XML:Lorg/apache/http/entity/ContentType;

.field public static final APPLICATION_XHTML_XML:Lorg/apache/http/entity/ContentType;

.field public static final APPLICATION_XML:Lorg/apache/http/entity/ContentType;

.field public static final DEFAULT_BINARY:Lorg/apache/http/entity/ContentType;

.field public static final DEFAULT_TEXT:Lorg/apache/http/entity/ContentType;

.field public static final MULTIPART_FORM_DATA:Lorg/apache/http/entity/ContentType;

.field public static final TEXT_HTML:Lorg/apache/http/entity/ContentType;

.field public static final TEXT_PLAIN:Lorg/apache/http/entity/ContentType;

.field public static final TEXT_XML:Lorg/apache/http/entity/ContentType;

.field public static final WILDCARD:Lorg/apache/http/entity/ContentType;

.field private static final serialVersionUID:J = -0x6bcff2af98b1a2b8L


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final mimeType:Ljava/lang/String;

.field private final params:[Lorg/apache/http/NameValuePair;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "application/atom+xml"

    .line 64
    sget-object v1, Lorg/apache/http/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->APPLICATION_ATOM_XML:Lorg/apache/http/entity/ContentType;

    const-string v0, "application/x-www-form-urlencoded"

    .line 66
    sget-object v1, Lorg/apache/http/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->APPLICATION_FORM_URLENCODED:Lorg/apache/http/entity/ContentType;

    const-string v0, "application/json"

    .line 68
    sget-object v1, Lorg/apache/http/Consts;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->APPLICATION_JSON:Lorg/apache/http/entity/ContentType;

    const-string v0, "application/octet-stream"

    const/4 v1, 0x0

    .line 70
    check-cast v1, Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->APPLICATION_OCTET_STREAM:Lorg/apache/http/entity/ContentType;

    const-string v0, "application/svg+xml"

    .line 72
    sget-object v2, Lorg/apache/http/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->APPLICATION_SVG_XML:Lorg/apache/http/entity/ContentType;

    const-string v0, "application/xhtml+xml"

    .line 74
    sget-object v2, Lorg/apache/http/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->APPLICATION_XHTML_XML:Lorg/apache/http/entity/ContentType;

    const-string v0, "application/xml"

    .line 76
    sget-object v2, Lorg/apache/http/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->APPLICATION_XML:Lorg/apache/http/entity/ContentType;

    const-string v0, "multipart/form-data"

    .line 78
    sget-object v2, Lorg/apache/http/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->MULTIPART_FORM_DATA:Lorg/apache/http/entity/ContentType;

    const-string v0, "text/html"

    .line 80
    sget-object v2, Lorg/apache/http/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->TEXT_HTML:Lorg/apache/http/entity/ContentType;

    const-string v0, "text/plain"

    .line 82
    sget-object v2, Lorg/apache/http/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->TEXT_PLAIN:Lorg/apache/http/entity/ContentType;

    const-string v0, "text/xml"

    .line 84
    sget-object v2, Lorg/apache/http/Consts;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {v0, v2}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->TEXT_XML:Lorg/apache/http/entity/ContentType;

    const-string v0, "*/*"

    .line 86
    invoke-static {v0, v1}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/ContentType;->WILDCARD:Lorg/apache/http/entity/ContentType;

    .line 90
    sget-object v0, Lorg/apache/http/entity/ContentType;->TEXT_PLAIN:Lorg/apache/http/entity/ContentType;

    sput-object v0, Lorg/apache/http/entity/ContentType;->DEFAULT_TEXT:Lorg/apache/http/entity/ContentType;

    .line 91
    sget-object v0, Lorg/apache/http/entity/ContentType;->APPLICATION_OCTET_STREAM:Lorg/apache/http/entity/ContentType;

    sput-object v0, Lorg/apache/http/entity/ContentType;->DEFAULT_BINARY:Lorg/apache/http/entity/ContentType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lorg/apache/http/entity/ContentType;->mimeType:Ljava/lang/String;

    .line 101
    iput-object p2, p0, Lorg/apache/http/entity/ContentType;->charset:Ljava/nio/charset/Charset;

    const/4 p1, 0x0

    .line 102
    iput-object p1, p0, Lorg/apache/http/entity/ContentType;->params:[Lorg/apache/http/NameValuePair;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lorg/apache/http/entity/ContentType;->mimeType:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lorg/apache/http/entity/ContentType;->params:[Lorg/apache/http/NameValuePair;

    const-string p1, "charset"

    .line 110
    invoke-virtual {p0, p1}, Lorg/apache/http/entity/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-static {p1}, Lorg/apache/http/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/apache/http/entity/ContentType;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lorg/apache/http/entity/ContentType;
    .locals 2

    .line 188
    new-instance v0, Lorg/apache/http/entity/ContentType;

    const/4 v1, 0x0

    check-cast v1, Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Lorg/apache/http/entity/ContentType;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/entity/ContentType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    .line 204
    invoke-static {p1}, Lorg/apache/http/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;
    .locals 2

    const-string v0, "MIME type"

    .line 175
    invoke-static {p0, v0}, Lorg/apache/http/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 176
    invoke-static {p0}, Lorg/apache/http/entity/ContentType;->valid(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "MIME type may not contain reserved characters"

    invoke-static {v0, v1}, Lorg/apache/http/util/Args;->check(ZLjava/lang/String;)V

    .line 177
    new-instance v0, Lorg/apache/http/entity/ContentType;

    invoke-direct {v0, p0, p1}, Lorg/apache/http/entity/ContentType;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static create(Lorg/apache/http/HeaderElement;)Lorg/apache/http/entity/ContentType;
    .locals 3

    .line 208
    invoke-interface {p0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-interface {p0}, Lorg/apache/http/HeaderElement;->getParameters()[Lorg/apache/http/NameValuePair;

    move-result-object p0

    .line 210
    new-instance v1, Lorg/apache/http/entity/ContentType;

    if-eqz p0, :cond_0

    array-length v2, p0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-direct {v1, v0, p0}, Lorg/apache/http/entity/ContentType;-><init>(Ljava/lang/String;[Lorg/apache/http/NameValuePair;)V

    return-object v1
.end method

.method public static get(Lorg/apache/http/HttpEntity;)Lorg/apache/http/entity/ContentType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;,
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 254
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 256
    invoke-interface {p0}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object p0

    .line 257
    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v0, 0x0

    .line 258
    aget-object p0, p0, v0

    invoke-static {p0}, Lorg/apache/http/entity/ContentType;->create(Lorg/apache/http/HeaderElement;)Lorg/apache/http/entity/ContentType;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getOrDefault(Lorg/apache/http/HttpEntity;)Lorg/apache/http/entity/ContentType;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;,
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    .line 277
    invoke-static {p0}, Lorg/apache/http/entity/ContentType;->get(Lorg/apache/http/HttpEntity;)Lorg/apache/http/entity/ContentType;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    sget-object p0, Lorg/apache/http/entity/ContentType;->DEFAULT_TEXT:Lorg/apache/http/entity/ContentType;

    :goto_0
    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/http/entity/ContentType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;,
            Ljava/nio/charset/UnsupportedCharsetException;
        }
    .end annotation

    const-string v0, "Content type"

    .line 225
    invoke-static {p0, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 226
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 227
    invoke-virtual {v0, p0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 228
    new-instance v1, Lorg/apache/http/message/ParserCursor;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 229
    sget-object v2, Lorg/apache/http/message/BasicHeaderValueParserHC4;->INSTANCE:Lorg/apache/http/message/BasicHeaderValueParserHC4;

    invoke-virtual {v2, v0, v1}, Lorg/apache/http/message/BasicHeaderValueParserHC4;->parseElements(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/HeaderElement;

    move-result-object v0

    .line 230
    array-length v1, v0

    if-lez v1, :cond_0

    .line 231
    aget-object p0, v0, v3

    invoke-static {p0}, Lorg/apache/http/entity/ContentType;->create(Lorg/apache/http/HeaderElement;)Lorg/apache/http/entity/ContentType;

    move-result-object p0

    return-object p0

    .line 233
    :cond_0
    new-instance v0, Lorg/apache/http/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid content type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static valid(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 157
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 158
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/http/entity/ContentType;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/http/entity/ContentType;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "Parameter name"

    .line 126
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 127
    iget-object v0, p0, Lorg/apache/http/entity/ContentType;->params:[Lorg/apache/http/NameValuePair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/apache/http/entity/ContentType;->params:[Lorg/apache/http/NameValuePair;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 131
    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 132
    invoke-interface {v4}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 144
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 145
    iget-object v1, p0, Lorg/apache/http/entity/ContentType;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lorg/apache/http/entity/ContentType;->params:[Lorg/apache/http/NameValuePair;

    if-eqz v1, :cond_0

    const-string v1, "; "

    .line 147
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 148
    sget-object v1, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;->INSTANCE:Lorg/apache/http/message/BasicHeaderValueFormatterHC4;

    iget-object v2, p0, Lorg/apache/http/entity/ContentType;->params:[Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/http/message/BasicHeaderValueFormatterHC4;->formatParameters(Lorg/apache/http/util/CharArrayBuffer;[Lorg/apache/http/NameValuePair;Z)Lorg/apache/http/util/CharArrayBuffer;

    goto :goto_0

    .line 149
    :cond_0
    iget-object v1, p0, Lorg/apache/http/entity/ContentType;->charset:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_1

    const-string v1, "; charset="

    .line 150
    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lorg/apache/http/entity/ContentType;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 153
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCharset(Ljava/lang/String;)Lorg/apache/http/entity/ContentType;
    .locals 1

    .line 302
    invoke-virtual {p0}, Lorg/apache/http/entity/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/entity/ContentType;

    move-result-object p1

    return-object p1
.end method

.method public withCharset(Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lorg/apache/http/entity/ContentType;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/entity/ContentType;->create(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/apache/http/entity/ContentType;

    move-result-object p1

    return-object p1
.end method
