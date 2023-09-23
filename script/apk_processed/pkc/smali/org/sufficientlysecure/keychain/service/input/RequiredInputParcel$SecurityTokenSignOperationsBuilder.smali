.class public Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;
.super Ljava/lang/Object;
.source "RequiredInputParcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecurityTokenSignOperationsBuilder"
.end annotation


# instance fields
.field mInputHashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field mMasterKeyId:J

.field mSignAlgos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSignatureTime:Ljava/util/Date;

.field mSubKeyId:J


# direct methods
.method public constructor <init>(Ljava/util/Date;JJ)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-wide/16 v3, p2

    move-wide/16 p1, p4

    .line 267
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->mSignAlgos:Ljava/util/ArrayList;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->mInputHashes:Ljava/util/ArrayList;

    .line 268
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->mSignatureTime:Ljava/util/Date;

    .line 269
    iput-wide v3, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->mMasterKeyId:J

    .line 270
    iput-wide p1, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->mSubKeyId:J

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;---><init>(Ljava/util/Date;JJ)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public addAll(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 291
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->mSignatureTime:Ljava/util/Date;

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSignatureTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    new-instance v5, Ljava/lang/AssertionError;

    const-string v0, "input times must match, this is a programming error!"

    invoke-direct {v5, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 294
    :cond_0
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mType:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->SECURITY_TOKEN_SIGN:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    if-eq v0, v1, :cond_1

    .line 295
    new-instance v5, Ljava/lang/AssertionError;

    const-string v0, "operation types must match, this is a progrmming error!"

    invoke-direct {v5, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 298
    :cond_1
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->mInputHashes:Ljava/util/ArrayList;

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mInputData:[[B

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 299
    iget-object v5, v5, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSignAlgos:[I

    array-length v0, v5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, v5, v1

    .line 300
    iget-object v3, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->mSignAlgos:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;--->addAll(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public addHash([BI)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 286
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->mInputHashes:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->mSignAlgos:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;--->addHash([BI)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public build()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;
    .locals 12

    move-object/16 v9, p0

    .line 274
    iget-object v0, v9, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->mInputHashes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [[B

    .line 275
    iget-object v0, v9, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->mInputHashes:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 276
    iget-object v0, v9, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->mSignAlgos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [I

    const/4 v0, 0x0

    .line 277
    :goto_0
    iget-object v1, v9, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->mSignAlgos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 278
    iget-object v1, v9, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->mSignAlgos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_0
    new-instance v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    sget-object v2, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->SECURITY_TOKEN_SIGN:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    iget-object v5, v9, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->mSignatureTime:Ljava/util/Date;

    iget-wide v6, v9, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->mMasterKeyId:J

    .line 282
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v7, v9, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->mSubKeyId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;-><init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;[[B[ILjava/util/Date;Ljava/lang/Long;Ljava/lang/Long;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$1;)V

    return-object v0

    const-string v10, "M_InsDal"

    const-string v11, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;--->build()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isEmpty()Z
    .locals 4

    move-object/16 v1, p0

    .line 305
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;->mInputHashes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenSignOperationsBuilder;--->isEmpty()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
