.class public Lorg/bouncycastle/crypto/io/MacOutputStream;
.super Ljava/io/OutputStream;
.source "MacOutputStream.java"


# instance fields
.field protected mac:Lorg/bouncycastle/crypto/Mac;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Mac;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/bouncycastle/crypto/io/MacOutputStream;->mac:Lorg/bouncycastle/crypto/Mac;

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/MacOutputStream;->mac:Lorg/bouncycastle/crypto/Mac;

    int-to-byte p1, p1

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/bouncycastle/crypto/io/MacOutputStream;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    return-void
.end method
