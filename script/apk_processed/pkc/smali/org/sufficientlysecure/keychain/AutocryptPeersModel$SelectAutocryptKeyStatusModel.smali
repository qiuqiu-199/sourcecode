.class public interface abstract Lorg/sufficientlysecure/keychain/AutocryptPeersModel$SelectAutocryptKeyStatusModel;
.super Ljava/lang/Object;
.source "AutocryptPeersModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/AutocryptPeersModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SelectAutocryptKeyStatusModel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1::",
        "Lorg/sufficientlysecure/keychain/AutocryptPeersModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract autocryptPeer()Lorg/sufficientlysecure/keychain/AutocryptPeersModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT1;"
        }
    .end annotation
.end method

.method public abstract gossip_key_is_expired_int()J
.end method

.method public abstract gossip_key_is_revoked_int()Ljava/lang/Boolean;
.end method

.method public abstract gossip_key_is_verified_int()J
.end method

.method public abstract key_is_expired_int()J
.end method

.method public abstract key_is_revoked_int()Ljava/lang/Boolean;
.end method

.method public abstract key_is_verified_int()J
.end method
