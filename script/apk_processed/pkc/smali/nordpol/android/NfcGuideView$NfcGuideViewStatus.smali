.class public final enum Lnordpol/android/NfcGuideView$NfcGuideViewStatus;
.super Ljava/lang/Enum;
.source "NfcGuideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnordpol/android/NfcGuideView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NfcGuideViewStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnordpol/android/NfcGuideView$NfcGuideViewStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

.field public static final enum DONE:Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

.field public static final enum FAIL:Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

.field public static final enum STARTING_POSITION:Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

.field public static final enum TRANSFERRING:Lnordpol/android/NfcGuideView$NfcGuideViewStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 77
    new-instance v0, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

    const-string v1, "STARTING_POSITION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;->STARTING_POSITION:Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

    .line 78
    new-instance v0, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

    const-string v1, "TRANSFERRING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;->TRANSFERRING:Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

    .line 79
    new-instance v0, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

    const-string v1, "DONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;->DONE:Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

    .line 80
    new-instance v0, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

    const-string v1, "FAIL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;->FAIL:Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

    const/4 v0, 0x4

    .line 76
    new-array v0, v0, [Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

    sget-object v1, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;->STARTING_POSITION:Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

    aput-object v1, v0, v2

    sget-object v1, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;->TRANSFERRING:Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

    aput-object v1, v0, v3

    sget-object v1, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;->DONE:Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

    aput-object v1, v0, v4

    sget-object v1, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;->FAIL:Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

    aput-object v1, v0, v5

    sput-object v0, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;->$VALUES:[Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnordpol/android/NfcGuideView$NfcGuideViewStatus;
    .locals 1

    .line 76
    const-class v0, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

    return-object p0
.end method

.method public static values()[Lnordpol/android/NfcGuideView$NfcGuideViewStatus;
    .locals 1

    .line 76
    sget-object v0, Lnordpol/android/NfcGuideView$NfcGuideViewStatus;->$VALUES:[Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

    invoke-virtual {v0}, [Lnordpol/android/NfcGuideView$NfcGuideViewStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnordpol/android/NfcGuideView$NfcGuideViewStatus;

    return-object v0
.end method
