.class final Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;
.super Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;
.source "AutoValue_BackupKeyringParcel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method constructor <init>([JZZZZLandroid/net/Uri;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JZZZZ",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    move/16 p1, p4

    move/16 p2, p5

    move-object/16 p3, p6

    move-object/16 p4, p7

    .line 35
    invoke-direct/range {v0 .. v7}, Lorg/sufficientlysecure/keychain/service/$AutoValue_BackupKeyringParcel;-><init>([JZZZZLandroid/net/Uri;Ljava/util/List;)V

    return-void

    const-string p5, "M_InsDal"

    const-string p6, "Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;---><init>([JZZZZLandroid/net/Uri;Ljava/util/List;)V"

    invoke-static/range {p5 .. p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 40
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;->getMasterKeyIds()[J

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 41
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 43
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;->getMasterKeyIds()[J

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 46
    :goto_0
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;->getExportSecret()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;->getExportPublic()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;->getIsEncrypted()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;->getEnableAsciiArmorOutput()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;->getOutputUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 51
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;->getExtraHeaders()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/AutoValue_BackupKeyringParcel;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
