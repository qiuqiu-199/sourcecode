.class public Lorg/apache/james/mime4j/field/MailboxListFieldImpl;
.super Lorg/apache/james/mime4j/field/AbstractField;
.source "MailboxListFieldImpl.java"

# interfaces
.implements Lorg/apache/james/mime4j/dom/field/MailboxListField;


# static fields
.field public static final PARSER:Lorg/apache/james/mime4j/dom/FieldParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/james/mime4j/dom/FieldParser<",
            "Lorg/apache/james/mime4j/dom/field/MailboxListField;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lorg/apache/james/mime4j/field/MailboxListFieldImpl$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/MailboxListFieldImpl$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/MailboxListFieldImpl;->PARSER:Lorg/apache/james/mime4j/dom/FieldParser;

    return-void
.end method

.method constructor <init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Lorg/apache/james/mime4j/stream/Field;Lorg/apache/james/mime4j/codec/DecodeMonitor;)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lorg/apache/james/mime4j/field/MailboxListFieldImpl;->parsed:Z

    return-void
.end method
