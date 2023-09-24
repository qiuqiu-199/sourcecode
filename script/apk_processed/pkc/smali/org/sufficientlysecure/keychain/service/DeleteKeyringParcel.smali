.class public abstract Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;
.super Ljava/lang/Object;
.source "DeleteKeyringParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createDeletePublicKeysParcel([J)Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;
    .locals 5

    move-object/16 v2, p0

    .line 34
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_DeleteKeyringParcel;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lorg/sufficientlysecure/keychain/service/AutoValue_DeleteKeyringParcel;-><init>([JZ)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;--->createDeletePublicKeysParcel([J)Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createDeleteSingleSecretKeyParcel(J)Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;
    .locals 7

    move-wide/16 v4, p0

    .line 38
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_DeleteKeyringParcel;

    const/4 v1, 0x1

    new-array v2, v1, [J

    const/4 v3, 0x0

    aput-wide v4, v2, v3

    invoke-direct {v0, v2, v1}, Lorg/sufficientlysecure/keychain/service/AutoValue_DeleteKeyringParcel;-><init>([JZ)V

    return-object v0

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;--->createDeleteSingleSecretKeyParcel(J)Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getMasterKeyIds()[J
.end method

.method public abstract isDeleteSecret()Z
.end method
