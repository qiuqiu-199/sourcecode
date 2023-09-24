.class Lcom/nispok/snackbar/DisplayCompatImplPreHoneycombMR2;
.super Lcom/nispok/snackbar/DisplayCompat$Impl;
.source "DisplayCompatImplPreHoneycombMR2.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/nispok/snackbar/DisplayCompat$Impl;-><init>()V

    return-void
.end method


# virtual methods
.method getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 1

    .line 16
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 17
    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    iput p1, p2, Landroid/graphics/Point;->y:I

    return-void
.end method

.method getSize(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 1

    .line 10
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p2, Landroid/graphics/Point;->x:I

    .line 11
    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    iput p1, p2, Landroid/graphics/Point;->y:I

    return-void
.end method
