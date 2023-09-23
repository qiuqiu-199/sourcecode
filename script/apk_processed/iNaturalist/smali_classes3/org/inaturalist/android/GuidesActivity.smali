.class public Lorg/inaturalist/android/GuidesActivity;
.super Lorg/inaturalist/android/BaseFragmentActivity;
.source "GuidesActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mPageAdapter:Lorg/inaturalist/android/MyPageAdapter;

.field private mTabHost:Landroid/widget/TabHost;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/inaturalist/android/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method private static AddTab(Lorg/inaturalist/android/GuidesActivity;Landroid/widget/TabHost;Landroid/widget/TabHost$TabSpec;)V
    .locals 1

    .line 100
    new-instance v0, Lorg/inaturalist/android/MyTabFactory;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/MyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 101
    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/GuidesActivity;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 26
    iget-object p0, p0, Lorg/inaturalist/android/GuidesActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method private createTabContent(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .line 105
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00df

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0375

    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 107
    iget-object v2, p0, Lorg/inaturalist/android/GuidesActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v2, p1, p2}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private getFragments()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    new-instance v1, Lorg/inaturalist/android/AllGuidesTab;

    invoke-direct {v1}, Lorg/inaturalist/android/AllGuidesTab;-><init>()V

    .line 156
    new-instance v2, Lorg/inaturalist/android/MyGuidesTab;

    invoke-direct {v2}, Lorg/inaturalist/android/MyGuidesTab;-><init>()V

    .line 157
    new-instance v3, Lorg/inaturalist/android/NearByGuidesTab;

    invoke-direct {v3}, Lorg/inaturalist/android/NearByGuidesTab;-><init>()V

    .line 158
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private initialiseTabHost()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const v0, 0x1020012

    .line 168
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuidesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lorg/inaturalist/android/GuidesActivity;->mTabHost:Landroid/widget/TabHost;

    .line 169
    iget-object v0, p0, Lorg/inaturalist/android/GuidesActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 171
    iget-object v0, p0, Lorg/inaturalist/android/GuidesActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lorg/inaturalist/android/GuidesActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "all_guides"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v2, "all_guides_all_caps"

    const-string v3, "all_guides"

    invoke-direct {p0, v2, v3}, Lorg/inaturalist/android/GuidesActivity;->createTabContent(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/inaturalist/android/GuidesActivity;->AddTab(Lorg/inaturalist/android/GuidesActivity;Landroid/widget/TabHost;Landroid/widget/TabHost$TabSpec;)V

    .line 172
    iget-object v0, p0, Lorg/inaturalist/android/GuidesActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lorg/inaturalist/android/GuidesActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "my_guides"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v2, "my_guides_all_caps"

    const-string v3, "my_guides"

    invoke-direct {p0, v2, v3}, Lorg/inaturalist/android/GuidesActivity;->createTabContent(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/inaturalist/android/GuidesActivity;->AddTab(Lorg/inaturalist/android/GuidesActivity;Landroid/widget/TabHost;Landroid/widget/TabHost$TabSpec;)V

    .line 173
    iget-object v0, p0, Lorg/inaturalist/android/GuidesActivity;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lorg/inaturalist/android/GuidesActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "nearby_guides"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const-string v2, "nearby_guides_all_caps"

    const-string v3, "nearby_guides"

    invoke-direct {p0, v2, v3}, Lorg/inaturalist/android/GuidesActivity;->createTabContent(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/inaturalist/android/GuidesActivity;->AddTab(Lorg/inaturalist/android/GuidesActivity;Landroid/widget/TabHost;Landroid/widget/TabHost$TabSpec;)V

    .line 175
    iget-object v0, p0, Lorg/inaturalist/android/GuidesActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v0, p0, Lorg/inaturalist/android/GuidesActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    const/4 v0, 0x0

    .line 179
    invoke-direct {p0, v0}, Lorg/inaturalist/android/GuidesActivity;->refreshTabs(I)V

    return-void
.end method

.method private refreshTabs(I)V
    .locals 6

    .line 123
    iget-object v0, p0, Lorg/inaturalist/android/GuidesActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    const v4, 0x7f0a0375

    const v5, 0x7f0a0078

    if-ge v2, v3, :cond_0

    .line 125
    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 126
    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "#84000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    invoke-virtual {v0, p1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v0, p0, Lorg/inaturalist/android/GuidesActivity;->mPageAdapter:Lorg/inaturalist/android/MyPageAdapter;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lorg/inaturalist/android/GuidesActivity;->mPageAdapter:Lorg/inaturalist/android/MyPageAdapter;

    invoke-virtual {v0, p1}, Lorg/inaturalist/android/MyPageAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BaseTab;

    invoke-virtual {p1}, Lorg/inaturalist/android/BaseTab;->loadProjects()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const v0, 0x7f1100da

    .line 59
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuidesActivity;->setTheme(I)V

    .line 60
    invoke-super {p0, p1}, Lorg/inaturalist/android/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lorg/inaturalist/android/GuidesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/GuidesActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const v0, 0x7f0d0069

    .line 64
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuidesActivity;->setContentView(I)V

    .line 65
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GuidesActivity;->onDrawerCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lorg/inaturalist/android/GuidesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    const v0, 0x7f0a03e2

    .line 69
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuidesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lorg/inaturalist/android/GuidesActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 70
    iget-object v0, p0, Lorg/inaturalist/android/GuidesActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 73
    invoke-direct {p0}, Lorg/inaturalist/android/GuidesActivity;->initialiseTabHost()V

    if-nez p1, :cond_0

    .line 77
    invoke-direct {p0}, Lorg/inaturalist/android/GuidesActivity;->getFragments()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/GuidesActivity;->mFragments:Ljava/util/List;

    goto :goto_0

    .line 79
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/GuidesActivity;->mFragments:Ljava/util/List;

    .line 80
    iget-object v0, p0, Lorg/inaturalist/android/GuidesActivity;->mFragments:Ljava/util/List;

    invoke-virtual {p0}, Lorg/inaturalist/android/GuidesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "all_guides"

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lorg/inaturalist/android/GuidesActivity;->mFragments:Ljava/util/List;

    invoke-virtual {p0}, Lorg/inaturalist/android/GuidesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "my_guides"

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lorg/inaturalist/android/GuidesActivity;->mFragments:Ljava/util/List;

    invoke-virtual {p0}, Lorg/inaturalist/android/GuidesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "nearby_guides"

    invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :goto_0
    new-instance p1, Lorg/inaturalist/android/MyPageAdapter;

    invoke-virtual {p0}, Lorg/inaturalist/android/GuidesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/GuidesActivity;->mFragments:Ljava/util/List;

    invoke-direct {p1, v0, v1}, Lorg/inaturalist/android/MyPageAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object p1, p0, Lorg/inaturalist/android/GuidesActivity;->mPageAdapter:Lorg/inaturalist/android/MyPageAdapter;

    .line 86
    iget-object p1, p0, Lorg/inaturalist/android/GuidesActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lorg/inaturalist/android/GuidesActivity;->mPageAdapter:Lorg/inaturalist/android/MyPageAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 87
    iget-object p1, p0, Lorg/inaturalist/android/GuidesActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 89
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lorg/inaturalist/android/GuidesActivity$1;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/GuidesActivity$1;-><init>(Lorg/inaturalist/android/GuidesActivity;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 200
    invoke-virtual {p0}, Lorg/inaturalist/android/GuidesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0016

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 185
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0307

    if-eq v0, v1, :cond_0

    .line 195
    invoke-super {p0, p1}, Lorg/inaturalist/android/BaseFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 187
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lorg/inaturalist/android/ItemSearchActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "result_viewer_activity"

    .line 188
    const-class v1, Lorg/inaturalist/android/GuideDetails;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "result_viewer_activity_param_name"

    const-string v1, "guide"

    .line 189
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "search_hint_text"

    .line 190
    invoke-static {p0}, Lorg/inaturalist/android/BaseGuidesTab;->getSearchFilterTextHint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "search_url"

    .line 191
    invoke-virtual {p0}, Lorg/inaturalist/android/GuidesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/INaturalistApp;

    invoke-static {v1}, Lorg/inaturalist/android/BaseGuidesTab;->getSearchUrl(Lorg/inaturalist/android/INaturalistApp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GuidesActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 144
    iget-object p1, p0, Lorg/inaturalist/android/GuidesActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p1

    .line 145
    iget-object p2, p0, Lorg/inaturalist/android/GuidesActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p2, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 207
    invoke-virtual {p0}, Lorg/inaturalist/android/GuidesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0, p1, p2, p3}, Lorg/inaturalist/android/INaturalistApp;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 50
    invoke-virtual {p0}, Lorg/inaturalist/android/GuidesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "all_guides"

    iget-object v2, p0, Lorg/inaturalist/android/GuidesActivity;->mFragments:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 51
    invoke-virtual {p0}, Lorg/inaturalist/android/GuidesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "my_guides"

    iget-object v2, p0, Lorg/inaturalist/android/GuidesActivity;->mFragments:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 52
    invoke-virtual {p0}, Lorg/inaturalist/android/GuidesActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "nearby_guides"

    iget-object v2, p0, Lorg/inaturalist/android/GuidesActivity;->mFragments:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 54
    invoke-super {p0, p1}, Lorg/inaturalist/android/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 36
    invoke-super {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->onStart()V

    .line 37
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 44
    invoke-super {p0}, Lorg/inaturalist/android/BaseFragmentActivity;->onStop()V

    .line 45
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    .line 116
    iget-object p1, p0, Lorg/inaturalist/android/GuidesActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result p1

    .line 117
    iget-object v0, p0, Lorg/inaturalist/android/GuidesActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 119
    invoke-direct {p0, p1}, Lorg/inaturalist/android/GuidesActivity;->refreshTabs(I)V

    return-void
.end method
