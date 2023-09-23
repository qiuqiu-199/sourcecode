.class public abstract Lorg/sufficientlysecure/keychain/operations/KeySyncParcel;
.super Ljava/lang/Object;
.source "KeySyncParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/operations/KeySyncParcel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createRefreshAll()Lorg/sufficientlysecure/keychain/operations/KeySyncParcel;
    .locals 5

    .line 14
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/AutoValue_KeySyncParcel;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/operations/AutoValue_KeySyncParcel;-><init>(Z)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/KeySyncParcel;--->createRefreshAll()Lorg/sufficientlysecure/keychain/operations/KeySyncParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createRefreshOutdated()Lorg/sufficientlysecure/keychain/operations/KeySyncParcel;
    .locals 5

    .line 18
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/AutoValue_KeySyncParcel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/operations/AutoValue_KeySyncParcel;-><init>(Z)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/operations/KeySyncParcel;--->createRefreshOutdated()Lorg/sufficientlysecure/keychain/operations/KeySyncParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getRefreshAll()Z
.end method
