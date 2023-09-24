.class public abstract Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;
.super Ljava/lang/Object;
.source "SaveKeyringParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Curve;,
        Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Algorithm;,
        Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;,
        Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;,
        Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 50
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static buildChangeKeyringParcel(J[B)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .locals 4

    move-wide/16 v1, p0

    move-object/16 v3, p2

    .line 92
    invoke-static {}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->buildNewKeyringParcel()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v0

    .line 93
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->setMasterKeyId(Ljava/lang/Long;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v1

    .line 94
    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->setFingerprint([B)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v1

    return-object v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;--->buildChangeKeyringParcel(J[B)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static buildNewKeyringParcel()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .locals 5

    .line 86
    new-instance v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;-><init>()V

    const/4 v1, 0x0

    .line 87
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/service/$AutoValue_SaveKeyringParcel$Builder;->setShouldUpload(Z)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->setShouldUploadAtomic(Z)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;--->buildNewKeyringParcel()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static buildUpon(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
    .locals 6

    move-object/16 v3, p0

    .line 100
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->toBuilder()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->access$000(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getAddUserIds()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 102
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->access$100(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getRevokeUserIds()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 103
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->access$200(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getAddUserAttribute()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 104
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->access$300(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getAddSubKeys()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 105
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->access$400(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getChangeSubKeys()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 106
    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;->access$500(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;->getRevokeSubKeys()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;--->buildUpon(Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel;)Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getAddSubKeys()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyAdd;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAddUserAttribute()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAddUserIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getChangePrimaryUserId()Ljava/lang/String;
.end method

.method public abstract getChangeSubKeys()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$SubkeyChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFingerprint()[B
.end method

.method public abstract getMasterKeyId()Ljava/lang/Long;
.end method

.method public abstract getNewUnlock()Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;
.end method

.method public abstract getRevokeSubKeys()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRevokeUserIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSecurityTokenAdminPin()Lorg/sufficientlysecure/keychain/util/Passphrase;
.end method

.method public abstract getSecurityTokenPin()Lorg/sufficientlysecure/keychain/util/Passphrase;
.end method

.method public abstract getUploadKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;
.end method

.method public abstract isShouldUpload()Z
.end method

.method public abstract isShouldUploadAtomic()Z
.end method

.method abstract toBuilder()Lorg/sufficientlysecure/keychain/service/SaveKeyringParcel$Builder;
.end method
