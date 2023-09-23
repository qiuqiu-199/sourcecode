.class Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;
.super Ljava/lang/Object;
.source "CardCapabilities.java"


# static fields
.field private static final EXPECTED_PROCESSING_STATUS_BYTES:[B

.field private static final MASK_CHAINING:I = 0x80

.field private static final MASK_EXTENDED:I = 0x40

.field private static final STATUS_INDICATOR_INITIALISATION_STATE:I = 0x3

.field private static final STATUS_INDICATOR_NO_INFORMATION:I = 0x0

.field private static final STATUS_INDICATOR_OPERATIONAL_STATE:I = 0x5


# instance fields
.field private capabilityBytes:[B

.field private historicalBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    .line 34
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;->EXPECTED_PROCESSING_STATUS_BYTES:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x70t
        0x0t
    .end array-data

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;---><clinit>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 47
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;->capabilityBytes:[B

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 39
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 40
    aget-byte v0, v2, v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;->historicalBytes:[B

    .line 44
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;->getCapabilitiesBytes([B)[B

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;->capabilityBytes:[B

    return-void

    .line 41
    :cond_1
    :goto_0
    new-instance v2, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    const-string v0, "Invalid historical bytes category indicator byte"

    invoke-direct {v2, v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    throw v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;---><init>([B)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static getCapabilitiesBytes([B)[B
    .locals 5

    move-object/16 v2, p0

    .line 53
    array-length v0, v2

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x1

    invoke-static {v2, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 54
    :goto_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v1, 0x73

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    .line 57
    new-array v0, v0, [B

    .line 58
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0

    .line 61
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    and-int/lit8 v0, v0, 0xf

    add-int/2addr v1, v0

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;--->getCapabilitiesBytes([B)[B"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public hasChaining()Z
    .locals 5

    move-object/16 v2, p0

    .line 68
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;->capabilityBytes:[B

    if-eqz v0, :cond_0

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;->capabilityBytes:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;--->hasChaining()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hasExtended()Z
    .locals 5

    move-object/16 v2, p0

    .line 72
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;->capabilityBytes:[B

    if-eqz v0, :cond_0

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;->capabilityBytes:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;--->hasExtended()Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hasLifeCycleManagement()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation

    move-object/16 v4, p0

    .line 76
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;->historicalBytes:[B

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;->historicalBytes:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;->historicalBytes:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 77
    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;->EXPECTED_PROCESSING_STATUS_BYTES:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 84
    :cond_0
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;->historicalBytes:[B

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;->historicalBytes:[B

    array-length v2, v2

    const/4 v3, 0x3

    sub-int/2addr v2, v3

    aget-byte v0, v0, v2

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    .line 94
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    const-string v1, "Status indicator byte not specified in OpenPGP specification"

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/securitytoken/CardCapabilities;--->hasLifeCycleManagement()Z"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
