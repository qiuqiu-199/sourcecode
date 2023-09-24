.class final enum Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;
.super Ljava/lang/Enum;
.source "CcidDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Voltage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;

.field public static final enum AUTO:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;

.field public static final enum _1_8V:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;

.field public static final enum _3V:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;

.field public static final enum _5V:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;


# instance fields
.field final mask:B

.field final powerOnValue:B


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 157
    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;->AUTO:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;

    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;

    const-string v1, "_5V"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v3}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;->_5V:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;

    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;

    const-string v1, "_3V"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4, v4}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;->_3V:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;

    new-instance v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;

    const-string v1, "_1_8V"

    const/4 v5, 0x4

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v6, v5}, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;->_1_8V:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;

    .line 156
    new-array v0, v5, [Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;->AUTO:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;->_5V:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;->_3V:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;

    aput-object v1, v0, v4

    sget-object v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;->_1_8V:Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;

    aput-object v1, v0, v6

    sput-object v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;->$VALUES:[Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;

    return-void

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;---><clinit>()V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    move/16 p1, p4

    .line 162
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-byte v1, p0

    .line 163
    iput-byte v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;->powerOnValue:B

    int-to-byte v1, p1

    .line 164
    iput-byte v1, v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;->mask:B

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;---><init>(Ljava/lang/String;III)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;
    .locals 4

    move-object/16 v1, p0

    .line 156
    const-class v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;
    .locals 4

    .line 156
    sget-object v0, Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;->$VALUES:[Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;--->values()[Lorg/sufficientlysecure/keychain/securitytoken/usb/CcidDescription$Voltage;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
