.class Lcom/nispok/snackbar/DisplayCompatImplJBMR1;
.super Lcom/nispok/snackbar/DisplayCompat$Impl;
.source "DisplayCompatImplJBMR1.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/nispok/snackbar/DisplayCompat$Impl;-><init>()V

    return-void
.end method


# virtual methods
.method getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0

    .line 17
    invoke-virtual {p1, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method

.method getSize(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 0

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-void
.end method
