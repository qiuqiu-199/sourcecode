.class public abstract Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;
.super Ljava/lang/Object;
.source "UserPacket.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/UserPacketsModel$SelectUserAttributesByTypeAndMasterKeyIdModel;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/model/UserPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UserAttribute"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 50
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public isVerified()Z
    .locals 5

    move-object/16 v2, p0

    .line 52
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;->verified()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    move-result-object v0

    sget-object v1, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;->VERIFIED_SECRET:Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;--->isVerified()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public verified()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;
    .locals 5

    move-object/16 v2, p0

    .line 57
    sget-object v0, Lorg/sufficientlysecure/keychain/model/CustomColumnAdapters;->VERIFICATON_STATUS_ADAPTER:Lcom/squareup/sqldelight/ColumnAdapter;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;->verified_int()Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/squareup/sqldelight/ColumnAdapter;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/model/UserPacket$UserAttribute;--->verified()Lorg/sufficientlysecure/keychain/pgp/CanonicalizedKeyRing$VerificationStatus;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
