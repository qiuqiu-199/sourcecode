.class final Lorg/sufficientlysecure/keychain/service/AutoValue_PromoteKeyringParcel;
.super Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;
.source "AutoValue_PromoteKeyringParcel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/service/AutoValue_PromoteKeyringParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_PromoteKeyringParcel$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/AutoValue_PromoteKeyringParcel$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/AutoValue_PromoteKeyringParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/AutoValue_PromoteKeyringParcel;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method constructor <init>(J[BLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[B",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-wide/16 v1, p1

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 27
    invoke-direct {v0, v1, v2, p0, p1}, Lorg/sufficientlysecure/keychain/service/$AutoValue_PromoteKeyringParcel;-><init>(J[BLjava/util/List;)V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/service/AutoValue_PromoteKeyringParcel;---><init>(J[BLjava/util/List;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/AutoValue_PromoteKeyringParcel;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 32
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/AutoValue_PromoteKeyringParcel;->getMasterKeyId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 33
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/AutoValue_PromoteKeyringParcel;->getCardAid()[B

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    .line 34
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 36
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/AutoValue_PromoteKeyringParcel;->getCardAid()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 39
    :goto_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/AutoValue_PromoteKeyringParcel;->getFingerprints()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/AutoValue_PromoteKeyringParcel;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
