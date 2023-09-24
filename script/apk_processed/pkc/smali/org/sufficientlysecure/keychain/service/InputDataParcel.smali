.class public abstract Lorg/sufficientlysecure/keychain/service/InputDataParcel;
.super Ljava/lang/Object;
.source "InputDataParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 30
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/InputDataParcel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createInputDataParcel(Landroid/net/Uri;Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;)Lorg/sufficientlysecure/keychain/service/InputDataParcel;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 37
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/sufficientlysecure/keychain/service/AutoValue_InputDataParcel;-><init>(Landroid/net/Uri;Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;Z)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/InputDataParcel;--->createInputDataParcel(Landroid/net/Uri;Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;)Lorg/sufficientlysecure/keychain/service/InputDataParcel;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getDecryptInput()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;
.end method

.method public abstract getInputUri()Landroid/net/Uri;
.end method

.method public abstract getMimeDecode()Z
.end method
