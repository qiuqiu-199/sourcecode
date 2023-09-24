.class public abstract Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;
.super Ljava/lang/Object;
.source "CertifyActionsParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CertifyAction"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 66
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createForUserAttributes(JLjava/util/List;)Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;"
        }
    .end annotation

    move-wide/16 v2, p0

    move-object/16 v4, p2

    .line 78
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel_CertifyAction;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel_CertifyAction;-><init>(JLjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;--->createForUserAttributes(JLjava/util/List;)Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static createForUserIds(JLjava/util/List;)Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;"
        }
    .end annotation

    move-wide/16 v2, p0

    move-object/16 v4, p2

    .line 74
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel_CertifyAction;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel_CertifyAction;-><init>(JLjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;--->createForUserIds(JLjava/util/List;)Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getMasterKeyId()J
.end method

.method public abstract getUserAttributes()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/pgp/WrappedUserAttribute;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserIds()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public withAddedUserIds(Ljava/util/ArrayList;)Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;"
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 83
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;->getUserAttributes()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t add user ids to user attribute certification parcel!"

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 86
    :cond_0
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;->getUserIds()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 88
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t add user ids to user attribute certification parcel!"

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 91
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 92
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 93
    new-instance v5, Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel_CertifyAction;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;->getMasterKeyId()J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-direct {v5, v2, v3, v1, v0}, Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel_CertifyAction;-><init>(JLjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;--->withAddedUserIds(Ljava/util/ArrayList;)Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
