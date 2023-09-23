.class public Lorg/inaturalist/android/BaseFragmentActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/BaseFragmentActivity$UserDetailsReceiver;
    }
.end annotation


# static fields
.field static final CAPTURE_IMAGE_ACTIVITY_REQUEST_CODE:I = 0x1

.field protected static final REQUEST_CODE_OBSERVATION_EDIT:I = 0x1000

.field static final SELECT_IMAGE_REQUEST_CODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BaseFragmentActivity"

.field private static final USER_REFRESH_TIME_MINS:I = 0x1


# instance fields
.field private app:Lorg/inaturalist/android/INaturalistApp;

.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field private mSelectedBottomGrid:Z

.field private mSideMenu:Landroid/view/ViewGroup;

.field private mUserDetailsReceiver:Lorg/inaturalist/android/BaseFragmentActivity$UserDetailsReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/BaseFragmentActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->resizeMenu()V

    return-void
.end method

.method static synthetic access$100(Lorg/inaturalist/android/BaseFragmentActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->refreshUnreadActivities()V

    return-void
.end method

.method static synthetic access$200(Lorg/inaturalist/android/BaseFragmentActivity;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->app:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$300(Lorg/inaturalist/android/BaseFragmentActivity;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mSelectedBottomGrid:Z

    return p0
.end method

.method static synthetic access$302(Lorg/inaturalist/android/BaseFragmentActivity;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mSelectedBottomGrid:Z

    return p1
.end method

.method static synthetic access$400(Lorg/inaturalist/android/BaseFragmentActivity;)Z
    .locals 0

    .line 53
    invoke-direct {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->isNetworkAvailable()Z

    move-result p0

    return p0
.end method

.method private buildSideMenu()V
    .locals 10

    .line 323
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v1, 0x7f0a0200

    const/16 v2, 0xe

    if-ge v0, v2, :cond_0

    .line 324
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0a01fb

    .line 328
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lorg/inaturalist/android/BaseFragmentActivity$8;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/BaseFragmentActivity$8;-><init>(Lorg/inaturalist/android/BaseFragmentActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01fe

    .line 334
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lorg/inaturalist/android/BaseFragmentActivity$9;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/BaseFragmentActivity$9;-><init>(Lorg/inaturalist/android/BaseFragmentActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a020a

    .line 340
    invoke-virtual {p0, v2}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lorg/inaturalist/android/BaseFragmentActivity$10;

    invoke-direct {v4, p0}, Lorg/inaturalist/android/BaseFragmentActivity$10;-><init>(Lorg/inaturalist/android/BaseFragmentActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lorg/inaturalist/android/BaseFragmentActivity$11;

    invoke-direct {v4, p0}, Lorg/inaturalist/android/BaseFragmentActivity$11;-><init>(Lorg/inaturalist/android/BaseFragmentActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a01f9

    .line 352
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lorg/inaturalist/android/BaseFragmentActivity$12;

    invoke-direct {v5, p0}, Lorg/inaturalist/android/BaseFragmentActivity$12;-><init>(Lorg/inaturalist/android/BaseFragmentActivity;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0a0208

    .line 366
    invoke-virtual {p0, v4}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lorg/inaturalist/android/BaseFragmentActivity$13;

    invoke-direct {v6, p0}, Lorg/inaturalist/android/BaseFragmentActivity$13;-><init>(Lorg/inaturalist/android/BaseFragmentActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0a0203

    .line 372
    invoke-virtual {p0, v5}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lorg/inaturalist/android/BaseFragmentActivity$14;

    invoke-direct {v6, p0}, Lorg/inaturalist/android/BaseFragmentActivity$14;-><init>(Lorg/inaturalist/android/BaseFragmentActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0a020c

    .line 381
    invoke-virtual {p0, v5}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lorg/inaturalist/android/BaseFragmentActivity$15;

    invoke-direct {v7, p0}, Lorg/inaturalist/android/BaseFragmentActivity$15;-><init>(Lorg/inaturalist/android/BaseFragmentActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0a0202

    .line 388
    invoke-virtual {p0, v6}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lorg/inaturalist/android/BaseFragmentActivity$16;

    invoke-direct {v7, p0}, Lorg/inaturalist/android/BaseFragmentActivity$16;-><init>(Lorg/inaturalist/android/BaseFragmentActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0a0337

    .line 395
    invoke-virtual {p0, v6}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lorg/inaturalist/android/BaseFragmentActivity$17;

    invoke-direct {v7, p0}, Lorg/inaturalist/android/BaseFragmentActivity$17;-><init>(Lorg/inaturalist/android/BaseFragmentActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    const-class v6, Lorg/inaturalist/android/ExploreActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v8, 0xb

    const v9, 0x7f0600b8

    if-eqz v6, :cond_1

    .line 404
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 405
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v8, :cond_1

    const v0, 0x7f0a01ff

    .line 406
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 409
    :cond_1
    const-class v0, Lorg/inaturalist/android/ProjectsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    invoke-virtual {p0, v2}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 411
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v8, :cond_2

    const v0, 0x7f0a020b

    .line 412
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 415
    :cond_2
    const-class v0, Lorg/inaturalist/android/GuidesActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 416
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 417
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v8, :cond_3

    const v0, 0x7f0a0201

    .line 418
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 421
    :cond_3
    const-class v0, Lorg/inaturalist/android/UserActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 422
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 423
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v8, :cond_4

    const v0, 0x7f0a01fa

    .line 424
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 427
    :cond_4
    const-class v0, Lorg/inaturalist/android/SettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 428
    invoke-virtual {p0, v5}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 429
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v8, :cond_5

    const v0, 0x7f0a020d

    .line 430
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 433
    :cond_5
    const-class v0, Lorg/inaturalist/android/MissionsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 434
    invoke-virtual {p0, v4}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 435
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v8, :cond_6

    const v0, 0x7f0a0209

    .line 436
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_6
    return-void
.end method

.method private static getAppUsableScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 1

    const-string/jumbo v0, "window"

    .line 661
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 662
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 663
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 664
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-object v0
.end method

.method private static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 641
    invoke-static {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->getAppUsableScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 642
    invoke-static {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->getRealScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    .line 645
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Landroid/graphics/Point;->x:I

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    return v3

    .line 651
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, Landroid/graphics/Point;->y:I

    if-ge v1, v2, :cond_1

    .line 652
    iget p0, p0, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr p0, v0

    return p0

    :cond_1
    return v3
.end method

.method private static getRealScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 5

    const-string/jumbo v0, "window"

    .line 670
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 671
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 672
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 674
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 675
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 676
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 678
    :try_start_0
    const-class v1, Landroid/view/Display;

    const-string v2, "getRawWidth"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 679
    const-class v1, Landroid/view/Display;

    const-string v2, "getRawHeight"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v0, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method private isNetworkAvailable()Z
    .locals 1

    const-string v0, "connectivity"

    .line 508
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 509
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private moveDrawerToTop()V
    .locals 5

    const-string v0, "layout_inflater"

    .line 84
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d00dd

    const/4 v2, 0x0

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    .line 88
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    .line 89
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 90
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const v4, 0x7f0a0110

    .line 91
    invoke-virtual {v0, v4}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 92
    invoke-virtual {v4, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    const v3, 0x7f0a01ab

    .line 93
    invoke-virtual {v0, v3}, Landroid/support/v4/widget/DrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->getStatusBarHeight()I

    move-result v4

    invoke-virtual {v3, v2, v4, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 96
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 98
    invoke-direct {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->resizeMenu()V

    return-void
.end method

.method private refreshUnreadActivities()V
    .locals 5

    const-string v0, "iNaturalistPreferences"

    const/4 v1, 0x0

    .line 631
    invoke-virtual {p0, v0, v1}, Lorg/inaturalist/android/BaseFragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "unread_activities"

    .line 632
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v2, 0x7f0a002d

    .line 633
    invoke-virtual {p0, v2}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-lez v0, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    .line 634
    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const v3, 0x7f100258

    .line 635
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private resizeMenu()V
    .locals 4

    .line 102
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a01ab

    .line 103
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-static {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    .line 108
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->getStatusBarHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v3, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public static safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V
    .locals 0

    .line 552
    invoke-static {p0, p2}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    .line 554
    :try_start_0
    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected static safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 541
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public getStatusBarHeight()I
    .locals 4

    .line 76
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 501
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 502
    iget-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onDrawerCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 p1, 0x1

    .line 112
    new-array v0, p1, [Lio/fabric/sdk/android/Kit;

    new-instance v1, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v1}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    .line 114
    invoke-direct {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->moveDrawerToTop()V

    const v0, 0x7f0a0111

    .line 116
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v0, 0x7f0a01ab

    .line 117
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mSideMenu:Landroid/view/ViewGroup;

    .line 119
    new-instance v0, Lorg/inaturalist/android/BaseFragmentActivity$1;

    iget-object v6, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Lorg/inaturalist/android/BaseFragmentActivity$1;-><init>(Lorg/inaturalist/android/BaseFragmentActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    iput-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    .line 140
    iget-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 142
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 143
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 144
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setIcon(I)V

    .line 146
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    const v0, 0x7f0a01ff

    .line 147
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x3f0a3d71    # 0.54f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    const v0, 0x7f0a020b

    .line 148
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    const v0, 0x7f0a0201

    .line 149
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    const v0, 0x7f0a01fa

    .line 150
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    const v0, 0x7f0a020d

    .line 151
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    const v0, 0x7f0a0209

    .line 152
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    const v0, 0x7f0a0204

    .line 153
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 156
    :cond_0
    invoke-direct {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->buildSideMenu()V

    .line 158
    iget-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->app:Lorg/inaturalist/android/INaturalistApp;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->app:Lorg/inaturalist/android/INaturalistApp;

    .line 159
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    if-nez v0, :cond_2

    new-instance v0, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    :cond_2
    const-string v0, "iNaturalistPreferences"

    .line 163
    invoke-virtual {p0, v0, v2}, Lorg/inaturalist/android/BaseFragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "first_time"

    .line 164
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/inaturalist/android/TutorialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "first_time"

    .line 168
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 171
    :cond_3
    iget-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->app:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0, p0}, Lorg/inaturalist/android/INaturalistApp;->detectUserCountryAndUpdateNetwork(Landroid/content/Context;)V

    .line 175
    :goto_0
    invoke-direct {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->refreshUnreadActivities()V

    .line 176
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->refreshUserDetails()V

    const v0, 0x7f0a0206

    .line 178
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lorg/inaturalist/android/BaseFragmentActivity$2;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/BaseFragmentActivity$2;-><init>(Lorg/inaturalist/android/BaseFragmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->app:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->hasAutoSync()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->app:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->loggedIn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 188
    iget-object v1, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    const p1, 0x7f1001d3

    invoke-virtual {p0, p1}, Lorg/inaturalist/android/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const p1, 0x7f100376

    invoke-virtual {p0, p1}, Lorg/inaturalist/android/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/inaturalist/android/BaseFragmentActivity$3;

    invoke-direct {v4, p0}, Lorg/inaturalist/android/BaseFragmentActivity$3;-><init>(Lorg/inaturalist/android/BaseFragmentActivity;)V

    new-instance v5, Lorg/inaturalist/android/BaseFragmentActivity$4;

    invoke-direct {v5, p0}, Lorg/inaturalist/android/BaseFragmentActivity$4;-><init>(Lorg/inaturalist/android/BaseFragmentActivity;)V

    const v6, 0x7f100280

    const v7, 0x7f100375

    invoke-virtual/range {v1 .. v7}, Lorg/inaturalist/android/ActivityHelper;->confirm(Ljava/lang/String;Ljava/lang/Object;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V

    goto :goto_1

    .line 201
    :cond_4
    iget-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->app:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->hasAutoSync()Z

    move-result v0

    if-nez v0, :cond_5

    .line 203
    iget-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->app:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/INaturalistApp;->setAutoSync(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 471
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    .line 472
    iget-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_1

    .line 473
    iget-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mSideMenu:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 474
    iget-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mSideMenu:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_0

    .line 476
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mSideMenu:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 482
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 525
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 526
    iget-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    invoke-virtual {v0}, Lorg/inaturalist/android/ActivityHelper;->stopLoading()V

    .line 530
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mUserDetailsReceiver:Lorg/inaturalist/android/BaseFragmentActivity$UserDetailsReceiver;

    invoke-virtual {p0, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 488
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 489
    iget-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    if-eqz p1, :cond_0

    .line 490
    iget-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 492
    new-instance p1, Lorg/inaturalist/android/BaseFragmentActivity$UserDetailsReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/inaturalist/android/BaseFragmentActivity$UserDetailsReceiver;-><init>(Lorg/inaturalist/android/BaseFragmentActivity;Lorg/inaturalist/android/BaseFragmentActivity$1;)V

    iput-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mUserDetailsReceiver:Lorg/inaturalist/android/BaseFragmentActivity$UserDetailsReceiver;

    .line 493
    new-instance p1, Landroid/content/IntentFilter;

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_USER_DETAILS_RESULT:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "BaseFragmentActivity"

    const-string v1, "Registering ACTION_GET_USER_DETAILS_RESULT"

    .line 494
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mUserDetailsReceiver:Lorg/inaturalist/android/BaseFragmentActivity$UserDetailsReceiver;

    invoke-virtual {p0, v0, p1}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 516
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 517
    iget-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->app:Lorg/inaturalist/android/INaturalistApp;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->app:Lorg/inaturalist/android/INaturalistApp;

    .line 518
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    if-eqz v0, :cond_1

    .line 519
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->refreshUserDetails()V

    :cond_1
    return-void
.end method

.method public refreshUserDetails()V
    .locals 14

    const-string v0, "iNaturalistPreferences"

    const/4 v1, 0x0

    .line 208
    invoke-virtual {p0, v0, v1}, Lorg/inaturalist/android/BaseFragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "username"

    const/4 v3, 0x0

    .line 209
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "observation_count"

    const/4 v5, -0x1

    .line 210
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v6, "user_icon_url"

    .line 211
    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "last_user_details_refresh_time"

    const-wide/16 v8, 0x0

    .line 212
    invoke-interface {v0, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v7, 0x4

    const v8, 0x7f0a0206

    const v9, 0x7f0a0338

    if-eqz v2, :cond_0

    .line 215
    invoke-virtual {p0, v9}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {p0, v8}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 217
    invoke-virtual {p0, v9}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/32 v9, 0xea60

    cmp-long v0, v7, v9

    if-lez v0, :cond_1

    .line 221
    new-instance v0, Landroid/content/Intent;

    sget-object v7, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_USER_DETAILS:Ljava/lang/String;

    const-class v8, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v7, v3, p0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p0, v8}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    invoke-virtual {p0, v9}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 229
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 231
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v3, 0x7f0a0260

    const/4 v7, 0x1

    if-le v0, v5, :cond_3

    .line 232
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_2

    .line 233
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v3, "observation_count_single_all_caps"

    const-string v5, "observation_count_single"

    invoke-virtual {v2, v3, v5}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 235
    :cond_2
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "#,###,###"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v5, "observation_count_all_caps"

    const-string v8, "observation_count"

    invoke-virtual {v3, v5, v8}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_3
    const-string v0, "(_synced_at IS NULL"

    if-eqz v2, :cond_4

    .line 241
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " OR user_login = \'"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") AND (is_deleted = 0 OR is_deleted is NULL)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 245
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "CASE WHEN _created_at > created_at THEN created_at ELSE _created_at END DESC, CASE WHEN id IS NULL THEN _id ELSE id END DESC"

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 247
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne v2, v7, :cond_5

    .line 249
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v5, "observation_count_single_all_caps"

    const-string v8, "observation_count_single"

    invoke-virtual {v4, v5, v8}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 251
    :cond_5
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v5, "observation_count_all_caps"

    const-string v8, "observation_count"

    invoke-virtual {v4, v5, v8}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :goto_2
    const v0, 0x7f0a0336

    if-eqz v6, :cond_6

    .line 258
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lorg/inaturalist/android/BaseFragmentActivity$5;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/BaseFragmentActivity$5;-><init>(Lorg/inaturalist/android/BaseFragmentActivity;)V

    invoke-static {v0, v6, v1}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    goto :goto_3

    :cond_6
    const v2, 0x7f0a0335

    .line 274
    invoke-virtual {p0, v2}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 0

    .line 547
    invoke-static {p1, p2, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    return-void
.end method

.method protected safeUnregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 0

    .line 536
    invoke-static {p1, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    return-void
.end method

.method public showNewObsMenu()V
    .locals 2

    const/4 v0, 0x0

    .line 280
    iput-boolean v0, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mSelectedBottomGrid:Z

    .line 281
    new-instance v0, Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-direct {v0, p0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0e000f

    invoke-virtual {v0, v1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->sheet(I)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object v0

    new-instance v1, Lorg/inaturalist/android/BaseFragmentActivity$7;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/BaseFragmentActivity$7;-><init>(Lorg/inaturalist/android/BaseFragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->listener(Landroid/content/DialogInterface$OnClickListener;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object v0

    new-instance v1, Lorg/inaturalist/android/BaseFragmentActivity$6;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/BaseFragmentActivity$6;-><init>(Lorg/inaturalist/android/BaseFragmentActivity;)V

    .line 309
    invoke-virtual {v0, v1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->show()Lcom/cocosw/bottomsheet/BottomSheet;

    return-void
.end method

.method protected startActivityIfNew(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    .line 443
    invoke-virtual {p0, p1, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->startActivityIfNew(Landroid/content/Intent;Z)V

    return-void
.end method

.method protected startActivityIfNew(Landroid/content/Intent;Z)V
    .locals 2

    .line 447
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object p2, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mSideMenu:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    return-void

    .line 453
    :cond_0
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    const p1, 0x7f010015

    const v0, 0x7f010014

    .line 454
    invoke-virtual {p0, p1, v0}, Lorg/inaturalist/android/BaseFragmentActivity;->overridePendingTransition(II)V

    if-eqz p2, :cond_2

    .line 456
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lorg/inaturalist/android/ObservationListActivity;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 460
    iget-object p1, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object p2, p0, Lorg/inaturalist/android/BaseFragmentActivity;->mSideMenu:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_0

    .line 462
    :cond_1
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method
