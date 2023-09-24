.class public interface abstract Lorg/sufficientlysecure/keychain/KeysModel$ValidMasterKeysModel;
.super Ljava/lang/Object;
.source "KeysModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/KeysModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ValidMasterKeysModel"
.end annotation


# virtual methods
.method public abstract algorithm()I
.end method

.method public abstract can_authenticate()Z
.end method

.method public abstract can_certify()Z
.end method

.method public abstract can_encrypt()Z
.end method

.method public abstract can_sign()Z
.end method

.method public abstract creation()J
.end method

.method public abstract expiry()Ljava/lang/Long;
.end method

.method public abstract fingerprint()[B
.end method

.method public abstract has_secret()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;
.end method

.method public abstract is_revoked()Z
.end method

.method public abstract is_secure()Z
.end method

.method public abstract key_curve_oid()Ljava/lang/String;
.end method

.method public abstract key_id()J
.end method

.method public abstract key_size()Ljava/lang/Integer;
.end method

.method public abstract master_key_id()J
.end method

.method public abstract rank()J
.end method
