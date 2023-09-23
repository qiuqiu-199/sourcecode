.class public abstract Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;
.super Ljava/lang/Object;
.source "PgpDecryptVerifyInputParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 32
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static builder()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;
    .locals 5

    .line 57
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;-><init>()V

    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/$AutoValue_PgpDecryptVerifyInputParcel$Builder;->setAllowSymmetricDecryption(Z)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;->setDecryptMetadataOnly(Z)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;->setAutocryptSetup(Z)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;--->builder()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method abstract getAllowedKeyIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method abstract getDetachedSignature()[B
.end method

.method abstract getInputBytes()[B
.end method

.method abstract getInputUri()Landroid/net/Uri;
.end method

.method abstract getOutputUri()Landroid/net/Uri;
.end method

.method abstract getSenderAddress()Ljava/lang/String;
.end method

.method abstract isAllowSymmetricDecryption()Z
.end method

.method abstract isAutocryptSetup()Z
.end method

.method abstract isDecryptMetadataOnly()Z
.end method

.method public abstract toBuilder()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;
.end method
