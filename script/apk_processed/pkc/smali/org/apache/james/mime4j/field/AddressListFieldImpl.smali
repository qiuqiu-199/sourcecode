.class public Lorg/apache/james/mime4j/field/AddressListFieldImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "AddressListFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/AddressListField;


# static fields
.field public static final PARSER:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser<",
            "Lorg/apache/james/mime4j/dom/field/AddressListField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lorg/apache/james/mime4j/field/AddressListFieldImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/AddressListFieldImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/AddressListFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/AddressListFieldImpl;->parsed:Z

    return-void
.end method
