.class public Lorg/bouncycastle/bcpg/ModDetectionCodePacket;
.super Lorg/bouncycastle/bcpg/ContainedPacket;
.source "ModDetectionCodePacket.java"


# instance fields
.field private digest:[B


# direct methods
.method constructor <init>(Lorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lorg/bouncycastle/bcpg/ContainedPacket;-><init>()V

    const/16 v0, 0x14

    .line 17
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/bcpg/ModDetectionCodePacket;->digest:[B

    .line 18
    iget-object v0, p0, Lorg/bouncycastle/bcpg/ModDetectionCodePacket;->digest:[B

    invoke-virtual {p1, v0}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readFully([B)V

    return-void
.end method


# virtual methods
.method public encode(Lorg/bouncycastle/bcpg/BCPGOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/bouncycastle/bcpg/ModDetectionCodePacket;->digest:[B

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method
