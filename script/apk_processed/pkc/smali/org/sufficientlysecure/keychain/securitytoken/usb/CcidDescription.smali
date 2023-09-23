.class abstract Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;
.super Ljava/lang/Object;
.source "CcidDescription.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR_LENGTH:I = 0x36

.field private static final DESCRIPTOR_TYPE:I = 0x21

.field private static final FEATURES_OFFSET:I = 0x28

.field private static final FEATURE_AUTOMATIC_PPS:I = 0x80

.field private static final FEATURE_AUTOMATIC_VOLTAGE:I = 0x8

.field private static final FEATURE_EXCHAGE_LEVEL_EXTENDED_APDU:I = 0x40000

.field private static final FEATURE_EXCHANGE_LEVEL_SHORT_APDU:I = 0x20000

.field private static final FEATURE_EXCHANGE_LEVEL_TPDU:I = 0x10000

.field private static final MASK_T0_PROTO:S = 0x1s

.field private static final MASK_T1_PROTO:S = 0x2s

.field private static final SLOT_OFFSET:I = 0x4

.field private static final VOLTAGE_1_8V:B = 0x4t

.field private static final VOLTAGE_3V:B = 0x2t

.field private static final VOLTAGE_5V:B = 0x1t


# direct methods
.method constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 34
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static fromRawDescriptors([B)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation

    move-object/16 v4, p0

    .line 73
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 75
    :goto_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 77
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    const/16 v2, 0x21

    if-ne v1, v2, :cond_0

    const/16 v1, 0x36

    if-ne v0, v1, :cond_0

    .line 80
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 82
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 83
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 84
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 85
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 87
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 89
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x28

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 90
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    const/4 v3, 0x1

    move v3, v4

    move v4, v1

    const/4 v1, 0x1

    goto :goto_1

    .line 94
    :cond_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-nez v1, :cond_2

    .line 99
    new-instance v4, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    const-string v0, "CCID descriptor not found"

    invoke-direct {v4, v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 102
    :cond_2
    new-instance v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;

    invoke-direct {v1, v4, v0, v2, v3}, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;-><init>(BBII)V

    return-object v1

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;--->fromRawDescriptors([B)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static fromValues(BBII)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;
    .locals 4

    move/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move/16 p0, p3

    .line 63
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/AutoValue_CcidDescription;-><init>(BBII)V

    return-object v0

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;--->fromValues(BBII)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private hasFeature(I)Z
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 153
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;->getFeatures()I

    move-result v0

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;--->hasFeature(I)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public abstract getFeatures()I
.end method

.method public abstract getMaxSlotIndex()B
.end method

.method public abstract getProtocols()I
.end method

.method getSuitableTransportProtocol()Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransportProtocol;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation

    move-object/16 v5, p0

    .line 122
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;->getProtocols()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v3, 0x20000

    const/high16 v4, 0x10000

    if-eqz v0, :cond_4

    .line 124
    invoke-direct {v5, v4}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduProtocol;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1TpduProtocol;-><init>()V

    return-object v0

    .line 126
    :cond_1
    invoke-direct {v5, v3}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;->hasFeature(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/high16 v0, 0x40000

    .line 127
    invoke-direct {v5, v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 130
    :cond_2
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    const-string v1, "Character level exchange is not supported for T=1"

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_3
    :goto_1
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1ShortApduProtocol;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T1ShortApduProtocol;-><init>()V

    return-object v0

    .line 134
    :cond_4
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;->getProtocols()I

    move-result v0

    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_8

    .line 136
    invoke-direct {v5, v3}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 137
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T0ShortApduProtocol;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/T0ShortApduProtocol;-><init>()V

    return-object v0

    .line 138
    :cond_6
    invoke-direct {v5, v4}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 139
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    const-string v1, "TPDU level exchange is not supported for T=0"

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_7
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    const-string v1, "Character level exchange is not supported for T=0"

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_8
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    const-string v1, "No suitable usb protocol supported"

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    throw v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;--->getSuitableTransportProtocol()Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidTransportProtocol;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getVoltageSupport()B
.end method

.method getVoltages()[Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;
    .locals 10

    move-object/16 v7, p0

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x8

    .line 108
    invoke-direct {v7, v1}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;->AUTO:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    :cond_0
    invoke-static {}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;->values()[Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 112
    iget-byte v5, v4, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;->mask:B

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;->getVoltageSupport()B

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    .line 113
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;

    return-object v0

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;--->getVoltages()[Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method hasAutomaticPps()Z
    .locals 4

    move-object/16 v1, p0

    const/16 v0, 0x80

    .line 149
    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;->hasFeature(I)Z

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;--->hasAutomaticPps()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
