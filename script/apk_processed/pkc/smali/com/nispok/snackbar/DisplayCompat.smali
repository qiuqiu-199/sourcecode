.class Lcom/nispok/snackbar/DisplayCompat;
.super Ljava/lang/Object;
.source "DisplayCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nispok/snackbar/DisplayCompat$Impl;
    }
.end annotation


# static fields
.field private static final IMPL:Lcom/nispok/snackbar/DisplayCompat$Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 19
    new-instance v0, Lcom/nispok/snackbar/DisplayCompatImplJBMR1;

    invoke-direct {v0}, Lcom/nispok/snackbar/DisplayCompatImplJBMR1;-><init>()V

    sput-object v0, Lcom/nispok/snackbar/DisplayCompat;->IMPL:Lcom/nispok/snackbar/DisplayCompat$Impl;

    goto :goto_0

    .line 20
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_1

    .line 21
    new-instance v0, Lcom/nispok/snackbar/DisplayCompatImplHoneycombMR2;

    invoke-direct {v0}, Lcom/nispok/snackbar/DisplayCompatImplHoneycombMR2;-><init>()V

    sput-object v0, Lcom/nispok/snackbar/DisplayCompat;->IMPL:Lcom/nispok/snackbar/DisplayCompat$Impl;

    goto :goto_0

    .line 23
    :cond_1
    new-instance v0, Lcom/nispok/snackbar/DisplayCompatImplPreHoneycombMR2;

    invoke-direct {v0}, Lcom/nispok/snackbar/DisplayCompatImplPreHoneycombMR2;-><init>()V

    sput-object v0, Lcom/nispok/snackbar/DisplayCompat;->IMPL:Lcom/nispok/snackbar/DisplayCompat$Impl;

    :goto_0
    return-void
.end method

.method public static getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 1

    .line 32
    sget-object v0, Lcom/nispok/snackbar/DisplayCompat;->IMPL:Lcom/nispok/snackbar/DisplayCompat$Impl;

    invoke-virtual {v0, p0, p1}, Lcom/nispok/snackbar/DisplayCompat$Impl;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    return-void
.end method

.method public static getSize(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 1

    .line 28
    sget-object v0, Lcom/nispok/snackbar/DisplayCompat;->IMPL:Lcom/nispok/snackbar/DisplayCompat$Impl;

    invoke-virtual {v0, p0, p1}, Lcom/nispok/snackbar/DisplayCompat$Impl;->getSize(Landroid/view/Display;Landroid/graphics/Point;)V

    return-void
.end method

.method public static getWidthFromPercentage(Landroid/app/Activity;Ljava/lang/Float;)I
    .locals 1

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 37
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 38
    invoke-static {p0, v0}, Lcom/nispok/snackbar/DisplayCompat;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 40
    iget p0, v0, Landroid/graphics/Point;->x:I

    int-to-float p0, p0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float p0, p0, p1

    float-to-int p0, p0

    return p0
.end method
