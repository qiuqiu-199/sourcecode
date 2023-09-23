.class public interface abstract Lnordpol/IsoCard;
.super Ljava/lang/Object;
.source "IsoCard.java"


# virtual methods
.method public abstract connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isConnected()Z
.end method

.method public abstract setTimeout(I)V
.end method

.method public abstract transceive([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
