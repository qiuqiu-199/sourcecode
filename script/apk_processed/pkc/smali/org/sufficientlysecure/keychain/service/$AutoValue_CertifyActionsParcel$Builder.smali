.class final Lorg/sufficientlysecure/keychain/service/$AutoValue_CertifyActionsParcel$Builder;
.super Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;
.source "$AutoValue_CertifyActionsParcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/service/$AutoValue_CertifyActionsParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private certifyActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;",
            ">;"
        }
    .end annotation
.end field

.field private masterKeyId:Ljava/lang/Long;

.field private parcelableKeyServer:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 83
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/service/$AutoValue_CertifyActionsParcel$Builder;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public build()Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel;
    .locals 8

    move-object/16 v5, p0

    const-string v0, ""

    .line 113
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/service/$AutoValue_CertifyActionsParcel$Builder;->masterKeyId:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " masterKeyId"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    :cond_0
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/service/$AutoValue_CertifyActionsParcel$Builder;->certifyActions:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " certifyActions"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 120
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_2
    new-instance v0, Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel;

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/service/$AutoValue_CertifyActionsParcel$Builder;->masterKeyId:Ljava/lang/Long;

    .line 123
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, v5, Lorg/sufficientlysecure/keychain/service/$AutoValue_CertifyActionsParcel$Builder;->certifyActions:Ljava/util/ArrayList;

    iget-object v4, v5, Lorg/sufficientlysecure/keychain/service/$AutoValue_CertifyActionsParcel$Builder;->parcelableKeyServer:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/sufficientlysecure/keychain/service/AutoValue_CertifyActionsParcel;-><init>(JLjava/util/ArrayList;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V

    return-object v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/service/$AutoValue_CertifyActionsParcel$Builder;--->build()Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method getCertifyActions()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;",
            ">;"
        }
    .end annotation

    move-object/16 v2, p0

    .line 100
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_CertifyActionsParcel$Builder;->certifyActions:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"certifyActions\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/service/$AutoValue_CertifyActionsParcel$Builder;->certifyActions:Ljava/util/ArrayList;

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/service/$AutoValue_CertifyActionsParcel$Builder;--->getCertifyActions()Ljava/util/ArrayList;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setCertifyActions(Ljava/util/ArrayList;)Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$CertifyAction;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    if-nez v2, :cond_0

    .line 93
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v0, "Null certifyActions"

    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :cond_0
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/service/$AutoValue_CertifyActionsParcel$Builder;->certifyActions:Ljava/util/ArrayList;

    return-object v1

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/$AutoValue_CertifyActionsParcel$Builder;--->setCertifyActions(Ljava/util/ArrayList;)Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setMasterKeyId(J)Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;
    .locals 3

    move-object/16 v0, p0

    move-wide/16 v1, p1

    .line 87
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_CertifyActionsParcel$Builder;->masterKeyId:Ljava/lang/Long;

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/$AutoValue_CertifyActionsParcel$Builder;--->setMasterKeyId(J)Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setParcelableKeyServer(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 107
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/$AutoValue_CertifyActionsParcel$Builder;->parcelableKeyServer:Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    return-object v0

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/$AutoValue_CertifyActionsParcel$Builder;--->setParcelableKeyServer(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/service/CertifyActionsParcel$Builder;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
