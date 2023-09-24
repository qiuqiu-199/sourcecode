.class final Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs;
.super Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;
.source "AutoValue_Preferences_CloudSearchPrefs.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method constructor <init>(ZZZZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    move/16 p1, p4

    move-object/16 p2, p5

    .line 28
    invoke-direct/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/util/$AutoValue_Preferences_CloudSearchPrefs;-><init>(ZZZZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs;---><init>(ZZZZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 33
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs;->isKeyserverEnabled()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs;->isKeybaseEnabled()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs;->isFacebookEnabled()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs;->isWebKeyDirectoryEnabled()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs;->getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/util/AutoValue_Preferences_CloudSearchPrefs;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
