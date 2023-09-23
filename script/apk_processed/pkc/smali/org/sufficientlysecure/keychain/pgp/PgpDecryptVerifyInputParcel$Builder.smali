.class public abstract Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;
.super Ljava/lang/Object;
.source "PgpDecryptVerifyInputParcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 64
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method abstract autoBuild()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;
.end method

.method public build()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;
    .locals 4

    move-object/16 v1, p0

    .line 80
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;->getAllowedKeyIds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;->setAllowedKeyIds(Ljava/util/List;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;

    .line 84
    :cond_0
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;->autoBuild()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;--->build()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

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

.method public abstract setAllowSymmetricDecryption(Z)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;
.end method

.method public abstract setAllowedKeyIds(Ljava/util/List;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;"
        }
    .end annotation
.end method

.method public abstract setAutocryptSetup(Z)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;
.end method

.method public abstract setDecryptMetadataOnly(Z)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;
.end method

.method public abstract setDetachedSignature([B)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;
.end method

.method public abstract setInputBytes([B)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;
.end method

.method public abstract setInputUri(Landroid/net/Uri;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;
.end method

.method public abstract setOutputUri(Landroid/net/Uri;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;
.end method

.method public abstract setSenderAddress(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;
.end method
