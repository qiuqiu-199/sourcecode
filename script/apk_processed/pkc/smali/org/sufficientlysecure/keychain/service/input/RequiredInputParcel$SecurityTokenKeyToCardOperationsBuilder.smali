.class public Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;
.super Ljava/lang/Object;
.source "RequiredInputParcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecurityTokenKeyToCardOperationsBuilder"
.end annotation


# instance fields
.field mAdminPin:[B

.field mMasterKeyId:Ljava/lang/Long;

.field mPin:[B

.field mSubkeysToExport:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Long;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 316
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;->mSubkeysToExport:Ljava/util/ArrayList;

    .line 317
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;->mMasterKeyId:Ljava/lang/Long;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;---><init>(Ljava/lang/Long;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public addAll(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 356
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;->mMasterKeyId:Ljava/lang/Long;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->access$100(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;)[J

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    new-instance v3, Ljava/lang/AssertionError;

    const-string v0, "Master keys must match, this is a programming error!"

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 359
    :cond_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mType:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    sget-object v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->SECURITY_TOKEN_MOVE_KEY_TO_CARD:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    if-eq v0, v1, :cond_1

    .line 360
    new-instance v3, Ljava/lang/AssertionError;

    const-string v0, "Operation types must match, this is a programming error!"

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 363
    :cond_1
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;->mSubkeysToExport:Ljava/util/ArrayList;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mInputData:[[B

    invoke-static {v0, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;--->addAll(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public addSubkey(J)V
    .locals 5

    move-object/16 v2, p0

    move-wide/16 v3, p1

    const/16 v0, 0x8

    .line 341
    new-array v0, v0, [B

    .line 342
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 343
    invoke-virtual {v1, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 344
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;->mSubkeysToExport:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;--->addSubkey(J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public build()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;
    .locals 13

    move-object/16 v10, p0

    .line 321
    iget-object v0, v10, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;->mSubkeysToExport:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v4, v0, [[B

    .line 324
    iget-object v0, v10, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;->mSubkeysToExport:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [[B

    .line 325
    iget-object v2, v10, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;->mSubkeysToExport:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 328
    iget-object v2, v10, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;->mPin:[B

    const/4 v3, 0x0

    aput-object v2, v4, v3

    .line 329
    iget-object v2, v10, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;->mAdminPin:[B

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 331
    array-length v2, v0

    invoke-static {v0, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    iget-object v0, v10, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;->mSubkeysToExport:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 336
    new-instance v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    sget-object v3, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->SECURITY_TOKEN_MOVE_KEY_TO_CARD:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    iget-object v7, v10, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;->mMasterKeyId:Ljava/lang/Long;

    .line 337
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;-><init>(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;[[B[ILjava/util/Date;Ljava/lang/Long;Ljava/lang/Long;Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$1;)V

    return-object v1

    const-string v11, "M_InsDal"

    const-string v12, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;--->build()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;"

    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public isEmpty()Z
    .locals 4

    move-object/16 v1, p0

    .line 367
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;->mSubkeysToExport:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;--->isEmpty()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setAdminPin(Lorg/sufficientlysecure/keychain/util/Passphrase;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 352
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/Passphrase;->toStringUnsafe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;->mAdminPin:[B

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;--->setAdminPin(Lorg/sufficientlysecure/keychain/util/Passphrase;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setPin(Lorg/sufficientlysecure/keychain/util/Passphrase;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 348
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/Passphrase;->toStringUnsafe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;->mPin:[B

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$SecurityTokenKeyToCardOperationsBuilder;--->setPin(Lorg/sufficientlysecure/keychain/util/Passphrase;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
