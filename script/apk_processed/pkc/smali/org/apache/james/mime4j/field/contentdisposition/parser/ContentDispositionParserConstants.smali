.class public interface abstract Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserConstants;
.super Ljava/lang/Object;
.source "ContentDispositionParserConstants.java"


# static fields
.field public static final tokenImage:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x17

    .line 56
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "<EOF>"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "\"\\r\""

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "\"\\n\""

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "\";\""

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "\"=\""

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "<WS>"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "\"(\""

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "\")\""

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "<token of kind 8>"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "\"(\""

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "<token of kind 10>"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "<token of kind 11>"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "\"(\""

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "\")\""

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "<token of kind 14>"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "\"\\\"\""

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "<token of kind 16>"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "<token of kind 17>"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "\"\\\"\""

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "<DIGITS>"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "<ATOKEN>"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "<QUOTEDPAIR>"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "<ANY>"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserConstants;->tokenImage:[Ljava/lang/String;

    return-void
.end method
