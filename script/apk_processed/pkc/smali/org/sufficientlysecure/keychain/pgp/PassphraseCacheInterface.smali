.class public interface abstract Lorg/sufficientlysecure/keychain/pgp/PassphraseCacheInterface;
.super Ljava/lang/Object;
.source "PassphraseCacheInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/pgp/PassphraseCacheInterface$NoSecretKeyException;
    }
.end annotation


# virtual methods
.method public abstract getCachedPassphrase(J)Lorg/sufficientlysecure/keychain/util/Passphrase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/PassphraseCacheInterface$NoSecretKeyException;
        }
    .end annotation
.end method

.method public abstract getCachedPassphrase(JJ)Lorg/sufficientlysecure/keychain/util/Passphrase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/pgp/PassphraseCacheInterface$NoSecretKeyException;
        }
    .end annotation
.end method
