.class public abstract Lorg/bouncycastle/bcpg/ContainedPacket;
.super Lorg/bouncycastle/bcpg/Packet;
.source "ContainedPacket.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lorg/bouncycastle/bcpg/Packet;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract encode(Lorg/bouncycastle/bcpg/BCPGOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
