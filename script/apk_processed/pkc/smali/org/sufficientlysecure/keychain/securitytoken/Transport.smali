.class public interface abstract Lorg/sufficientlysecure/keychain/securitytoken/Transport;
.super Ljava/lang/Object;
.source "Transport.java"


# virtual methods
.method public abstract connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getTokenTypeIfAvailable()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TokenType;
.end method

.method public abstract getTransportType()Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenInfo$TransportType;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isPersistentConnectionAllowed()Z
.end method

.method public abstract release()V
.end method

.method public abstract transceive(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
