.class public abstract Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;
.super Ljava/lang/Object;
.source "SubKey.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/KeysModel$UnifiedKeyViewModel;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/model/SubKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UnifiedKeyInfo"
.end annotation


# instance fields
.field private autocryptPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cachedUidSearchString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 60
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public autocrypt_package_names()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/16 v2, p0

    .line 83
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->autocryptPackageNames:Ljava/util/List;

    if-nez v0, :cond_1

    .line 84
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->autocrypt_package_names_csv()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, ","

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, v2, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->autocryptPackageNames:Ljava/util/List;

    .line 88
    :cond_1
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->autocryptPackageNames:Ljava/util/List;

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;--->autocrypt_package_names()Ljava/util/List;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public has_any_secret()Z
    .locals 8

    move-object/16 v5, p0

    .line 70
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret_int()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;--->has_any_secret()Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public has_auth_key()Z
    .locals 8

    move-object/16 v5, p0

    .line 92
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_auth_key_int()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;--->has_auth_key()Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public has_duplicate()Z
    .locals 8

    move-object/16 v5, p0

    .line 79
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_duplicate_int()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;--->has_duplicate()Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public has_encrypt_key()Z
    .locals 8

    move-object/16 v5, p0

    .line 96
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_encrypt_key_int()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;--->has_encrypt_key()Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public has_sign_key()Z
    .locals 8

    move-object/16 v5, p0

    .line 100
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_sign_key_int()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;--->has_sign_key()Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public is_expired()Z
    .locals 8

    move-object/16 v5, p0

    .line 65
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->expiry()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;--->is_expired()Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public is_verified()Z
    .locals 5

    move-object/16 v2, p0

    .line 74
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->verified()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    sget-object v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->VERIFIED_SECRET:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;--->is_verified()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public uidSearchString()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 104
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->cachedUidSearchString:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 105
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->user_id_list()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->cachedUidSearchString:Ljava/lang/String;

    .line 106
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->cachedUidSearchString:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 107
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->cachedUidSearchString:Ljava/lang/String;

    .line 109
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->cachedUidSearchString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->cachedUidSearchString:Ljava/lang/String;

    .line 111
    :cond_1
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->cachedUidSearchString:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;--->uidSearchString()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
