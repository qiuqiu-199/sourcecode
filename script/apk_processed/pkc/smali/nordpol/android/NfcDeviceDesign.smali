.class public final enum Lnordpol/android/NfcDeviceDesign;
.super Ljava/lang/Enum;
.source "NfcDeviceDesign.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnordpol/android/NfcDeviceDesign;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnordpol/android/NfcDeviceDesign;

.field public static final enum CARD_BLACK:Lnordpol/android/NfcDeviceDesign;

.field public static final enum CARD_RUBY:Lnordpol/android/NfcDeviceDesign;

.field public static final enum USB_BLACK:Lnordpol/android/NfcDeviceDesign;

.field public static final enum USB_BLACK_FIDESMO:Lnordpol/android/NfcDeviceDesign;


# instance fields
.field private ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 5
    new-instance v0, Lnordpol/android/NfcDeviceDesign;

    const-string v1, "CARD_RUBY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnordpol/android/NfcDeviceDesign;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnordpol/android/NfcDeviceDesign;->CARD_RUBY:Lnordpol/android/NfcDeviceDesign;

    .line 6
    new-instance v0, Lnordpol/android/NfcDeviceDesign;

    const-string v1, "CARD_BLACK"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lnordpol/android/NfcDeviceDesign;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnordpol/android/NfcDeviceDesign;->CARD_BLACK:Lnordpol/android/NfcDeviceDesign;

    .line 7
    new-instance v0, Lnordpol/android/NfcDeviceDesign;

    const-string v1, "USB_BLACK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lnordpol/android/NfcDeviceDesign;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnordpol/android/NfcDeviceDesign;->USB_BLACK:Lnordpol/android/NfcDeviceDesign;

    .line 8
    new-instance v0, Lnordpol/android/NfcDeviceDesign;

    const-string v1, "USB_BLACK_FIDESMO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lnordpol/android/NfcDeviceDesign;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnordpol/android/NfcDeviceDesign;->USB_BLACK_FIDESMO:Lnordpol/android/NfcDeviceDesign;

    const/4 v0, 0x4

    .line 3
    new-array v0, v0, [Lnordpol/android/NfcDeviceDesign;

    sget-object v1, Lnordpol/android/NfcDeviceDesign;->CARD_RUBY:Lnordpol/android/NfcDeviceDesign;

    aput-object v1, v0, v2

    sget-object v1, Lnordpol/android/NfcDeviceDesign;->CARD_BLACK:Lnordpol/android/NfcDeviceDesign;

    aput-object v1, v0, v3

    sget-object v1, Lnordpol/android/NfcDeviceDesign;->USB_BLACK:Lnordpol/android/NfcDeviceDesign;

    aput-object v1, v0, v4

    sget-object v1, Lnordpol/android/NfcDeviceDesign;->USB_BLACK_FIDESMO:Lnordpol/android/NfcDeviceDesign;

    aput-object v1, v0, v5

    sput-object v0, Lnordpol/android/NfcDeviceDesign;->$VALUES:[Lnordpol/android/NfcDeviceDesign;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lnordpol/android/NfcDeviceDesign;->ordinal:I

    return-void
.end method

.method static getNfcDeviceDesign(I)Lnordpol/android/NfcDeviceDesign;
    .locals 1

    .line 17
    invoke-static {}, Lnordpol/android/NfcDeviceDesign;->values()[Lnordpol/android/NfcDeviceDesign;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnordpol/android/NfcDeviceDesign;
    .locals 1

    .line 3
    const-class v0, Lnordpol/android/NfcDeviceDesign;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnordpol/android/NfcDeviceDesign;

    return-object p0
.end method

.method public static values()[Lnordpol/android/NfcDeviceDesign;
    .locals 1

    .line 3
    sget-object v0, Lnordpol/android/NfcDeviceDesign;->$VALUES:[Lnordpol/android/NfcDeviceDesign;

    invoke-virtual {v0}, [Lnordpol/android/NfcDeviceDesign;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnordpol/android/NfcDeviceDesign;

    return-object v0
.end method
