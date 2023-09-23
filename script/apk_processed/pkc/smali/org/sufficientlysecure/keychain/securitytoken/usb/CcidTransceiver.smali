.class public Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;
.super Ljava/lang/Object;
.source "CcidTransceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;
    }
.end annotation


# static fields
.field private static final CCID_HEADER_LENGTH:I = 0xa

.field private static final COMMAND_STATUS_SUCCESS:I = 0x0

.field private static final COMMAND_STATUS_TIME_EXTENSION_RQUESTED:I = 0x2

.field private static final DEVICE_COMMUNICATE_TIMEOUT_MILLIS:I = 0x1388

.field private static final DEVICE_SKIP_TIMEOUT_MILLIS:I = 0x64

.field private static final ICC_STATUS_SUCCESS:I = 0x0

.field private static final MESSAGE_TYPE_PC_TO_RDR_ICC_POWER_OFF:I = 0x63

.field private static final MESSAGE_TYPE_PC_TO_RDR_ICC_POWER_ON:I = 0x62

.field private static final MESSAGE_TYPE_PC_TO_RDR_XFR_BLOCK:I = 0x6f

.field private static final MESSAGE_TYPE_RDR_TO_PC_DATA_BLOCK:I = 0x80

.field private static final SLOT_NUMBER:I


# instance fields
.field private currentSequenceNumber:B

