.class public Lorg/sufficientlysecure/materialchips/util/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# static fields
.field private static windowWidthLandscape:I

.field private static windowWidthPortrait:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static dpToPx(I)I
    .locals 1

    int-to-float p0, p0

    .line 17
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p0, p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static getNavBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 53
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    const/4 v1, 0x4

    .line 54
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 62
    invoke-static {p0}, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->isTablet(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v1, v3, :cond_0

    const-string v1, "navigation_bar_height"

    goto :goto_0

    :cond_0
    const-string v1, "navigation_bar_height_landscape"

    :goto_0
    const-string v2, "dimen"

    const-string v3, "android"

    .line 63
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_1
    if-ne v1, v3, :cond_2

    const-string v1, "navigation_bar_height"

    goto :goto_1

    :cond_2
    const-string v1, "navigation_bar_width"

    :goto_1
    const-string v2, "dimen"

    const-string v3, "android"

    .line 65
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_2
    if-lez v0, :cond_3

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static getWindowWidth(Landroid/content/Context;)I
    .locals 2

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 26
    invoke-static {p0}, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->getWindowWidthPortrait(Landroid/content/Context;)I

    move-result p0

    return p0

    .line 29
    :cond_0
    invoke-static {p0}, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->getWindowWidthLandscape(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method private static getWindowWidthLandscape(Landroid/content/Context;)I
    .locals 1

    .line 43
    sget v0, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->windowWidthLandscape:I

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 45
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput p0, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->windowWidthLandscape:I

    .line 48
    :cond_0
    sget p0, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->windowWidthLandscape:I

    return p0
.end method

.method private static getWindowWidthPortrait(Landroid/content/Context;)I
    .locals 1

    .line 34
    sget v0, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->windowWidthPortrait:I

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 36
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput p0, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->windowWidthPortrait:I

    .line 39
    :cond_0
    sget p0, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->windowWidthPortrait:I

    return p0
.end method

.method private static isTablet(Landroid/content/Context;)Z
    .locals 1

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
