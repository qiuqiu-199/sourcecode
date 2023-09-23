.class public final Lcom/mikhaellopez/circularprogressbar/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikhaellopez/circularprogressbar/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CircularProgressBar:[I

.field public static final CircularProgressBar_cpb_background_progressbar_color:I = 0x0

.field public static final CircularProgressBar_cpb_background_progressbar_width:I = 0x1

.field public static final CircularProgressBar_cpb_progress:I = 0x2

.field public static final CircularProgressBar_cpb_progressbar_color:I = 0x3

.field public static final CircularProgressBar_cpb_progressbar_width:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    .line 30
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mikhaellopez/circularprogressbar/R$styleable;->CircularProgressBar:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0400cf
        0x7f0400d0
        0x7f0400d1
        0x7f0400d2
        0x7f0400d3
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
