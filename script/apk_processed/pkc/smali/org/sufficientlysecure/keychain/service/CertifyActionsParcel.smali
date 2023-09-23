.class public abstract Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel;
.super Ljava/lang/Object;
.source "CertifyActionsParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;,
        Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 35
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static builder(J)Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;
    .locals 4

    move-wide/16 v1, p0

    .line 42
    new-instance v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_CertifyActionsParcel$Builder;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/$AutoValue_CertifyActionsParcel$Builder;-><init>()V

    .line 43
    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/service/$AutoValue_CertifyActionsParcel$Builder;->setMasterKeyId(J)Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;->setCertifyActions(Ljava/util/ArrayList;)Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;

    move-result-object v1

    return-object v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel;--->builder(J)Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getCertifyActions()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMasterKeyId()J
.end method

.method public abstract getParcelableKeyServer()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;
.end method
