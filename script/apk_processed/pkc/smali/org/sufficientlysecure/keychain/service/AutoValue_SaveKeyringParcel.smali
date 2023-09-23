.class final Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;
.super Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;
.source "AutoValue_SaveKeyringParcel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 15
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method constructor <init>(Ljava/lang/Long;[BLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lorg/sufficientlysecure/keychain/util/Passphrase;Lorg/sufficientlysecure/keychain/util/Passphrase;ZZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "[B",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;",
            ">;",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;",
            ">;",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/sufficientlysecure/keychain/util/Passphrase;",
            "Lorg/sufficientlysecure/keychain/util/Passphrase;",
            "ZZ",
            "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;",
            "Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;",
            ")V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    move-object/16 p3, p6

    move-object/16 p4, p7

    move-object/16 p5, p8

    move-object/16 p6, p9

    move-object/16 p7, p10

    move-object/16 p8, p11

    move/16 p9, p12

    move/16 p10, p13

    move-object/16 p11, p14

    move-object/16 p12, p15

    .line 49
    invoke-direct/range {v0 .. v15}, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel;-><init>(Ljava/lang/Long;[BLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lorg/sufficientlysecure/keychain/util/Passphrase;Lorg/sufficientlysecure/keychain/util/Passphrase;ZZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;)V

    return-void

    const-string p13, "M_InsDal"

    const-string p14, "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;---><init>(Ljava/lang/Long;[BLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lorg/sufficientlysecure/keychain/util/Passphrase;Lorg/sufficientlysecure/keychain/util/Passphrase;ZZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;)V"

    invoke-static/range {p13 .. p14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    move/16 v7, p2

    .line 54
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {v6, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 60
    :goto_0
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;->getFingerprint()[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 61
    invoke-virtual {v6, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;->getFingerprint()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 66
    :goto_1
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;->getAddUserIds()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 67
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;->getAddUserAttribute()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 68
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;->getAddSubKeys()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 69
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;->getChangeSubKeys()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 70
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;->getChangePrimaryUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 71
    invoke-virtual {v6, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 73
    :cond_2
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;->getChangePrimaryUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    :goto_2
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;->getRevokeUserIds()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 77
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;->getRevokeSubKeys()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 78
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;->getSecurityTokenPin()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v0

    invoke-virtual {v6, v0, v7}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 79
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;->getSecurityTokenAdminPin()Lorg/sufficientlysecure/keychain/util/Passphrase;

    move-result-object v0

    invoke-virtual {v6, v0, v7}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 80
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;->isShouldUpload()Z

    move-result v0

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;->isShouldUploadAtomic()Z

    move-result v0

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;->getUploadKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v0

    invoke-virtual {v6, v0, v7}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 83
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;->getNewUnlock()Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    move-result-object v0

    invoke-virtual {v6, v0, v7}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/AutoValue_SaveKeyringParcel;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
