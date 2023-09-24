.class public Lorg/bouncycastle/bcpg/CompressedDataPacket;
.super Lorg/bouncycastle/bcpg/InputStreamPacket;
.source "CompressedDataPacket.java"


# instance fields
.field algorithm:I


# direct methods
.method constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lorg/bouncycastle/bcpg/InputStreamPacket;-><init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V

    .line 19
    invoke-virtual {p1}, Lorg/bouncycastle/bcpg/BCPGInputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/bcpg/CompressedDataPacket;->algorithm:I

    return-void
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 1

    .line 29
    iget v0, p0, Lorg/bouncycastle/bcpg/CompressedDataPacket;->algorithm:I

    return v0
.end method
