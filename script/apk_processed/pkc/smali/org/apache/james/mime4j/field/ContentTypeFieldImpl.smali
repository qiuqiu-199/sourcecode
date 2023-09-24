.class public Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "ContentTypeFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/ContentTypeField;


# static fields
.field public static final PARSER:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser<",
            "Lorg/apache/james/mime4j/dom/field/ContentTypeField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mediaType:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;

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

.field private parsed:Z

.field private subType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 225
    new-instance v0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->parsed:Z

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->mimeType:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->mediaType:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->subType:Ljava/lang/String;

    .line 45
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/field/ContentTypeFieldImpl;->parameters:Ljava/util/Map;

    return-void
.end method
