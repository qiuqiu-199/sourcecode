.class public abstract Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;
.super Ljava/lang/Object;
.source "ChangeUnlockParcel.java"

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

    const-string v2, "Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createChangeUnlockParcel(Ljava/lang/Long;[BLorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 38
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel;

    invoke-direct {v0, v1, v2, v3}, Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel;-><init>(Ljava/lang/Long;[BLorg/sufficientlysecure/keychain/util/Passphrase;)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;--->createChangeUnlockParcel(Ljava/lang/Long;[BLorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createUnLockParcelForNewKey(Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;
    .locals 5

    move-object/16 v2, p0

    .line 42
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v2}, Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel;-><init>(Ljava/lang/Long;[BLorg/sufficientlysecure/keychain/util/Passphrase;)V

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;--->createUnLockParcelForNewKey(Lorg/sufficientlysecure/keychain/util/Passphrase;)Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getFingerprint()[B
.end method

.method public abstract getMasterKeyId()Ljava/lang/Long;
.end method

.method public abstract getNewPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;
.end method
