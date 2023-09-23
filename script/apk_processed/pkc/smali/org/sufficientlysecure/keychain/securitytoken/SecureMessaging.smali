.class public interface abstract Lorg/sufficientlysecure/keychain/securitytoken/SecureMessaging;
.super Ljava/lang/Object;
.source "SecureMessaging.java"


# virtual methods
.method public abstract clearSession()V
.end method

.method public abstract encryptAndSign(Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;)Lorg/sufficientlysecure/keychain/securitytoken/CommandApdu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;
        }
    .end annotation
.end method

.method public abstract isEstablished()Z
.end method

.method public abstract verifyAndDecrypt(Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;)Lorg/sufficientlysecure/keychain/securitytoken/ResponseApdu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/SecureMessagingException;
        }
    .end annotation
.end method
