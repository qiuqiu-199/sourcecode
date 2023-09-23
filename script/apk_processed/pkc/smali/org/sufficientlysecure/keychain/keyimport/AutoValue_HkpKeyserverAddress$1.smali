.class final Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress$1;
.super Ljava/lang/Object;
.source "AutoValue_HkpKeyserverAddress.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress$1;->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 12
    new-instance v0, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress;

    .line 13
    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v4}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-direct {v0, v1, v4}, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress$1;--->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress$1;->newArray(I)[Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 19
    new-array v1, v1, [Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress;

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress$1;--->newArray(I)[Lorg/sufficientlysecure/keychain/keyimport/AutoValue_HkpKeyserverAddress;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
