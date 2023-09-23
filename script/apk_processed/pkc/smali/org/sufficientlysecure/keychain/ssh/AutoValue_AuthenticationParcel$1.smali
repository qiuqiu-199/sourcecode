.class final Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationParcel$1;
.super Ljava/lang/Object;
.source "AutoValue_AuthenticationParcel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationParcel$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationParcel$1;->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationParcel;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationParcel;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 11
    new-instance v0, Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationParcel;

    const-class v1, Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;

    .line 13
    invoke-virtual {v3}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationParcel;-><init>(Lorg/sufficientlysecure/keychain/ssh/AuthenticationData;[B)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationParcel$1;--->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationParcel;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationParcel$1;->newArray(I)[Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationParcel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationParcel;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 18
    new-array v1, v1, [Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationParcel;

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationParcel$1;--->newArray(I)[Lorg/sufficientlysecure/keychain/ssh/AutoValue_AuthenticationParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
