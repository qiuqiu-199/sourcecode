.class final enum Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;
.super Ljava/lang/Enum;
.source "RBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;

.field public static final enum EDC_ERROR:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;

.field public static final enum NO_ERROR:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;

.field public static final enum OTHER_ERROR:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;


# instance fields
.field private mLowBits:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 52
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;->NO_ERROR:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;

    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;

    const-string v1, "EDC_ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;->EDC_ERROR:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;

    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;

    const-string v1, "OTHER_ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;->OTHER_ERROR:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;

    const/4 v0, 0x3

    .line 51
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;->NO_ERROR:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;->EDC_ERROR:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;->OTHER_ERROR:Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;

    aput-object v1, v0, v4

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;->$VALUES:[Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;---><clinit>()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    .line 56
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-byte v1, p0

    .line 57
    iput-byte v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;->mLowBits:B

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;---><init>(Ljava/lang/String;II)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static from(B)Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;
        }
    .end annotation

    move/16 v6, p0

    .line 62
    invoke-static {}, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;->values()[Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 63
    iget-byte v4, v3, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;->mLowBits:B

    and-int/lit8 v5, v6, 0x3

    if-ne v4, v5, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_1
    new-instance v6, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;

    const-string v0, "Invalid R block error bits"

    invoke-direct {v6, v0}, Lorg/sufficientlysecure/keychain/securitytoken/usb/UsbTransportException;-><init>(Ljava/lang/String;)V

    throw v6

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;--->from(B)Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;
    .locals 4

    move-object/16 v1, p0

    .line 51
    const-class v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;
    .locals 4

    .line 51
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;->$VALUES:[Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;--->values()[Lorg/sufficientlysecure/keychain/securitytoken/usb/tpdu/RBlock$RError;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
