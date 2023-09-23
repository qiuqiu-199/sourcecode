.class public Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "MimeVersionFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/MimeVersionField;


# static fields
.field public static final PARSER:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser<",
            "Lorg/apache/james/mime4j/dom/field/MimeVersionField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private major:I

.field private minor:I

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;->parsed:Z

    const/4 p2, 0x1

    .line 41
    iput p2, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;->major:I

    .line 42
    iput p1, p0, Lorg/apache/james/mime4j/field/MimeVersionFieldImpl;->minor:I

    return-void
.end method
