.class final Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs$1;
.super Ljava/lang/Object;
.source "AutoValue_Preferences_CloudSearchPrefs.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs;",
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

    const-string v2, "Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs$1;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs$1;->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs;
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    .line 12
    new-instance v6, Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs;

    .line 13
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 14
    :goto_0
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 15
    :goto_1
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 16
    :goto_2
    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    const-class v0, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    .line 17
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-object v0, v6

    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v7

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs;-><init>(ZZZZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V

    return-object v6

    const-string v10, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs$1;--->createFromParcel(Landroid/os/Parcel;)Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs;"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs$1;->newArray(I)[Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs;
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 22
    new-array v1, v1, [Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs;

    return-object v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs$1;--->newArray(I)[Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
