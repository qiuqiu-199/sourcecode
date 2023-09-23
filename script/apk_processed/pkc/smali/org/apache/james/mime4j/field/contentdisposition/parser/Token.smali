.class public Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
.super Ljava/lang/Object;
.source "Token.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public beginColumn:I

.field public beginLine:I

.field public endColumn:I

.field public endLine:I

.field public image:Ljava/lang/String;

.field public kind:I

.field public next:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

.field public specialToken:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->kind:I

    .line 112
    iput-object p2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->image:Ljava/lang/String;

    return-void
.end method

.method public static newToken(ILjava/lang/String;)Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    .locals 1

    .line 139
    new-instance v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    invoke-direct {v0, p0, p1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->image:Ljava/lang/String;

    return-object v0
.end method
