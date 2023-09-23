.class final Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel;
.super Lorg/sufficientlysecure/keychain/service/$AutoValue_ChangeUnlockParcel;
.source "AutoValue_ChangeUnlockParcel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method constructor <init>(Ljava/lang/Long;[BLorg/sufficientlysecure/keychain/util/Passphrase;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 26
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/service/$AutoValue_ChangeUnlockParcel;-><init>(Ljava/lang/Long;[BLorg/sufficientlysecure/keychain/util/Passphrase;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel;---><init>(Ljava/lang/Long;[BLorg/sufficientlysecure/keychain/util/Passphrase;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    move/16 v7, p2

    .line 31
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {v6, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 37
    :goto_0
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel;->getFingerprint()[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 38
    invoke-virtual {v6, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel;->getFingerprint()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 43
    :goto_1
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel;->getNewPassphrase()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v0

    invoke-virtual {v6, v0, v7}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/AutoValue_ChangeUnlockParcel;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
