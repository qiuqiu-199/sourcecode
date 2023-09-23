.class public abstract Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;
.super Ljava/lang/Object;
.source "SignEncryptParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 45
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static builder(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;)Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;
    .locals 5

    move-object/16 v2, p0

    .line 76
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;-><init>(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$1;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;--->builder(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;)Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static builder(Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;)Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;
    .locals 6

    move-object/16 v3, p0

    .line 70
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;->getSignEncryptData()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;-><init>(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$1;)V

    .line 71
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;->getInputUris()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;->addInputUris(Ljava/util/Collection;)Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;->getOutputUris()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;->addOutputUris(Ljava/util/Collection;)Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;

    move-result-object v3

    return-object v3

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;--->builder(Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;)Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel$Builder;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createSignEncryptParcel(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;[B)Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 66
    new-instance v0, Lorg/sufficientlysecure/keychain/pgp/AutoValue_SignEncryptParcel;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/sufficientlysecure/keychain/pgp/AutoValue_SignEncryptParcel;-><init>(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;Ljava/util/List;Ljava/util/List;[B)V

    return-object v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;--->createSignEncryptParcel(Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;[B)Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getBytes()[B
.end method

.method public abstract getInputUris()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOutputUris()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSignEncryptData()Lorg/sufficientlysecure/keychain/pgp/PgpSignEncryptData;
.end method

.method public isIncomplete()Z
    .locals 5

    move-object/16 v2, p0

    .line 55
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;->getInputUris()Ljava/util/List;

    move-result-object v0

    .line 56
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;->getOutputUris()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 58
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid operation for bytes-backed SignEncryptParcel!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/pgp/SignEncryptParcel;--->isIncomplete()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
