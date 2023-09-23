.class Lcom/cocosw/bottomsheet/TranslucentHelper;
.super Ljava/lang/Object;
.source "TranslucentHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# instance fields
.field private final dialog:Landroid/app/Dialog;

.field private mInPortrait:Z

.field mNavBarAvailable:Z

.field private mSmallestWidthDp:F

.field mStatusBarHeight:I

.field private sNavBarOverride:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/content/Context;)V
    .locals 7

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/cocosw/bottomsheet/TranslucentHelper;->dialog:Landroid/app/Dialog;

    const-string p1, "window"

    .line 40
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 41
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/cocosw/bottomsheet/TranslucentHelper;->mInPortrait:Z

    const/4 v0, 0x0

    :try_start_0
    const-string v3, "android.os.SystemProperties"

    .line 43
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "get"

    .line 44
    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 46
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "qemu.hw.mainkeys"

    aput-object v5, v4, v1

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/cocosw/bottomsheet/TranslucentHelper;->sNavBarOverride:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 48
    :catch_0
    iput-object v0, p0, Lcom/cocosw/bottomsheet/TranslucentHelper;->sNavBarOverride:Ljava/lang/String;

    .line 52
    :goto_1
    new-array v0, v2, [I

    const v3, 0x10103f0

    aput v3, v0, v1

    .line 53
    invoke-virtual {p2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    :try_start_1
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/cocosw/bottomsheet/TranslucentHelper;->mNavBarAvailable:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    move-object v0, p2

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x8000000

    .line 64
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 65
    iput-boolean v2, p0, Lcom/cocosw/bottomsheet/TranslucentHelper;->mNavBarAvailable:Z

    .line 68
    :cond_1
    invoke-direct {p0, p1}, Lcom/cocosw/bottomsheet/TranslucentHelper;->getSmallestWidthDp(Landroid/view/WindowManager;)F

    move-result p1

    iput p1, p0, Lcom/cocosw/bottomsheet/TranslucentHelper;->mSmallestWidthDp:F

    .line 69
    iget-boolean p1, p0, Lcom/cocosw/bottomsheet/TranslucentHelper;->mNavBarAvailable:Z

    if-eqz p1, :cond_2

    .line 70
    invoke-direct {p0, v2}, Lcom/cocosw/bottomsheet/TranslucentHelper;->setTranslucentStatus(Z)V

    .line 71
    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string p2, "status_bar_height"

    invoke-direct {p0, p1, p2}, Lcom/cocosw/bottomsheet/TranslucentHelper;->getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/cocosw/bottomsheet/TranslucentHelper;->mStatusBarHeight:I

    return-void

    :catchall_0
    move-exception p1

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method private getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 2

    const-string v0, "dimen"

    const-string v1, "android"

    .line 142
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    .line 144
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getSmallestWidthDp(Landroid/view/WindowManager;)F
    .locals 3

    .line 92
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 93
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 94
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 99
    :goto_0
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p1, p1

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v1

    .line 100
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v0

    .line 101
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private hasNavBar(Landroid/content/Context;)Z
    .locals 4

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_showNavigationBar"

    const-string v2, "bool"

    const-string v3, "android"

    .line 125
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    const-string v0, "1"

    .line 129
    iget-object v1, p0, Lcom/cocosw/bottomsheet/TranslucentHelper;->sNavBarOverride:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .line 131
    iget-object v1, p0, Lcom/cocosw/bottomsheet/TranslucentHelper;->sNavBarOverride:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, p1

    :goto_0
    return v2

    .line 136
    :cond_2
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1
.end method

.method private isNavigationAtBottom()Z
    .locals 2

    .line 157
    iget v0, p0, Lcom/cocosw/bottomsheet/TranslucentHelper;->mSmallestWidthDp:F

    const/high16 v1, 0x44160000    # 600.0f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lcom/cocosw/bottomsheet/TranslucentHelper;->mInPortrait:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private setTranslucentStatus(Z)V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/cocosw/bottomsheet/TranslucentHelper;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 80
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    or-int/2addr p1, v2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 82
    :cond_0
    iget p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x4000001

    and-int/2addr p1, v2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 85
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/high16 p1, 0x8000000

    .line 87
    invoke-virtual {v0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method


# virtual methods
.method getNavigationBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 107
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0xe

    if-lt v1, v3, :cond_2

    .line 108
    invoke-direct {p0, p1}, Lcom/cocosw/bottomsheet/TranslucentHelper;->hasNavBar(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 110
    iget-boolean p1, p0, Lcom/cocosw/bottomsheet/TranslucentHelper;->mInPortrait:Z

    if-eqz p1, :cond_0

    const-string p1, "navigation_bar_height"

    goto :goto_0

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/cocosw/bottomsheet/TranslucentHelper;->isNavigationAtBottom()Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    const-string p1, "navigation_bar_height_landscape"

    .line 117
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/cocosw/bottomsheet/TranslucentHelper;->getInternalDimensionSize(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    return v2
.end method
