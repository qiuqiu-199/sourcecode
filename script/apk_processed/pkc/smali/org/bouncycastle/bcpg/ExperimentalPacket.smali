.class public Lorg/bouncycastle/bcpg/ExperimentalPacket;
.super Lorg/bouncycastle/bcpg/ContainedPacket;
.source "ExperimentalPacket.java"


# instance fields
.field private contents:[B

.field private tag:I


# direct methods
.method constructor <init>(ILorg/bouncycastle/bcpg/BCPGInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lorg/bouncycastle/bcpg/ContainedPacket;-><init>()V

    .line 26
    iput p1, p0, Lorg/bouncycastle/bcpg/ExperimentalPacket;->tag:I

    .line 27
    invoke-virtual {p2}, Lorg/bouncycastle/bcpg/BCPGInputStream;->readAll()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/bcpg/ExperimentalPacket;->contents:[B

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

    .line 44
    iget v0, p0, Lorg/bouncycastle/bcpg/ExperimentalPacket;->tag:I

    iget-object v1, p0, Lorg/bouncycastle/bcpg/ExperimentalPacket;->contents:[B

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePacket(I[BZ)V

    return-void
.end method
