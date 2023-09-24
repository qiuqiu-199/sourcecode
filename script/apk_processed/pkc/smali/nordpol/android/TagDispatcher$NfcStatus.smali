.class public final enum Lnordpol/android/TagDispatcher$NfcStatus;
.super Ljava/lang/Enum;
.source "TagDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnordpol/android/TagDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NfcStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnordpol/android/TagDispatcher$NfcStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnordpol/android/TagDispatcher$NfcStatus;

.field public static final enum AVAILABLE_DISABLED:Lnordpol/android/TagDispatcher$NfcStatus;

.field public static final enum AVAILABLE_ENABLED:Lnordpol/android/TagDispatcher$NfcStatus;

.field public static final enum NOT_AVAILABLE:Lnordpol/android/TagDispatcher$NfcStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 54
    new-instance v0, Lnordpol/android/TagDispatcher$NfcStatus;

    const-string v1, "AVAILABLE_ENABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnordpol/android/TagDispatcher$NfcStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnordpol/android/TagDispatcher$NfcStatus;->AVAILABLE_ENABLED:Lnordpol/android/TagDispatcher$NfcStatus;

    .line 55
    new-instance v0, Lnordpol/android/TagDispatcher$NfcStatus;

    const-string v1, "AVAILABLE_DISABLED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lnordpol/android/TagDispatcher$NfcStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnordpol/android/TagDispatcher$NfcStatus;->AVAILABLE_DISABLED:Lnordpol/android/TagDispatcher$NfcStatus;

    .line 56
    new-instance v0, Lnordpol/android/TagDispatcher$NfcStatus;

    const-string v1, "NOT_AVAILABLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lnordpol/android/TagDispatcher$NfcStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnordpol/android/TagDispatcher$NfcStatus;->NOT_AVAILABLE:Lnordpol/android/TagDispatcher$NfcStatus;

    const/4 v0, 0x3

    .line 53
    new-array v0, v0, [Lnordpol/android/TagDispatcher$NfcStatus;

    sget-object v1, Lnordpol/android/TagDispatcher$NfcStatus;->AVAILABLE_ENABLED:Lnordpol/android/TagDispatcher$NfcStatus;

    aput-object v1, v0, v2

    sget-object v1, Lnordpol/android/TagDispatcher$NfcStatus;->AVAILABLE_DISABLED:Lnordpol/android/TagDispatcher$NfcStatus;

    aput-object v1, v0, v3

    sget-object v1, Lnordpol/android/TagDispatcher$NfcStatus;->NOT_AVAILABLE:Lnordpol/android/TagDispatcher$NfcStatus;

    aput-object v1, v0, v4

    sput-object v0, Lnordpol/android/TagDispatcher$NfcStatus;->$VALUES:[Lnordpol/android/TagDispatcher$NfcStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnordpol/android/TagDispatcher$NfcStatus;
    .locals 1

    .line 53
    const-class v0, Lnordpol/android/TagDispatcher$NfcStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnordpol/android/TagDispatcher$NfcStatus;

    return-object p0
.end method

.method public static values()[Lnordpol/android/TagDispatcher$NfcStatus;
    .locals 1

    .line 53
    sget-object v0, Lnordpol/android/TagDispatcher$NfcStatus;->$VALUES:[Lnordpol/android/TagDispatcher$NfcStatus;

    invoke-virtual {v0}, [Lnordpol/android/TagDispatcher$NfcStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnordpol/android/TagDispatcher$NfcStatus;

    return-object v0
.end method
