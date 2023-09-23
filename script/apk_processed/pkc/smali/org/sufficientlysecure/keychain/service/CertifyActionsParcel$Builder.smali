.class public abstract Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;
.super Ljava/lang/Object;
.source "CertifyActionsParcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 48
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public addAction(Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 56
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;->getCertifyActions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;--->addAction(Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public addActions(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;",
            ">;)V"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 59
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;->getCertifyActions()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;--->addActions(Ljava/util/Collection;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract build()Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel;
.end method

.method abstract getCertifyActions()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setCertifyActions(Ljava/util/ArrayList;)Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;"
        }
    .end annotation
.end method

.method abstract setMasterKeyId(J)Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;
.end method

.method public abstract setParcelableKeyServer(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;
.end method
