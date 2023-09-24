.class final Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;
.super Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;
.source "AutoValue_ImportKeyringParcel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method constructor <init>(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;",
            ">;",
            "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;",
            "ZZ)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    move/16 p1, p4

    .line 31
    invoke-direct {v0, v1, v2, p0, p1}, Lorg/sufficientlysecure/keychain/service/$AutoValue_ImportKeyringParcel;-><init>(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;ZZ)V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;---><init>(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;ZZ)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 36
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;->getKeyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 37
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;->getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 38
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;->isSkipSave()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;->isForceReinsert()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/AutoValue_ImportKeyringParcel;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
