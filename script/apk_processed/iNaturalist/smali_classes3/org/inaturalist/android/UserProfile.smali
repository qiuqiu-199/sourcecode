.class public Lorg/inaturalist/android/UserProfile;
.super Landroid/support/v7/app/AppCompatActivity;
.source "UserProfile.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/UserProfile$UserDetailsReceiver;
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_IDENTIFICATIONS:Ljava/lang/String; = "identifications"

.field private static final VIEW_TYPE_OBSERVATIONS:Ljava/lang/String; = "observations"

.field private static final VIEW_TYPE_SPECIES:Ljava/lang/String; = "species"


# instance fields
.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field public mIdentifications:Ljava/util/ArrayList;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mIdentificationsContainer:Landroid/view/ViewGroup;

.field private mIdentificationsList:Landroid/widget/ListView;

.field private mIdentificationsListAdapter:Lorg/inaturalist/android/UserIdentificationsAdapter;

.field private mIdentificationsListEmpty:Landroid/widget/TextView;

.field public mIdentificationsListIndex:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mIdentificationsListOffset:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mLoadingIdentificationsList:Landroid/widget/ProgressBar;

.field private mLoadingObservationsList:Landroid/widget/ProgressBar;

.field private mLoadingSpeciesList:Landroid/widget/ProgressBar;

.field public mObservationListIndex:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mObservationListOffset:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mObservations:Ljava/util/ArrayList;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mObservationsContainer:Landroid/view/ViewGroup;

.field private mObservationsList:Landroid/widget/ListView;

.field private mObservationsListAdapter:Lorg/inaturalist/android/UserObservationAdapter;

.field private mObservationsListEmpty:Landroid/widget/TextView;

.field private mShowMoreIdentifications:Landroid/widget/Button;

.field private mShowMoreObservations:Landroid/widget/Button;

.field private mShowMoreSpecies:Landroid/widget/Button;

.field public mSpecies:Ljava/util/ArrayList;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$JSONListBundler;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeciesContainer:Landroid/view/ViewGroup;

.field private mSpeciesList:Landroid/widget/ListView;

.field private mSpeciesListAdapter:Lorg/inaturalist/android/UserSpeciesAdapter;

.field private mSpeciesListEmpty:Landroid/widget/TextView;

.field public mSpeciesListIndex:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mSpeciesListOffset:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mTabHost:Landroid/widget/TabHost;

.field public mTotalIdentifications:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mTotalObservations:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mTotalSpecies:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mUser:Lorg/inaturalist/android/BetterJSONObject;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONObjectBundler;
    .end annotation
.end field

.field private mUserBio:Landroid/widget/TextView;

.field private mUserDetailsReceiver:Lorg/inaturalist/android/UserProfile$UserDetailsReceiver;

.field private mUserName:Landroid/widget/TextView;

.field private mUserPicContainer:Landroid/view/ViewGroup;

.field private mUserPicHidden:Z

.field public mViewType:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private static AddTab(Lorg/inaturalist/android/UserProfile;Landroid/widget/TabHost;Landroid/widget/TabHost$TabSpec;)V
    .locals 1

    .line 385
    new-instance v0, Lorg/inaturalist/android/MyTabFactory;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/MyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 386
    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/UserProfile;)Landroid/widget/Button;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/inaturalist/android/UserProfile;->mShowMoreObservations:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/UserProfile;)Landroid/widget/Button;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/inaturalist/android/UserProfile;->mShowMoreSpecies:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/inaturalist/android/UserProfile;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lorg/inaturalist/android/UserProfile;->refreshUserDetails()V

    return-void
.end method

.method static synthetic access$1100(Lorg/inaturalist/android/UserProfile;)Landroid/widget/TextView;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/inaturalist/android/UserProfile;->mUserBio:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/UserProfile;)Landroid/widget/Button;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/inaturalist/android/UserProfile;->mShowMoreIdentifications:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$400(Lorg/inaturalist/android/UserProfile;)Landroid/view/ViewGroup;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/inaturalist/android/UserProfile;->mObservationsContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$500(Lorg/inaturalist/android/UserProfile;)Landroid/view/ViewGroup;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/inaturalist/android/UserProfile;->mSpeciesContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$600(Lorg/inaturalist/android/UserProfile;)Landroid/view/ViewGroup;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/inaturalist/android/UserProfile;->mIdentificationsContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$700(Lorg/inaturalist/android/UserProfile;)Lorg/inaturalist/android/ActivityHelper;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/inaturalist/android/UserProfile;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    return-object p0
.end method

