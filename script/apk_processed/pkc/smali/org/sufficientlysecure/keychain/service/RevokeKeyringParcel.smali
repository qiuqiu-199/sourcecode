.class public abstract Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;
.super Ljava/lang/Object;
.source "RevokeKeyringParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 29
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createRevokeKeyringParcel(JZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;
    .locals 4

    move-wide/16 v1, p0

    move/16 v3, p2

    move-object/16 p0, p3

    .line 37
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_RevokeKeyringParcel;

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/service/AutoValue_RevokeKeyringParcel;-><init>(JZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V

    return-object v0

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;--->createRevokeKeyringParcel(JZLorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;
.end method

.method public abstract getMasterKeyId()J
.end method

.method public abstract isShouldUpload()Z
.end method
