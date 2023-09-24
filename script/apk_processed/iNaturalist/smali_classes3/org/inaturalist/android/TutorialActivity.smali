.class public Lorg/inaturalist/android/TutorialActivity;
.super Lorg/inaturalist/android/BaseFragmentActivity;
.source "TutorialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/TutorialActivity$TutorialAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lorg/inaturalist/android/TutorialActivity$TutorialAdapter;

.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

.field private mSwipe:Landroid/view/ViewGroup;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/inaturalist/android/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/TutorialActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/inaturalist/android/TutorialActivity;->mSwipe:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/TutorialActivity;)Lcom/viewpagerindicator/CirclePageIndicator;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/inaturalist/android/TutorialActivity;->mIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/TutorialActivity;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/inaturalist/android/TutorialActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 153
    invoke-super {p0, p1}, Lorg/inaturalist/android/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d00ed

    .line 155
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TutorialActivity;->setContentView(I)V

    .line 157
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lorg/inaturalist/android/TutorialActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "#aaaaaa"

    .line 159
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 162
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/TutorialActivity;->getIntent()Landroid/content/Intent;

    const p1, 0x7f0a0289

    .line 164
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lorg/inaturalist/android/TutorialActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const p1, 0x7f0a03bf

    .line 165
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object p1, p0, Lorg/inaturalist/android/TutorialActivity;->mIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const p1, 0x7f0a0368

    .line 167
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/TutorialActivity;->mSwipe:Landroid/view/ViewGroup;

    .line 168
    iget-object p1, p0, Lorg/inaturalist/android/TutorialActivity;->mSwipe:Landroid/view/ViewGroup;

    new-instance v0, Lorg/inaturalist/android/TutorialActivity$1;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/TutorialActivity$1;-><init>(Lorg/inaturalist/android/TutorialActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object p1, p0, Lorg/inaturalist/android/TutorialActivity;->mSwipe:Landroid/view/ViewGroup;

    new-instance v0, Lorg/inaturalist/android/TutorialActivity$2;

    invoke-direct {v0, p0, p0}, Lorg/inaturalist/android/TutorialActivity$2;-><init>(Lorg/inaturalist/android/TutorialActivity;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p1, 0x7f0a0369

    .line 181
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TutorialActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 182
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x41a00000    # 20.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v1, 0x2bc

    .line 183
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    const/4 v1, 0x5

    .line 184
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    const/4 v1, 0x2

    .line 185
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    const/4 v1, 0x0

    .line 187
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 188
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 190
    invoke-virtual {p0}, Lorg/inaturalist/android/TutorialActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 193
    invoke-virtual {p0}, Lorg/inaturalist/android/TutorialActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/INaturalistApp;

    iput-object p1, p0, Lorg/inaturalist/android/TutorialActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 194
    new-instance p1, Lorg/inaturalist/android/TutorialActivity$TutorialAdapter;

    invoke-direct {p1, p0, p0}, Lorg/inaturalist/android/TutorialActivity$TutorialAdapter;-><init>(Lorg/inaturalist/android/TutorialActivity;Landroid/support/v7/app/AppCompatActivity;)V

    iput-object p1, p0, Lorg/inaturalist/android/TutorialActivity;->mAdapter:Lorg/inaturalist/android/TutorialActivity$TutorialAdapter;

    .line 195
    iget-object p1, p0, Lorg/inaturalist/android/TutorialActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lorg/inaturalist/android/TutorialActivity;->mAdapter:Lorg/inaturalist/android/TutorialActivity$TutorialAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 196
    iget-object p1, p0, Lorg/inaturalist/android/TutorialActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lorg/inaturalist/android/TutorialActivity;->mAdapter:Lorg/inaturalist/android/TutorialActivity$TutorialAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 197
    iget-object p1, p0, Lorg/inaturalist/android/TutorialActivity;->mIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v0, p0, Lorg/inaturalist/android/TutorialActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v0}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 199
    iget-object p1, p0, Lorg/inaturalist/android/TutorialActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {p1, p0}, Lorg/inaturalist/android/INaturalistApp;->detectUserCountryAndUpdateNetwork(Landroid/content/Context;)V

    const-string p1, "iNaturalistPreferences"

    .line 201
    invoke-virtual {p0, p1, v1}, Lorg/inaturalist/android/TutorialActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 202
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "first_time"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 37
    invoke-super {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->onStart()V

    .line 38
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 45
    invoke-super {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->onStop()V

    .line 46
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method
