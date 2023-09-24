.class final Lorg/sufficientlysecure/keychain/operations/AutoValue_KeySyncParcel;
.super Lorg/sufficientlysecure/keychain/operations/$AutoValue_KeySyncParcel;
.source "AutoValue_KeySyncParcel.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/sufficientlysecure/keychain/operations/AutoValue_KeySyncParcel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/AutoValue_KeySyncParcel$1;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/operations/AutoValue_KeySyncParcel$1;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/operations/AutoValue_KeySyncParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/operations/AutoValue_KeySyncParcel;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method constructor <init>(Z)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 22
    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/operations/$AutoValue_KeySyncParcel;-><init>(Z)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/operations/AutoValue_KeySyncParcel;---><init>(Z)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public describeContents()I
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/AutoValue_KeySyncParcel;--->describeContents()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 27
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/AutoValue_KeySyncParcel;->getRefreshAll()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/operations/AutoValue_KeySyncParcel;--->writeToParcel(Landroid/os/Parcel;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
