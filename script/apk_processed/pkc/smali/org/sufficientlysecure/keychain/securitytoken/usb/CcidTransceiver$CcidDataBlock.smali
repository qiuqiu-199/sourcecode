.class public abstract Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;
.super Ljava/lang/Object;
.source "CcidTransceiver.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CcidDataBlock"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 267
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static parseHeaderFromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;
    .locals 12

    move-object/16 v9, p0

    .line 279
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 280
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 282
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v1, -0x80

    if-eq v0, v1, :cond_0

    .line 284
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v0, "Header has incorrect type value!"

    invoke-direct {v9, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 286
    :cond_0
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 287
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 288
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 289
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 290
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 291
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 293
    new-instance v9, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;-><init>(IBBBBB[B)V

    return-object v9

    const-string v10, "M_InsDal"

    const-string v11, "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;--->parseHeaderFromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getChainParameter()B
.end method

.method getCommandStatus()B
    .locals 4

    move-object/16 v1, p0

    .line 311
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->getStatus()B

    move-result v0

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;--->getCommandStatus()B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getData()[B
.end method

.method public abstract getDataLength()I
.end method

.method public abstract getError()B
.end method

.method getIccStatus()B
    .locals 4

    move-object/16 v1, p0

    .line 307
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->getStatus()B

    move-result v0

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;--->getIccStatus()B"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getSeq()B
.end method

.method public abstract getSlot()B
.end method

.method public abstract getStatus()B
.end method

.method isStatusSuccess()Z
    .locals 4

    move-object/16 v1, p0

    .line 319
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->getIccStatus()B

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->getCommandStatus()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;--->isStatusSuccess()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method isStatusTimeoutExtensionRequest()Z
    .locals 5

    move-object/16 v2, p0

    .line 315
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->getCommandStatus()B

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;--->isStatusTimeoutExtensionRequest()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method withData([B)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;
    .locals 12

    move-object/16 v9, p0

    move-object/16 v10, p1

    .line 298
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot add data to this class twice!"

    invoke-direct {v10, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 302
    :cond_0
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;

    .line 303
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->getDataLength()I

    move-result v2

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->getSlot()B

    move-result v3

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->getSeq()B

    move-result v4

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->getStatus()B

    move-result v5

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->getError()B

    move-result v6

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->getChainParameter()B

    move-result v7

    move-object v1, v0

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidTransceiver_CcidDataBlock;-><init>(IBBBBB[B)V

    return-object v0

    const-string v11, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;--->withData([B)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;"

    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
