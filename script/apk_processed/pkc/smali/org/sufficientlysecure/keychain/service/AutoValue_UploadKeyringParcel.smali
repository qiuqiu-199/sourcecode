.class final Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel;
.super Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;
.source "AutoValue_UploadKeyringParcel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method constructor <init>(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Ljava/lang/Long;[B)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 27
    invoke-direct {v0, v1, v2, p0}, Lorg/sufficientlysecure/keychain/service/$AutoValue_UploadKeyringParcel;-><init>(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Ljava/lang/Long;[B)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel;---><init>(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Ljava/lang/Long;[B)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move/16 v6, p2

    .line 32
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel;->getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v0

    invoke-virtual {v5, v0, v6}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 33
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez v6, :cond_0

    .line 34
    invoke-virtual {v5, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel;->getMasterKeyId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v5, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 39
    :goto_0
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel;->getUncachedKeyringBytes()[B

    move-result-object v6

    if-nez v6, :cond_1

    .line 40
    invoke-virtual {v5, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel;->getUncachedKeyringBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_1
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/AutoValue_UploadKeyringParcel;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
