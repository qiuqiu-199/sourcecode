.class final Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel;
.super Lorg/sufficientlysecure/keychain/service/$AutoValue_CertifyActionsParcel;
.source "AutoValue_CertifyActionsParcel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method constructor <init>(JLjava/util/ArrayList;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;",
            ">;",
            "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;",
            ")V"
        }
    .end annotation

    move-object/16 v0, p0

    move-wide/16 v1, p1

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 30
    invoke-direct {v0, v1, v2, p0, p1}, Lorg/sufficientlysecure/keychain/service/$AutoValue_CertifyActionsParcel;-><init>(JLjava/util/ArrayList;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel;---><init>(JLjava/util/ArrayList;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 35
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel;->getMasterKeyId()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 36
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel;->getCertifyActions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 37
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel;->getParcelableKeyServer()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
