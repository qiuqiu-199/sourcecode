.class public Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;
.source "ViewKeyAdvActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;,
        Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;
    }
.end annotation


# static fields
.field public static final EXTRA_MASTER_KEY_ID:Ljava/lang/String; = "master_key_id"

.field public static final EXTRA_SELECTED_TAB:Ljava/lang/String; = "selected_tab"


# instance fields
.field private actionIconShown:Z

.field private actionMode:Landroid/view/ActionMode;

.field private analyticsManager:Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

.field private hasSecret:Z

.field keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

.field private slidingTabLayout:Lcom/astuetz/PagerSlidingTabStrip;

.field private tabAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 60
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private animateMenuItem(Landroid/view/MenuItem;Z)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move/16 v6, p2

    .line 259
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0069

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 260
    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const/4 v1, 0x0

    const/high16 v2, 0x43160000    # 150.0f

    if-eqz v6, :cond_0

    const/high16 v3, 0x43160000    # 150.0f

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 261
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 263
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v1, 0x43160000    # 150.0f

    .line 264
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v1, 0x12c

    .line 265
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 266
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 267
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$1;

    invoke-direct {v1, v4, v6, v5}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$1;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;ZLandroid/view/MenuItem;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 276
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;--->animateMenuItem(Landroid/view/MenuItem;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private initTabs()V
    .locals 11

    move-object/16 v8, p0

    .line 205
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;

    invoke-direct {v0, v8}, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;-><init>(Landroid/support/v7/app/AppCompatActivity;)V

    iput-object v0, v8, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->tabAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;

    .line 206
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, v8, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->tabAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 208
    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;->values()[Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 209
    iget-object v5, v8, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->tabAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;

    iget-object v6, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;->fragmentClass:Ljava/lang/Class;

    const/4 v7, 0x0

    iget v4, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;->titleRes:I

    invoke-virtual {v8, v4}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v7, v4}, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;->addTab(Ljava/lang/Class;Landroid/os/Bundle;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->slidingTabLayout:Lcom/astuetz/PagerSlidingTabStrip;

    iget-object v1, v8, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/astuetz/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 214
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->slidingTabLayout:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v0, v8}, Lcom/astuetz/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 217
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "selected_tab"

    .line 218
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 219
    iget-object v1, v8, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    return-void

    const-string v9, "M_InsDal"

    const-string v10, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;--->initTabs()V"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected initLayout()V
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c0108

    .line 201
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->setContentView(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;--->initLayout()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$onCreate$0$ViewKeyAdvActivity(Landroid/view/View;)V
    .locals 0

    .line 98
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->finish()V

    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 287
    invoke-super {v0, v1}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onActionModeFinished(Landroid/view/ActionMode;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;--->onActionModeFinished(Landroid/view/ActionMode;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 288
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->actionMode:Landroid/view/ActionMode;

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 281
    invoke-super {v0, v1}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onActionModeStarted(Landroid/view/ActionMode;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;--->onActionModeStarted(Landroid/view/ActionMode;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->actionMode:Landroid/view/ActionMode;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    if-eqz p0, :cond_0

    const-string v0, "operation_result"

    .line 225
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "operation_result"

    .line 226
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    .line 227
    invoke-virtual {v2, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    goto :goto_0

    .line 229
    :cond_0
    invoke-super {v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 96
    invoke-super {v4, v5}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$$Lambda$0;

    invoke-direct {v5, v4}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;)V

    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->setFullScreenDialogClose(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v5

    iput-object v5, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    .line 101
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lorg/sufficientlysecure/keychain/KeychainApplication;

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/KeychainApplication;->getAnalyticsManager()Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

    move-result-object v5

    iput-object v5, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->analyticsManager:Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

    const v5, 0x7f090263

    .line 103
    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    const v5, 0x7f0902d2

    .line 104
    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/astuetz/PagerSlidingTabStrip;

    iput-object v5, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->slidingTabLayout:Lcom/astuetz/PagerSlidingTabStrip;

    .line 106
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v0, "master_key_id"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 107
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing required extra master_key_id"

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 110
    :cond_0
    invoke-static {v4}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v5

    const-class v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;

    invoke-virtual {v5, v0}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v5

    check-cast v5, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;

    .line 111
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "master_key_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;->setMasterKeyId(J)V

    .line 112
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvViewModel;->getUnifiedKeyInfoLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;

    move-result-object v5

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$$Lambda$1;

    invoke-direct {v0, v4}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;)V

    invoke-virtual {v5, v4, v0}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 114
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->initTabs()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 235
    iget-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->hasSecret:Z

    if-nez v0, :cond_0

    const/4 v3, 0x0

    return v3

    .line 240
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0001

    invoke-virtual {v0, v1, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09021e

    .line 241
    invoke-interface {v3, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 243
    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;->values()[Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;

    move-result-object v0

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity$ViewKeyAdvTab;->hasActionMode:Z

    .line 246
    iget-boolean v1, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->actionIconShown:Z

    if-ne v0, v1, :cond_1

    return v0

    .line 251
    :cond_1
    iput-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->actionIconShown:Z

    .line 252
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 253
    invoke-direct {v2, v3, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->animateMenuItem(Landroid/view/MenuItem;Z)V

    const/4 v3, 0x1

    return v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;--->onCreateOptionsMenu(Landroid/view/Menu;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    if-nez v3, :cond_0

    return-void

    .line 168
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->name()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f110d45

    .line 171
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->setTitle(I)V

    .line 174
    :goto_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->beautifyKeyIdWithPrefix(J)Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result v0

    iput-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->hasSecret:Z

    .line 181
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_revoked()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_expired()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 183
    :cond_2
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result v0

    const v1, 0x7f06001c

    if-eqz v0, :cond_3

    .line 184
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto :goto_2

    .line 186
    :cond_3
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_verified()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 187
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto :goto_2

    .line 189
    :cond_4
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v0, 0x7f060053

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto :goto_2

    .line 182
    :cond_5
    :goto_1
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v0, 0x7f060054

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 192
    :goto_2
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 193
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->mStatusBar:Landroid/view/View;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->getStatusBarBackgroundColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 194
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->slidingTabLayout:Lcom/astuetz/PagerSlidingTabStrip;

    invoke-virtual {v0, v3}, Lcom/astuetz/PagerSlidingTabStrip;->setBackgroundColor(I)V

    .line 196
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->invalidateOptionsMenu()V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;--->onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onPageScrollStateChanged(I)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;--->onPageScrollStateChanged(I)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onPageScrolled(IFI)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;--->onPageScrolled(IFI)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onPageSelected(I)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 298
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->actionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->actionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    .line 300
    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->actionMode:Landroid/view/ActionMode;

    .line 302
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->invalidateOptionsMenu()V

    .line 304
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->tabAdapter:Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/ui/adapter/PagerTabStripAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 305
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;->analyticsManager:Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->trackFragmentImpression(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;--->onPageSelected(I)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
