.class public interface abstract Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewModel;
.super Ljava/lang/Object;
.source "KeysModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/KeysModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UnifiedKeyViewModel"
.end annotation


# virtual methods
.method public abstract MIN_user_packets_rank()J
.end method

.method public abstract autocrypt_package_names_csv()Ljava/lang/String;
.end method

.method public abstract can_certify()Z
.end method

.method public abstract comment()Ljava/lang/String;
.end method

.method public abstract creation()J
.end method

.method public abstract email()Ljava/lang/String;
.end method

.method public abstract expiry()Ljava/lang/Long;
.end method

.method public abstract fingerprint()[B
.end method

.method public abstract has_any_secret_int()J
.end method

.method public abstract has_auth_key_int()J
.end method

.method public abstract has_duplicate_int()J
.end method

.method public abstract has_encrypt_key_int()J
.end method

.method public abstract has_sign_key_int()J
.end method

.method public abstract is_revoked()Z
.end method

.method public abstract is_secure()Z
.end method

.method public abstract master_key_id()J
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract user_id()Ljava/lang/String;
.end method

.method public abstract user_id_list()Ljava/lang/String;
.end method

.method public abstract verified()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;
.end method
