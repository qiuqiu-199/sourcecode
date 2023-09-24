.class public final enum Lcom/nispok/snackbar/Snackbar$SnackbarDuration;
.super Ljava/lang/Enum;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nispok/snackbar/Snackbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SnackbarDuration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nispok/snackbar/Snackbar$SnackbarDuration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

.field public static final enum LENGTH_INDEFINITE:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

.field public static final enum LENGTH_LONG:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

.field public static final enum LENGTH_SHORT:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;


# instance fields
.field private duration:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 48
    new-instance v0, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    const-string v1, "LENGTH_SHORT"

    const/4 v2, 0x0

    const-wide/16 v3, 0x7d0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->LENGTH_SHORT:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    new-instance v0, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    const-string v1, "LENGTH_LONG"

    const/4 v3, 0x1

    const-wide/16 v4, 0xdac

    invoke-direct {v0, v1, v3, v4, v5}, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->LENGTH_LONG:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    new-instance v0, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    const-string v1, "LENGTH_INDEFINITE"

    const/4 v4, 0x2

    const-wide/16 v5, -0x1

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->LENGTH_INDEFINITE:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    const/4 v0, 0x3

    .line 47
    new-array v0, v0, [Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    sget-object v1, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->LENGTH_SHORT:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->LENGTH_LONG:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->LENGTH_INDEFINITE:Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->$VALUES:[Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-wide p3, p0, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->duration:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nispok/snackbar/Snackbar$SnackbarDuration;
    .locals 1

    .line 47
    const-class v0, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    return-object p0
.end method

.method public static values()[Lcom/nispok/snackbar/Snackbar$SnackbarDuration;
    .locals 1

    .line 47
    sget-object v0, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->$VALUES:[Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    invoke-virtual {v0}, [Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nispok/snackbar/Snackbar$SnackbarDuration;

    return-object v0
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/nispok/snackbar/Snackbar$SnackbarDuration;->duration:J

    return-wide v0
.end method
