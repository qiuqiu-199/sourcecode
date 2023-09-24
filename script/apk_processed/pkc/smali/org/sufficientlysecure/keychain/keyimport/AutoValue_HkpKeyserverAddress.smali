.class final Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress;
.super Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_HkpKeyserverAddress;
.source "AutoValue_HkpKeyserverAddress.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 24
    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/keyimport/$AutoValue_HkpKeyserverAddress;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress;---><init>(Ljava/lang/String;Ljava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 29
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress;->getOnion()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 31
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress;->getOnion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
