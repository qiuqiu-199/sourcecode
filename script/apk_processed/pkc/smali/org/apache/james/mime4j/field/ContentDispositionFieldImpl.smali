.class public Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "ContentDispositionFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/ContentDispositionField;


# static fields
.field public static final PARSER:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser<",
            "Lorg/apache/james/mime4j/dom/field/ContentDispositionField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dispositionType:Ljava/lang/String;

.field private final parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parseException:Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 251
    new-instance v0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parsed:Z

    const-string p1, ""

    .line 46
    iput-object p1, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->dispositionType:Ljava/lang/String;

    .line 47
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parameters:Ljava/util/Map;

    return-void
.end method

.method private parse()V
    .locals 7

    .line 218
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    .line 220
    new-instance v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;-><init>(Ljava/io/Reader;)V

    .line 223
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->parseAll()V
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/james/mime4j/field/contentdisposition/parser/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 227
    new-instance v2, Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parseException:Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;

    goto :goto_0

    :catch_1
    move-exception v0

    .line 225
    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parseException:Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;

    .line 230
    :goto_0
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->getDispositionType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->dispositionType:Ljava/lang/String;

    .line 235
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->getParamNames()Ljava/util/List;

    move-result-object v0

    .line 236
    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->getParamValues()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 239
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    .line 241
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 242
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 243
    iget-object v6, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parameters:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parsed:Z

    return-void
.end method


# virtual methods
.method public getFilename()Ljava/lang/String;
    .locals 1

    const-string v0, "filename"

    .line 139
    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 89
    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parsed:Z

    if-nez v0, :cond_0

    .line 90
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parse()V

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentDispositionFieldImpl;->parameters:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