.field private final inputBuffer:[B

.field private final usbBulkIn:Landroid/hardware/usb/UsbEndpoint;

.field private final usbBulkOut:Landroid/hardware/usb/UsbEndpoint;

.field private final usbCcidDescription:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;

.field private final usbConnection:Landroid/hardware/usb/UsbDeviceConnection;


# direct methods
.method constructor <init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 68
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 70
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->usbBulkIn:Landroid/hardware/usb/UsbEndpoint;

    .line 71
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->usbBulkOut:Landroid/hardware/usb/UsbEndpoint;

    .line 72
    iput-object p1, v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->usbCcidDescription:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;

    .line 74
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->usbBulkIn:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->inputBuffer:[B

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;---><init>(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private iccPowerOff()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation

    move-object/16 v4, p0

    .line 135
    iget-byte v0, v4, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->currentSequenceNumber:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    iput-byte v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->currentSequenceNumber:B

    const/16 v1, 0x8

    .line 136
    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x63

    aput-byte v3, v1, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    const/4 v3, 0x4

    aput-byte v2, v1, v3

    const/4 v3, 0x5

    aput-byte v2, v1, v3

    const/4 v3, 0x6

    aput-byte v0, v1, v3

    const/4 v0, 0x7

    aput-byte v2, v1, v0

    .line 144
    array-length v0, v1

    invoke-direct {v4, v1, v2, v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->sendRaw([BII)V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;--->iccPowerOff()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private iccPowerOnVoltage(B)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation

    move-object/16 v4, p0

    move/16 v5, p1

    .line 119
    iget-byte v0, v4, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->currentSequenceNumber:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    iput-byte v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->currentSequenceNumber:B

    const/16 v1, 0xa

    .line 120
    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x62

    aput-byte v3, v1, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    const/4 v3, 0x4

    aput-byte v2, v1, v3

    const/4 v3, 0x5

    aput-byte v2, v1, v3

    const/4 v3, 0x6

    aput-byte v0, v1, v3

    const/4 v3, 0x7

    aput-byte v5, v1, v3

    const/16 v5, 0x8

    aput-byte v2, v1, v5

    const/16 v5, 0x9

    aput-byte v2, v1, v5

    .line 129
    array-length v5, v1

    invoke-direct {v4, v1, v2, v5}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->sendRaw([BII)V

    .line 131
    invoke-direct {v4, v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->receiveDataBlock(B)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;

    move-result-object v5

    return-object v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;--->iccPowerOnVoltage(B)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private receiveDataBlock(B)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation

    move-object/16 v2, p0

    move/16 v3, p1

    .line 198
    :cond_0
    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->receiveDataBlockImmediate(B)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->isStatusTimeoutExtensionRequest()Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->isStatusSuccess()Z

    move-result v3

    if-nez v3, :cond_1

    .line 202
    new-instance v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException$UsbCcidErrorException;

    const-string v1, "USB-CCID error!"

    invoke-direct {v3, v1, v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException$UsbCcidErrorException;-><init>(Ljava/lang/String;Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;)V

    throw v3

    :cond_1
    return-object v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;--->receiveDataBlock(B)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private receiveDataBlockImmediate(B)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation

    move-object/16 v8, p0

    move/16 v9, p1

    .line 209
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, v8, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->usbBulkIn:Landroid/hardware/usb/UsbEndpoint;

    iget-object v2, v8, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->inputBuffer:[B

    iget-object v3, v8, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->inputBuffer:[B

    array-length v3, v3

    const/16 v4, 0x1388

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 211
    new-instance v9, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    const-string v0, "USB-CCID error - failed to receive CCID header"

    invoke-direct {v9, v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 213
    :cond_0
    iget-object v2, v8, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->inputBuffer:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    const/16 v5, -0x80

    if-eq v2, v5, :cond_2

    .line 214
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->inputBuffer:[B

    const/4 v1, 0x6

    aget-byte v0, v0, v1

    if-eq v9, v0, :cond_1

    .line 215
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USB-CCID error - bad CCID header, type "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->inputBuffer:[B

    aget-byte v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), sequence number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->inputBuffer:[B

    aget-byte v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (expected "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_1
    new-instance v9, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USB-CCID error - bad CCID header type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->inputBuffer:[B

    aget-byte v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 222
    :cond_2
    iget-object v2, v8, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->inputBuffer:[B

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->parseHeaderFromBytes([B)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;

    move-result-object v2

    .line 224
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->getSeq()B

    move-result v5

    if-eq v9, v5, :cond_3

    .line 225
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USB-CCID error - expected sequence number "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", got "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_3
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->getDataLength()I

    move-result v9

    new-array v9, v9, [B

    sub-int/2addr v0, v1

    .line 231
    iget-object v5, v8, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->inputBuffer:[B

    invoke-static {v5, v1, v9, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    :goto_0
    array-length v1, v9

    if-ge v0, v1, :cond_5

    .line 234
    iget-object v1, v8, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v5, v8, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->usbBulkIn:Landroid/hardware/usb/UsbEndpoint;

    iget-object v6, v8, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->inputBuffer:[B

    iget-object v7, v8, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->inputBuffer:[B

    array-length v7, v7

    invoke-virtual {v1, v5, v6, v7, v4}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v1

    if-gez v1, :cond_4

    .line 236
    new-instance v9, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USB error - failed reading response data! Header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 238
    :cond_4
    iget-object v5, v8, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->inputBuffer:[B

    invoke-static {v5, v3, v9, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v1

    goto :goto_0

    .line 242
    :cond_5
    invoke-virtual {v2, v9}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->withData([B)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;

    move-result-object v9

    return-object v9

    const-string v10, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;--->receiveDataBlockImmediate(B)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private sendRaw([BII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation

    move-object/16 v8, p0

    move-object/16 v9, p1

    move/16 v10, p2

    move/16 p0, p3

    .line 249
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 250
    iget-object v2, v8, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, v8, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->usbBulkOut:Landroid/hardware/usb/UsbEndpoint;

    const/16 v7, 0x1388

    move-object v4, v9

    move v5, v10

    move v6, p0

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result v9

    goto :goto_0

    :cond_0
    add-int v0, v10, p0

    .line 252
    invoke-static {v9, v10, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 253
    iget-object v10, v8, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v0, v8, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->usbBulkOut:Landroid/hardware/usb/UsbEndpoint;

    array-length v1, v9

    const/16 v2, 0x1388

    invoke-virtual {v10, v0, v9, v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v9

    :goto_0
    if-eq v9, p0, :cond_1

    .line 257
    new-instance v10, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USB error - failed to transmit data ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;--->sendRaw([BII)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private skipAvailableInput()V
    .locals 8

    move-object/16 v5, p0

    .line 187
    :cond_0
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->usbConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->usbBulkIn:Landroid/hardware/usb/UsbEndpoint;

    iget-object v2, v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->inputBuffer:[B

    iget-object v3, v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->inputBuffer:[B

    array-length v3, v3

    const/16 v4, 0x64

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v0

    if-lez v0, :cond_1

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipped "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->inputBuffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-gtz v0, :cond_0

    return-void

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;--->skipAvailableInput()V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public hasAutomaticPps()Z
    .locals 4

    move-object/16 v1, p0

    .line 262
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->usbCcidDescription:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;->hasAutomaticPps()Z

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;--->hasAutomaticPps()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public declared-synchronized iccPowerOn()Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation

    move-object/16 v11, p0

    monitor-enter v11

    .line 84
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 86
    invoke-direct {v11}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->skipAvailableInput()V

    const/4 v2, 0x0

    .line 89
    iget-object v3, v11, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->usbCcidDescription:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;->getVoltages()[Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    .line 90
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CCID: attempting to power on with voltage "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :try_start_1
    iget-byte v8, v7, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;->powerOnValue:B

    invoke-direct {v11, v8}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->iccPowerOnVoltage(B)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;

    move-result-object v8
    :try_end_1
    .catch Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException$UsbCcidErrorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v8

    goto :goto_1

    :catch_0
    move-exception v8

    .line 94
    :try_start_2
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException$UsbCcidErrorException;->getErrorResponse()Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;

    move-result-object v9

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->getError()B

    move-result v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_0

    .line 95
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CCID: failed to power on with voltage "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-direct {v11}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->iccPowerOff()V

    const-string v7, "CCID: powered off"

    .line 97
    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 101
    :cond_0
    throw v8

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 107
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    const-string v1, "Couldn\'t power up ICC2"

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v6, 0x0

    sub-long v6, v3, v0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Usb transport connected, took "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms, ATR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;->getData()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    .line 112
    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    monitor-exit v11

    return-object v2

    :catchall_0
    move-exception v0

    .line 83
    monitor-exit v11

    throw v0

    const-string v12, "M_InsDal"

    const-string v13, "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;--->iccPowerOn()Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;"

    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public declared-synchronized sendXfrBlock([B)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation

    move-object/16 v8, p0

    move-object/16 v9, p1

    monitor-enter v8

    .line 155
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 157
    array-length v2, v9

    .line 158
    iget-byte v3, v8, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->currentSequenceNumber:B

    add-int/lit8 v4, v3, 0x1

    int-to-byte v4, v4

    iput-byte v4, v8, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->currentSequenceNumber:B

    const/16 v4, 0xa

    .line 159
    new-array v4, v4, [B

    const/16 v5, 0x6f

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    int-to-byte v5, v2

    const/4 v7, 0x1

    aput-byte v5, v4, v7

    const/4 v5, 0x2

    shr-int/lit8 v7, v2, 0x8

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    const/4 v5, 0x3

    shr-int/lit8 v7, v2, 0x10

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    const/4 v5, 0x4

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v4, v5

    const/4 v2, 0x5

    aput-byte v6, v4, v2

    const/4 v2, 0x6

    aput-byte v3, v4, v2

    const/4 v2, 0x7

    aput-byte v6, v4, v2

    const/16 v2, 0x8

    aput-byte v6, v4, v2

    const/16 v2, 0x9

    aput-byte v6, v4, v2

    .line 167
    invoke-static {v4, v9}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v9

    const/4 v2, 0x0

    .line 170
    :goto_0
    array-length v4, v9

    if-ge v2, v4, :cond_0

    .line 171
    iget-object v4, v8, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->usbBulkOut:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v4

    array-length v5, v9

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 172
    invoke-direct {v8, v9, v2, v4}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->sendRaw([BII)V

    add-int/2addr v2, v4

    goto :goto_0

    .line 176
    :cond_0
    invoke-direct {v8, v3}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;->receiveDataBlock(B)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;

    move-result-object v9

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    sub-long v4, v2, v0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USB XferBlock call took "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit v8

    return-object v9

    :catchall_0
    move-exception v9

    .line 154
    monitor-exit v8

    throw v9

    const-string v10, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver;--->sendXfrBlock([B)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransceiver$CcidDataBlock;"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
