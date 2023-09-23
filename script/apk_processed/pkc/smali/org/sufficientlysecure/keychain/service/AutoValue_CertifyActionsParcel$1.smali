.class final Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel$1;
.super Ljava/lang/Object;
.source "AutoValue_CertifyActionsParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel$1;->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel;
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 15
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel;

    .line 16
    invoke-virtual {v6}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    const-class v3, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;

    .line 17
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v3

    const-class v4, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    .line 18
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-direct {v0, v1, v2, v3, v6}, Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel;-><init>(JLjava/util/ArrayList;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V

    return-object v0

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel$1;--->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel$1;->newArray(I)[Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 23
    new-array v1, v1, [Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel;

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel$1;--->newArray(I)[Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
