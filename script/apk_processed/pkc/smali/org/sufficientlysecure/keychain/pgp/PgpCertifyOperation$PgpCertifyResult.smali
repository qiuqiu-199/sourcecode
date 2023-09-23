.class public Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;
.super Ljava/lang/Object;
.source "PgpCertifyOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PgpCertifyResult"
.end annotation


# instance fields
.field final mCertifiedRing:Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

.field final mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;


# direct methods
.method constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 135
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 136
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    .line 137
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;->mCertifiedRing:Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method constructor <init>(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 145
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 146
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    .line 147
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;->mCertifiedRing:Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;---><init>(Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method constructor <init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 140
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    const/4 v1, 0x0

    .line 142
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;->mCertifiedRing:Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;---><init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getCertifiedRing()Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;
    .locals 4

    move-object/16 v1, p0

    .line 159
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;->mCertifiedRing:Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;--->getCertifiedRing()Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getRequiredInput()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;
    .locals 4

    move-object/16 v1, p0

    .line 163
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;--->getRequiredInput()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public nfcInputRequired()Z
    .locals 4

    move-object/16 v1, p0

    .line 155
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;--->nfcInputRequired()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public success()Z
    .locals 4

    move-object/16 v1, p0

    .line 151
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;->mCertifiedRing:Lorg/sufficientlysecure/keychain/pgp/UncachedKeyRing;

    if-nez v0, :cond_1

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;->mRequiredInput:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/pgp/PgpCertifyOperation$PgpCertifyResult;--->success()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