.method static synthetic access$800(Lorg/inaturalist/android/UserProfile;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/inaturalist/android/UserProfile;->mApp:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$900(Lorg/inaturalist/android/UserProfile;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lorg/inaturalist/android/UserProfile;->refreshViewState()V

    return-void
.end method

.method private createTabContent(Ljava/lang/String;I)Landroid/view/View;
    .locals 6

    .line 461
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00f6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00dd

    .line 462
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0374

    .line 463
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 465
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "#,###,###"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v4, p2

    .line 466
    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private getUserDetails(Ljava/lang/String;)V
    .locals 3

    .line 479
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/inaturalist/android/INaturalistService;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "username"

    .line 480
    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    const-string v2, "login"

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private initialiseTabHost()V
    .locals 5

    const v0, 0x1020012

    .line 445
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lorg/inaturalist/android/UserProfile;->mTabHost:Landroid/widget/TabHost;

    .line 446
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 448
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "observations"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v3, "observations_all_caps"

    const-string v4, "project_observations"

    .line 449
    invoke-virtual {v2, v3, v4}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-direct {p0, v2, v3}, Lorg/inaturalist/android/UserProfile;->createTabContent(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v2

    .line 448
    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/inaturalist/android/UserProfile;->AddTab(Lorg/inaturalist/android/UserProfile;Landroid/widget/TabHost;Landroid/widget/TabHost$TabSpec;)V

    .line 450
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "species"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v3, "species_all_caps"

    const-string v4, "project_species"

    .line 451
    invoke-virtual {v2, v3, v4}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7d0

    invoke-direct {p0, v2, v3}, Lorg/inaturalist/android/UserProfile;->createTabContent(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v2

    .line 450
    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/inaturalist/android/UserProfile;->AddTab(Lorg/inaturalist/android/UserProfile;Landroid/widget/TabHost;Landroid/widget/TabHost$TabSpec;)V

    .line 452
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "identifications"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v3, "identifications_all_caps"

    const-string v4, "identifications"

    .line 453
    invoke-virtual {v2, v3, v4}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xbb8

    invoke-direct {p0, v2, v3}, Lorg/inaturalist/android/UserProfile;->createTabContent(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v2

    .line 452
    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lorg/inaturalist/android/UserProfile;->AddTab(Lorg/inaturalist/android/UserProfile;Landroid/widget/TabHost;Landroid/widget/TabHost$TabSpec;)V

    .line 455
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 457
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method

.method private isLoggedIn()Z
    .locals 4

    const-string v0, "iNaturalistPreferences"

    const/4 v1, 0x0

    .line 473
    invoke-virtual {p0, v0, v1}, Lorg/inaturalist/android/UserProfile;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "username"

    const/4 v3, 0x0

    .line 474
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private refreshUserDetails()V
    .locals 6

    .line 725
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mUserName:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    const-string v2, "login"

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a00b9

    .line 727
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CollapsingToolbarLayout;

    .line 728
    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 729
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 734
    :cond_0
    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 735
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 731
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    const-string v3, "login"

    invoke-virtual {v1, v3}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 732
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mUserName:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 738
    :goto_1
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    const-string v1, "description"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 739
    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mUserBio:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 741
    new-instance v1, Lorg/inaturalist/android/UserProfile$9;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/UserProfile$9;-><init>(Lorg/inaturalist/android/UserProfile;)V

    const/16 v3, 0x8

    if-eqz v0, :cond_3

    .line 761
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 764
    :cond_2
    iget-object v4, p0, Lorg/inaturalist/android/UserProfile;->mUserBio:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 765
    iget-object v4, p0, Lorg/inaturalist/android/UserProfile;->mUserBio:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    iget-object v4, p0, Lorg/inaturalist/android/UserProfile;->mUserBio:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    .line 768
    new-instance v5, Lorg/inaturalist/android/UserProfile$10;

    invoke-direct {v5, p0, v0, v1}, Lorg/inaturalist/android/UserProfile$10;-><init>(Lorg/inaturalist/android/UserProfile;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_3

    .line 762
    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mUserBio:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    const v0, 0x7f0a03d2

    .line 796
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 797
    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    const-string v4, "medium_user_icon_url"

    invoke-virtual {v1, v4}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 798
    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    const-string v4, "user_icon_url"

    invoke-virtual {v1, v4}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    if-nez v1, :cond_5

    .line 799
    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    const-string v4, "icon_url"

    invoke-virtual {v1, v4}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    if-eqz v1, :cond_6

    .line 801
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 802
    new-instance v2, Lorg/inaturalist/android/UserProfile$11;

    invoke-direct {v2, p0, v0}, Lorg/inaturalist/android/UserProfile$11;-><init>(Lorg/inaturalist/android/UserProfile;Landroid/widget/ImageView;)V

    invoke-static {v0, v1, v2}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    const v2, 0x7f0a03cd

    .line 816
    invoke-virtual {p0, v2}, Lorg/inaturalist/android/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?bg=1"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/inaturalist/android/UserProfile$12;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/UserProfile$12;-><init>(Lorg/inaturalist/android/UserProfile;)V

    invoke-static {v2, v1, v3}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Lcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    .line 831
    new-instance v1, Lorg/inaturalist/android/UserProfile$13;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/UserProfile$13;-><init>(Lorg/inaturalist/android/UserProfile;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 843
    :cond_6
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0a0255

    .line 844
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method private refreshViewState()V
    .locals 9

    .line 579
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    .line 580
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#,###,###"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 582
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mShowMoreObservations:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 583
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mShowMoreIdentifications:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 584
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mShowMoreSpecies:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 586
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mObservations:Ljava/util/ArrayList;

    const v4, 0x7f0a01b7

    const v5, 0x7f0a00dd

    const/4 v6, 0x0

    if-nez v2, :cond_0

    .line 587
    invoke-virtual {v0, v6}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 588
    invoke-virtual {v0, v6}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 589
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mLoadingObservationsList:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 590
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mObservationsList:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 591
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mObservationsListEmpty:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 593
    :cond_0
    invoke-virtual {v0, v6}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 594
    invoke-virtual {v0, v6}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 595
    invoke-virtual {v0, v6}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v7, p0, Lorg/inaturalist/android/UserProfile;->mTotalObservations:I

    int-to-long v7, v7

    invoke-virtual {v1, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mLoadingObservationsList:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 598
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mObservations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 599
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mObservationsListEmpty:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 601
    :cond_1
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mObservationsListEmpty:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 604
    :goto_0
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mObservationsList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-nez v2, :cond_2

    .line 605
    new-instance v2, Lorg/inaturalist/android/UserObservationAdapter;

    iget-object v7, p0, Lorg/inaturalist/android/UserProfile;->mObservations:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v7}, Lorg/inaturalist/android/UserObservationAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lorg/inaturalist/android/UserProfile;->mObservationsListAdapter:Lorg/inaturalist/android/UserObservationAdapter;

    .line 606
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mObservationsList:Landroid/widget/ListView;

    iget-object v7, p0, Lorg/inaturalist/android/UserProfile;->mObservationsListAdapter:Lorg/inaturalist/android/UserObservationAdapter;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 609
    :cond_2
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mObservationsList:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 612
    :goto_1
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mSpecies:Ljava/util/ArrayList;

    const/4 v7, 0x1

    if-nez v2, :cond_3

    .line 613
    invoke-virtual {v0, v7}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 614
    invoke-virtual {v0, v7}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 615
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mLoadingSpeciesList:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 616
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mSpeciesListEmpty:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 617
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mSpeciesList:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_3

    .line 619
    :cond_3
    invoke-virtual {v0, v7}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 620
    invoke-virtual {v0, v7}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 621
    invoke-virtual {v0, v7}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v7, p0, Lorg/inaturalist/android/UserProfile;->mTotalSpecies:I

    int-to-long v7, v7

    invoke-virtual {v1, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mLoadingSpeciesList:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 624
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mSpecies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 625
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mSpeciesListEmpty:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 627
    :cond_4
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mSpeciesListEmpty:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 631
    :goto_2
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mSpeciesList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-nez v2, :cond_5

    .line 632
    new-instance v2, Lorg/inaturalist/android/UserSpeciesAdapter;

    iget-object v7, p0, Lorg/inaturalist/android/UserProfile;->mSpecies:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v7}, Lorg/inaturalist/android/UserSpeciesAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lorg/inaturalist/android/UserProfile;->mSpeciesListAdapter:Lorg/inaturalist/android/UserSpeciesAdapter;

    .line 633
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mSpeciesList:Landroid/widget/ListView;

    iget-object v7, p0, Lorg/inaturalist/android/UserProfile;->mSpeciesListAdapter:Lorg/inaturalist/android/UserSpeciesAdapter;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 634
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mSpeciesList:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 638
    :cond_5
    :goto_3
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mIdentifications:Ljava/util/ArrayList;

    const/4 v7, 0x2

    if-nez v2, :cond_6

    .line 639
    invoke-virtual {v0, v7}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 640
    invoke-virtual {v0, v7}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mLoadingIdentificationsList:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 642
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mIdentificationsListEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 643
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mIdentificationsList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_5

    .line 645
    :cond_6
    invoke-virtual {v0, v7}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 646
    invoke-virtual {v0, v7}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 647
    invoke-virtual {v0, v7}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v2, p0, Lorg/inaturalist/android/UserProfile;->mTotalIdentifications:I

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mLoadingIdentificationsList:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 650
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mIdentifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 651
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mIdentificationsListEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 653
    :cond_7
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mIdentificationsListEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 656
    :goto_4
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mIdentificationsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_8

    .line 657
    new-instance v0, Lorg/inaturalist/android/UserIdentificationsAdapter;

    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mIdentifications:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    const-string v3, "login"

    invoke-virtual {v2, v3}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/inaturalist/android/UserIdentificationsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/inaturalist/android/UserProfile;->mIdentificationsListAdapter:Lorg/inaturalist/android/UserIdentificationsAdapter;

    .line 658
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mIdentificationsList:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mIdentificationsListAdapter:Lorg/inaturalist/android/UserIdentificationsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 659
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mIdentificationsList:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 662
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mIdentificationsList:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mIdentificationsListAdapter:Lorg/inaturalist/android/UserIdentificationsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 664
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mIdentificationsList:Landroid/widget/ListView;

    new-instance v1, Lorg/inaturalist/android/UserProfile$7;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/UserProfile$7;-><init>(Lorg/inaturalist/android/UserProfile;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 679
    :cond_8
    :goto_5
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/inaturalist/android/UserProfile$8;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/UserProfile$8;-><init>(Lorg/inaturalist/android/UserProfile;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private refreshViewType()V
    .locals 8

    .line 396
    new-instance v0, Lorg/inaturalist/android/UserProfile$6;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/UserProfile$6;-><init>(Lorg/inaturalist/android/UserProfile;)V

    invoke-virtual {p0, v0}, Lorg/inaturalist/android/UserProfile;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 405
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 406
    :goto_0
    invoke-virtual {v0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v3

    const v4, 0x7f0a0078

    const v5, 0x7f0a0374

    const/4 v6, 0x0

    if-ge v2, v3, :cond_0

    .line 407
    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 408
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 409
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 411
    invoke-virtual {v5, v6, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const-string v4, "#ACACAC"

    .line 412
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v4, 0x8

    .line 413
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 419
    :cond_0
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mViewType:Ljava/lang/String;

    const-string v3, "observations"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 421
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mObservationsContainer:Landroid/view/ViewGroup;

    :goto_1
    const/4 v7, 0x0

    goto :goto_2

    .line 422
    :cond_1
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mViewType:Ljava/lang/String;

    const-string v7, "species"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 424
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mSpeciesContainer:Landroid/view/ViewGroup;

    const/4 v7, 0x1

    goto :goto_2

    .line 425
    :cond_2
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mViewType:Ljava/lang/String;

    const-string v7, "identifications"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    .line 427
    iget-object v7, p0, Lorg/inaturalist/android/UserProfile;->mIdentificationsContainer:Landroid/view/ViewGroup;

    move-object v2, v7

    const/4 v7, 0x2

    goto :goto_2

    :cond_3
    move-object v2, v6

    goto :goto_1

    .line 430
    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 432
    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, v7}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 433
    invoke-virtual {v0, v7}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 434
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 435
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 437
    invoke-virtual {v2, v6, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const-string v3, "#000000"

    .line 438
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 439
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static startAlphaAnimation(Landroid/view/View;JI)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-nez p3, :cond_0

    .line 715
    new-instance p3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p3, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0

    :cond_0
    new-instance p3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p3, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 719
    :goto_0
    invoke-virtual {p3, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 p1, 0x1

    .line 720
    invoke-virtual {p3, p1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 721
    invoke-virtual {p0, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 143
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 146
    new-instance v0, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/inaturalist/android/UserProfile;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    .line 148
    invoke-virtual {p0}, Lorg/inaturalist/android/UserProfile;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0d00f2

    .line 149
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/UserProfile;->setContentView(I)V

    const v1, 0x7f0a03b1

    .line 151
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    .line 152
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/UserProfile;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 153
    invoke-virtual {p0}, Lorg/inaturalist/android/UserProfile;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v1, 0x7f0a00b9

    .line 155
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CollapsingToolbarLayout;

    const v1, 0x7f0a03d5

    .line 157
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/AppBarLayout;

    iput-object v1, p0, Lorg/inaturalist/android/UserProfile;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    .line 158
    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mAppBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v1, p0}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    const v1, 0x7f0a01c7

    .line 160
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lorg/inaturalist/android/UserProfile;->mLoadingObservationsList:Landroid/widget/ProgressBar;

    const v1, 0x7f0a026f

    .line 161
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/inaturalist/android/UserProfile;->mObservationsListEmpty:Landroid/widget/TextView;

    const v1, 0x7f0a026e

    .line 162
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lorg/inaturalist/android/UserProfile;->mObservationsList:Landroid/widget/ListView;

    const v1, 0x7f0a026a

    .line 163
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lorg/inaturalist/android/UserProfile;->mObservationsContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a0330

    .line 164
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lorg/inaturalist/android/UserProfile;->mShowMoreObservations:Landroid/widget/Button;

    const v1, 0x7f0a01ce

    .line 166
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lorg/inaturalist/android/UserProfile;->mLoadingSpeciesList:Landroid/widget/ProgressBar;

    const v1, 0x7f0a034e

    .line 167
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/inaturalist/android/UserProfile;->mSpeciesListEmpty:Landroid/widget/TextView;

    const v1, 0x7f0a034d

    .line 168
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lorg/inaturalist/android/UserProfile;->mSpeciesList:Landroid/widget/ListView;

    const v1, 0x7f0a0348

    .line 169
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lorg/inaturalist/android/UserProfile;->mSpeciesContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a0331

    .line 170
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lorg/inaturalist/android/UserProfile;->mShowMoreSpecies:Landroid/widget/Button;

    .line 172
    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mSpeciesList:Landroid/widget/ListView;

    new-instance v3, Lorg/inaturalist/android/UserProfile$1;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/UserProfile$1;-><init>(Lorg/inaturalist/android/UserProfile;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v1, 0x7f0a01be

    .line 183
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lorg/inaturalist/android/UserProfile;->mLoadingIdentificationsList:Landroid/widget/ProgressBar;

    const v1, 0x7f0a0181

    .line 184
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/inaturalist/android/UserProfile;->mIdentificationsListEmpty:Landroid/widget/TextView;

    const v1, 0x7f0a0180

    .line 185
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lorg/inaturalist/android/UserProfile;->mIdentificationsList:Landroid/widget/ListView;

    const v1, 0x7f0a017f

    .line 186
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lorg/inaturalist/android/UserProfile;->mIdentificationsContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a032f

    .line 187
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lorg/inaturalist/android/UserProfile;->mShowMoreIdentifications:Landroid/widget/Button;

    .line 189
    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mObservationsList:Landroid/widget/ListView;

    new-instance v3, Lorg/inaturalist/android/UserProfile$2;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/UserProfile$2;-><init>(Lorg/inaturalist/android/UserProfile;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 201
    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mObservationsList:Landroid/widget/ListView;

    new-instance v3, Lorg/inaturalist/android/UserProfile$3;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/UserProfile$3;-><init>(Lorg/inaturalist/android/UserProfile;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 218
    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mSpeciesList:Landroid/widget/ListView;

    new-instance v3, Lorg/inaturalist/android/UserProfile$4;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/UserProfile$4;-><init>(Lorg/inaturalist/android/UserProfile;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 235
    new-instance v1, Lorg/inaturalist/android/UserProfile$5;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/UserProfile$5;-><init>(Lorg/inaturalist/android/UserProfile;)V

    .line 263
    iget-object v3, p0, Lorg/inaturalist/android/UserProfile;->mShowMoreObservations:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v3, p0, Lorg/inaturalist/android/UserProfile;->mShowMoreSpecies:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v3, p0, Lorg/inaturalist/android/UserProfile;->mShowMoreIdentifications:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mObservationsList:Landroid/widget/ListView;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 269
    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mIdentificationsList:Landroid/widget/ListView;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 270
    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mSpeciesList:Landroid/widget/ListView;

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 272
    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v1, :cond_0

    .line 273
    invoke-virtual {p0}, Lorg/inaturalist/android/UserProfile;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/INaturalistApp;

    iput-object v1, p0, Lorg/inaturalist/android/UserProfile;->mApp:Lorg/inaturalist/android/INaturalistApp;

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "user"

    .line 277
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    iput-object p1, p0, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    .line 278
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {p1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "observations_count"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/inaturalist/android/UserProfile;->mTotalObservations:I

    .line 279
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {p1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "identifications_count"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/inaturalist/android/UserProfile;->mTotalIdentifications:I

    const-string p1, "observations"

    .line 280
    iput-object p1, p0, Lorg/inaturalist/android/UserProfile;->mViewType:Ljava/lang/String;

    .line 282
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile;->mObservationsContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 283
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile;->mSpeciesContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 284
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile;->mIdentificationsContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 288
    :cond_1
    invoke-direct {p0}, Lorg/inaturalist/android/UserProfile;->initialiseTabHost()V

    .line 290
    invoke-direct {p0}, Lorg/inaturalist/android/UserProfile;->refreshViewState()V

    .line 291
    invoke-direct {p0}, Lorg/inaturalist/android/UserProfile;->refreshViewType()V

    .line 293
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    if-nez p1, :cond_2

    .line 294
    invoke-virtual {p0}, Lorg/inaturalist/android/UserProfile;->finish()V

    return-void

    :cond_2
    const p1, 0x7f0a03d1

    .line 299
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/UserProfile;->mUserName:Landroid/widget/TextView;

    const p1, 0x7f0a03ce

    .line 300
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/UserProfile;->mUserBio:Landroid/widget/TextView;

    const p1, 0x7f0a03d3

    .line 302
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/UserProfile;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/UserProfile;->mUserPicContainer:Landroid/view/ViewGroup;

    .line 304
    invoke-direct {p0}, Lorg/inaturalist/android/UserProfile;->refreshUserDetails()V

    return-void
.end method

.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 2

    .line 697
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    .line 698
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    const-wide/16 v0, 0x64

    const p1, 0x3f666666    # 0.9f

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    .line 701
    iget-boolean p1, p0, Lorg/inaturalist/android/UserProfile;->mUserPicHidden:Z

    if-nez p1, :cond_1

    .line 702
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile;->mUserPicContainer:Landroid/view/ViewGroup;

    const/4 p2, 0x4

    invoke-static {p1, v0, v1, p2}, Lorg/inaturalist/android/UserProfile;->startAlphaAnimation(Landroid/view/View;JI)V

    const/4 p1, 0x1

    .line 703
    iput-boolean p1, p0, Lorg/inaturalist/android/UserProfile;->mUserPicHidden:Z

    goto :goto_0

    .line 706
    :cond_0
    iget-boolean p1, p0, Lorg/inaturalist/android/UserProfile;->mUserPicHidden:Z

    if-eqz p1, :cond_1

    .line 707
    iget-object p1, p0, Lorg/inaturalist/android/UserProfile;->mUserPicContainer:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-static {p1, v0, v1, p2}, Lorg/inaturalist/android/UserProfile;->startAlphaAnimation(Landroid/view/View;JI)V

    .line 708
    iput-boolean p2, p0, Lorg/inaturalist/android/UserProfile;->mUserPicHidden:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 131
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 137
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 134
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/UserProfile;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 339
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 341
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mUserDetailsReceiver:Lorg/inaturalist/android/UserProfile$UserDetailsReceiver;

    invoke-static {v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 346
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 347
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v0, :cond_0

    .line 348
    invoke-virtual {p0}, Lorg/inaturalist/android/UserProfile;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/UserProfile;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 351
    :cond_0
    new-instance v0, Lorg/inaturalist/android/UserProfile$UserDetailsReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/UserProfile$UserDetailsReceiver;-><init>(Lorg/inaturalist/android/UserProfile;Lorg/inaturalist/android/UserProfile$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/UserProfile;->mUserDetailsReceiver:Lorg/inaturalist/android/UserProfile$UserDetailsReceiver;

    .line 352
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "user_details_result"

    .line 353
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "species_count_result"

    .line 354
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "user_observations_result"

    .line 355
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "identifications_result"

    .line 356
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mUserDetailsReceiver:Lorg/inaturalist/android/UserProfile$UserDetailsReceiver;

    invoke-static {v1, v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 359
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    const-string v1, "observations_count"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mUser:Lorg/inaturalist/android/BetterJSONObject;

    const-string v1, "description"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_SPECIFIC_USER_DETAILS:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/inaturalist/android/UserProfile;->getUserDetails(Ljava/lang/String;)V

    .line 360
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mSpecies:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_USER_SPECIES_COUNT:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/inaturalist/android/UserProfile;->getUserDetails(Ljava/lang/String;)V

    .line 361
    :cond_3
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mObservations:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_USER_OBSERVATIONS:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/inaturalist/android/UserProfile;->getUserDetails(Ljava/lang/String;)V

    .line 362
    :cond_4
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mIdentifications:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    sget-object v0, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_USER_IDENTIFICATIONS:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/inaturalist/android/UserProfile;->getUserDetails(Ljava/lang/String;)V

    .line 364
    :cond_5
    invoke-direct {p0}, Lorg/inaturalist/android/UserProfile;->refreshViewState()V

    .line 366
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mViewType:Ljava/lang/String;

    const-string v1, "observations"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 367
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mObservationsList:Landroid/widget/ListView;

    iget v1, p0, Lorg/inaturalist/android/UserProfile;->mObservationListIndex:I

    iget v2, p0, Lorg/inaturalist/android/UserProfile;->mObservationListOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0

    .line 368
    :cond_6
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mViewType:Ljava/lang/String;

    const-string v1, "species"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 369
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mObservationsList:Landroid/widget/ListView;

    iget v1, p0, Lorg/inaturalist/android/UserProfile;->mSpeciesListIndex:I

    iget v2, p0, Lorg/inaturalist/android/UserProfile;->mSpeciesListOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0

    .line 370
    :cond_7
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mViewType:Ljava/lang/String;

    const-string v1, "identifications"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 371
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mObservationsList:Landroid/widget/ListView;

    iget v1, p0, Lorg/inaturalist/android/UserProfile;->mIdentificationsListIndex:I

    iget v2, p0, Lorg/inaturalist/android/UserProfile;->mIdentificationsListOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 375
    :cond_8
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mObservations:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mObservations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mObservationsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mObservations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    if-lt v0, v2, :cond_9

    .line 376
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mShowMoreObservations:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 378
    :cond_9
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mSpecies:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mSpecies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mSpeciesList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v2, p0, Lorg/inaturalist/android/UserProfile;->mSpecies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    if-lt v0, v2, :cond_a

    .line 379
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mShowMoreSpecies:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 309
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mViewType:Ljava/lang/String;

    const-string v1, "observations"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mObservationsList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 312
    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mObservationsList:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    .line 313
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mObservationsList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/inaturalist/android/UserProfile;->mObservationListOffset:I

    .line 314
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mObservationsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lorg/inaturalist/android/UserProfile;->mObservationListIndex:I

    goto :goto_0

    .line 316
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mViewType:Ljava/lang/String;

    const-string v2, "species"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mSpeciesList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 319
    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mSpeciesList:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    .line 320
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mSpeciesList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/inaturalist/android/UserProfile;->mSpeciesListOffset:I

    .line 321
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mSpeciesList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lorg/inaturalist/android/UserProfile;->mSpeciesListIndex:I

    goto :goto_0

    .line 323
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mViewType:Ljava/lang/String;

    const-string v2, "identifications"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mIdentificationsList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 326
    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mIdentificationsList:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    .line 327
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lorg/inaturalist/android/UserProfile;->mIdentificationsList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/inaturalist/android/UserProfile;->mIdentificationsListOffset:I

    .line 328
    iget-object v0, p0, Lorg/inaturalist/android/UserProfile;->mIdentificationsList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lorg/inaturalist/android/UserProfile;->mIdentificationsListIndex:I

    .line 333
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 334
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 117
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 118
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 125
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 126
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lorg/inaturalist/android/UserProfile;->mViewType:Ljava/lang/String;

    .line 392
    invoke-direct {p0}, Lorg/inaturalist/android/UserProfile;->refreshViewType()V

    return-void
.end method
