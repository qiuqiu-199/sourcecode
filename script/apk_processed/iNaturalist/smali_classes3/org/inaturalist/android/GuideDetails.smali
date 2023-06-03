.class public Lorg/inaturalist/android/GuideDetails;
.super Landroid/support/v7/app/AppCompatActivity;
.source "GuideDetails.java"

# interfaces
.implements Lorg/inaturalist/android/INaturalistApp$OnDownloadFileProgress;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;,
        Lorg/inaturalist/android/GuideDetails$GuideMenuTag;,
        Lorg/inaturalist/android/GuideDetails$GuideMenuSection;,
        Lorg/inaturalist/android/GuideDetails$GuideMenuItem;,
        Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;,
        Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;
    }
.end annotation


# static fields
.field private static final MAX_TAXA:D = 100.0

.field private static final TAG:Ljava/lang/String; = "GuideDetails"


# instance fields
.field private mAdapter:Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;

.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mCurrentTaxaResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/inaturalist/android/GuideTaxonXML;",
            ">;"
        }
    .end annotation
.end field

.field private mDescription:Landroid/widget/TextView;

.field private mDownloadGuide:Landroid/view/View;

.field private mDownloadGuideImage:Landroid/widget/ImageView;

.field public mDownloadProgress:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mDownloadSubtitle:Landroid/widget/TextView;

.field private mDownloadTitle:Landroid/widget/TextView;

.field private mDownloadingGuide:Landroid/view/View;

.field private mDownloadingProgress:Landroid/widget/ProgressBar;

.field private mDownloadingSubtitle:Landroid/widget/TextView;

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mEditorName:Landroid/widget/TextView;

.field private mFilter:Lorg/inaturalist/android/GuideTaxonFilter;

.field public mFilterSearchText:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mFilterTags:Ljava/util/ArrayList;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mGuide:Lorg/inaturalist/android/BetterJSONObject;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mGuideMenu:Landroid/view/View;

.field private mGuideMenuList:Landroid/widget/ListView;

.field private mGuideMenuListAdapter:Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;

.field private mGuideTaxaGrid:Lorg/inaturalist/android/GridViewExtended;

.field private mGuideXml:Lorg/inaturalist/android/GuideXML;

.field public mGuideXmlFilename:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field public mIsDownloading:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mLicense:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRecommendedNextStep:Landroid/widget/Button;

.field public mRecommendedPrediate:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mReset:Landroid/widget/ImageButton;

.field private mSearchText:Landroid/widget/EditText;

.field private mSideMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/inaturalist/android/GuideDetails$GuideMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTaxa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/inaturalist/android/GuideTaxonXML;",
            ">;"
        }
    .end annotation
.end field

.field private mTaxaEmpty:Landroid/widget/TextView;

.field private mTaxaGuideReceiver:Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;

.field private mTypingTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/GridViewExtended;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/inaturalist/android/GuideDetails;->mGuideTaxaGrid:Lorg/inaturalist/android/GridViewExtended;

    return-object p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/GuideXML;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/inaturalist/android/GuideDetails;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/inaturalist/android/GuideDetails;)Z
    .locals 0

    .line 62
    invoke-direct {p0}, Lorg/inaturalist/android/GuideDetails;->isLoggedIn()Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lorg/inaturalist/android/GuideDetails;Lorg/inaturalist/android/GuideXML;)Lorg/inaturalist/android/GuideXML;
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/inaturalist/android/GuideDetails;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lorg/inaturalist/android/GuideDetails;->downloadGuide()V

    return-void
.end method

.method static synthetic access$1200(Lorg/inaturalist/android/GuideDetails;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lorg/inaturalist/android/GuideDetails;->refreshGuideSideMenu()V

    return-void
.end method

.method static synthetic access$1300(Lorg/inaturalist/android/GuideDetails;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lorg/inaturalist/android/GuideDetails;->updateDownloadProgress(I)V

    return-void
.end method

.method static synthetic access$1400(Lorg/inaturalist/android/GuideDetails;)Landroid/widget/TextView;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadingSubtitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/inaturalist/android/GuideDetails;->mApp:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/inaturalist/android/GuideDetails;->mGuideMenuListAdapter:Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/GuideTaxonFilter;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/inaturalist/android/GuideDetails;->mFilter:Lorg/inaturalist/android/GuideTaxonFilter;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/inaturalist/android/GuideDetails;)Ljava/util/List;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/inaturalist/android/GuideDetails;->mCurrentTaxaResults:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/inaturalist/android/GuideDetails;->mTaxaGuideReceiver:Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/inaturalist/android/GuideDetails;)Ljava/util/List;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/inaturalist/android/GuideDetails;->mSideMenuItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/inaturalist/android/GuideDetails;)Landroid/widget/ListView;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/inaturalist/android/GuideDetails;->mGuideMenuList:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$2300(Lorg/inaturalist/android/GuideDetails;)Ljava/lang/Runnable;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/inaturalist/android/GuideDetails;->mTypingTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2302(Lorg/inaturalist/android/GuideDetails;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mTypingTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2400(Lorg/inaturalist/android/GuideDetails;)Landroid/os/Handler;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/inaturalist/android/GuideDetails;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/ActivityHelper;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/inaturalist/android/GuideDetails;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    return-object p0
.end method

.method static synthetic access$400(Lorg/inaturalist/android/GuideDetails;)Landroid/widget/ProgressBar;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/inaturalist/android/GuideDetails;->mProgress:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$500(Lorg/inaturalist/android/GuideDetails;)Ljava/util/List;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/inaturalist/android/GuideDetails;->mTaxa:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lorg/inaturalist/android/GuideDetails;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mTaxa:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lorg/inaturalist/android/GuideDetails;)Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/inaturalist/android/GuideDetails;->mAdapter:Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;

    return-object p0
.end method

.method static synthetic access$602(Lorg/inaturalist/android/GuideDetails;Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;)Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mAdapter:Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;

    return-object p1
.end method

.method static synthetic access$700(Lorg/inaturalist/android/GuideDetails;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lorg/inaturalist/android/GuideDetails;->updateTaxaByFilter()V

    return-void
.end method

.method static synthetic access$800(Lorg/inaturalist/android/GuideDetails;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lorg/inaturalist/android/GuideDetails;->updateSideMenu()V

    return-void
.end method

.method static synthetic access$900(Lorg/inaturalist/android/GuideDetails;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lorg/inaturalist/android/GuideDetails;->showEditDownloadDialog()V

    return-void
.end method

.method private downloadGuide()V
    .locals 3

    .line 470
    invoke-direct {p0}, Lorg/inaturalist/android/GuideDetails;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    invoke-direct {p0}, Lorg/inaturalist/android/GuideDetails;->showDownloadGuideError()V

    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadingGuide:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadGuide:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 478
    iput-boolean v0, p0, Lorg/inaturalist/android/GuideDetails;->mIsDownloading:Z

    .line 479
    invoke-direct {p0, v1}, Lorg/inaturalist/android/GuideDetails;->updateDownloadProgress(I)V

    .line 481
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object v0

    const-string v1, "Guide Download - Start"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mApp:Lorg/inaturalist/android/INaturalistApp;

    iget-object v1, p0, Lorg/inaturalist/android/GuideDetails;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    invoke-virtual {v1}, Lorg/inaturalist/android/GuideXML;->getNgzURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lorg/inaturalist/android/INaturalistApp;->downloadFile(Ljava/lang/String;Lorg/inaturalist/android/INaturalistApp$OnDownloadFileProgress;)V

    return-void
.end method

.method private isLoggedIn()Z
    .locals 4

    const-string v0, "iNaturalistPreferences"

    const/4 v1, 0x0

    .line 1066
    invoke-virtual {p0, v0, v1}, Lorg/inaturalist/android/GuideDetails;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "username"

    const/4 v3, 0x0

    .line 1067
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isNetworkAvailable()Z
    .locals 1

    const-string v0, "connectivity"

    .line 446
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuideDetails;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 447
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 448
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

.method private refreshGuideSideMenu()V
    .locals 4

    .line 318
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadingGuide:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadGuide:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    if-nez v0, :cond_0

    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    invoke-virtual {v0}, Lorg/inaturalist/android/GuideXML;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 324
    iget-object v3, p0, Lorg/inaturalist/android/GuideDetails;->mDescription:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mDescription:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 326
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mEditorName:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/inaturalist/android/GuideDetails;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    invoke-virtual {v3}, Lorg/inaturalist/android/GuideXML;->getCompiler()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mLicense:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/inaturalist/android/GuideDetails;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    invoke-virtual {v3}, Lorg/inaturalist/android/GuideXML;->getLicense()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lorg/inaturalist/android/GuideXML;->licenseToText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    new-instance v0, Lorg/inaturalist/android/GuideDetails$1;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/GuideDetails$1;-><init>(Lorg/inaturalist/android/GuideDetails;)V

    .line 339
    iget-object v3, p0, Lorg/inaturalist/android/GuideDetails;->mEditorName:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-boolean v0, p0, Lorg/inaturalist/android/GuideDetails;->mIsDownloading:Z

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadingGuide:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadingSubtitle:Landroid/widget/TextView;

    const v2, 0x7f100142

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 346
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadGuide:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 347
    iget v0, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadProgress:I

    invoke-direct {p0, v0}, Lorg/inaturalist/android/GuideDetails;->updateDownloadProgress(I)V

    goto/16 :goto_1

    .line 349
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    invoke-virtual {v0}, Lorg/inaturalist/android/GuideXML;->isGuideDownloaded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 351
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadTitle:Landroid/widget/TextView;

    const v2, 0x7f100141

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 352
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 353
    iget-object v2, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadSubtitle:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/inaturalist/android/GuideDetails;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    invoke-virtual {v3}, Lorg/inaturalist/android/GuideXML;->getDownloadedGuideDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadGuideImage:Landroid/widget/ImageView;

    const v2, 0x7f080199

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 356
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadGuide:Landroid/view/View;

    new-instance v2, Lorg/inaturalist/android/GuideDetails$2;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/GuideDetails$2;-><init>(Lorg/inaturalist/android/GuideDetails;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 363
    :cond_3
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    invoke-virtual {v0}, Lorg/inaturalist/android/GuideXML;->isOfflineGuideAvailable()Z

    move-result v0

    const v2, 0x7f080138

    if-nez v0, :cond_4

    .line 365
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadTitle:Landroid/widget/TextView;

    const v3, 0x7f100140

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 366
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadSubtitle:Landroid/widget/TextView;

    const v3, 0x7f10017c

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 367
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadGuideImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 370
    :cond_4
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadTitle:Landroid/widget/TextView;

    const v3, 0x7f10013e

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 371
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadSubtitle:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/inaturalist/android/GuideDetails;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    invoke-virtual {v3}, Lorg/inaturalist/android/GuideXML;->getNgzFileSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadGuideImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 374
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadGuide:Landroid/view/View;

    new-instance v2, Lorg/inaturalist/android/GuideDetails$3;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/GuideDetails$3;-><init>(Lorg/inaturalist/android/GuideDetails;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    :goto_1
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    invoke-virtual {v0}, Lorg/inaturalist/android/GuideXML;->getAllTags()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    invoke-virtual {v0}, Lorg/inaturalist/android/GuideXML;->getAllTags()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const v0, 0x7f0a03b5

    .line 401
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuideDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 402
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method private showDownloadGuideError()V
    .locals 1

    const/4 v0, 0x0

    .line 452
    iput-boolean v0, p0, Lorg/inaturalist/android/GuideDetails;->mIsDownloading:Z

    .line 453
    iput v0, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadProgress:I

    .line 454
    new-instance v0, Lorg/inaturalist/android/GuideDetails$5;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/GuideDetails$5;-><init>(Lorg/inaturalist/android/GuideDetails;)V

    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuideDetails;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showEditDownloadDialog()V
    .locals 4

    .line 407
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x3

    .line 410
    new-array v1, v1, [Ljava/lang/String;

    .line 411
    invoke-virtual {p0}, Lorg/inaturalist/android/GuideDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100128

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 412
    invoke-virtual {p0}, Lorg/inaturalist/android/GuideDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1002eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 413
    invoke-virtual {p0}, Lorg/inaturalist/android/GuideDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 415
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    invoke-direct {v2, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 419
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 422
    new-instance v2, Lorg/inaturalist/android/GuideDetails$4;

    invoke-direct {v2, p0, v0}, Lorg/inaturalist/android/GuideDetails$4;-><init>(Lorg/inaturalist/android/GuideDetails;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 442
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateDownloadProgress(I)V
    .locals 1

    .line 465
    iput p1, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadProgress:I

    .line 466
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method private updateSideMenu()V
    .locals 9

    .line 280
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    invoke-virtual {v0}, Lorg/inaturalist/android/GuideXML;->getAllTags()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 287
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 288
    iget-object v2, p0, Lorg/inaturalist/android/GuideDetails;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    invoke-virtual {v2}, Lorg/inaturalist/android/GuideXML;->getTagCounts()Ljava/util/Map;

    move-result-object v2

    .line 290
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 291
    new-instance v5, Lorg/inaturalist/android/GuideDetails$GuideMenuSection;

    invoke-direct {v5, p0, v4}, Lorg/inaturalist/android/GuideDetails$GuideMenuSection;-><init>(Lorg/inaturalist/android/GuideDetails;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 295
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "="

    const/4 v7, 0x2

    .line 297
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 298
    array-length v7, v6

    const/4 v8, 0x1

    if-le v7, v8, :cond_3

    .line 300
    aget-object v6, v6, v8

    goto :goto_1

    :cond_3
    move-object v6, v5

    .line 302
    :goto_1
    new-instance v7, Lorg/inaturalist/android/GuideDetails$GuideMenuTag;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v7, p0, v6, v5, v8}, Lorg/inaturalist/android/GuideDetails$GuideMenuTag;-><init>(Lorg/inaturalist/android/GuideDetails;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 306
    :cond_4
    iput-object v1, p0, Lorg/inaturalist/android/GuideDetails;->mSideMenuItems:Ljava/util/List;

    .line 307
    new-instance v0, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;

    iget-object v2, p0, Lorg/inaturalist/android/GuideDetails;->mFilter:Lorg/inaturalist/android/GuideTaxonFilter;

    invoke-direct {v0, p0, p0, v2, v1}, Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;-><init>(Lorg/inaturalist/android/GuideDetails;Landroid/content/Context;Lorg/inaturalist/android/GuideTaxonFilter;Ljava/util/List;)V

    iput-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mGuideMenuListAdapter:Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;

    .line 308
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mGuideMenuList:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/inaturalist/android/GuideDetails;->mGuideMenuListAdapter:Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 310
    invoke-direct {p0}, Lorg/inaturalist/android/GuideDetails;->refreshGuideSideMenu()V

    return-void
.end method

.method private updateTaxaByFilter()V
    .locals 6

    .line 718
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mFilter:Lorg/inaturalist/android/GuideTaxonFilter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mTaxa:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 720
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    iget-object v1, p0, Lorg/inaturalist/android/GuideDetails;->mFilter:Lorg/inaturalist/android/GuideTaxonFilter;

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/GuideXML;->getTaxa(Lorg/inaturalist/android/GuideTaxonFilter;)Ljava/util/List;

    move-result-object v0

    .line 721
    iput-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mCurrentTaxaResults:Ljava/util/List;

    .line 722
    iget-object v1, p0, Lorg/inaturalist/android/GuideDetails;->mTaxa:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 723
    iget-object v1, p0, Lorg/inaturalist/android/GuideDetails;->mTaxa:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 724
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mAdapter:Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;

    invoke-virtual {v0}, Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;->notifyDataSetChanged()V

    .line 726
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mSearchText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 728
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mTaxa:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x8

    if-lez v0, :cond_1

    .line 729
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mTaxaEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 730
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mGuideTaxaGrid:Lorg/inaturalist/android/GridViewExtended;

    invoke-virtual {v0, v3}, Lorg/inaturalist/android/GridViewExtended;->setVisibility(I)V

    .line 732
    new-instance v0, Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;

    iget-object v2, p0, Lorg/inaturalist/android/GuideDetails;->mTaxa:Ljava/util/List;

    invoke-direct {v0, p0, p0, v2}, Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;-><init>(Lorg/inaturalist/android/GuideDetails;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mAdapter:Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;

    .line 733
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mGuideTaxaGrid:Lorg/inaturalist/android/GridViewExtended;

    iget-object v2, p0, Lorg/inaturalist/android/GuideDetails;->mAdapter:Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;

    invoke-virtual {v0, v2}, Lorg/inaturalist/android/GridViewExtended;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 736
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mTaxaEmpty:Landroid/widget/TextView;

    const v4, 0x7f100264

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 737
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mTaxaEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 738
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mGuideTaxaGrid:Lorg/inaturalist/android/GridViewExtended;

    invoke-virtual {v0, v2}, Lorg/inaturalist/android/GridViewExtended;->setVisibility(I)V

    .line 741
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    iget-object v2, p0, Lorg/inaturalist/android/GuideDetails;->mFilter:Lorg/inaturalist/android/GuideTaxonFilter;

    iget-object v4, p0, Lorg/inaturalist/android/GuideDetails;->mCurrentTaxaResults:Ljava/util/List;

    invoke-virtual {v0, v2, v4}, Lorg/inaturalist/android/GuideXML;->getRecommendedPredicate(Lorg/inaturalist/android/GuideTaxonFilter;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 743
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mRecommendedNextStep:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 746
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mRecommendedNextStep:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 784
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 798
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 799
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    const v0, 0x7f0d0062

    .line 801
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuideDetails;->setContentView(I)V

    .line 803
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mHandler:Landroid/os/Handler;

    .line 804
    new-instance v0, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    const v0, 0x7f0a0111

    .line 806
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuideDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v0, 0x7f0a0153

    .line 807
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuideDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mGuideMenuList:Landroid/widget/ListView;

    const v0, 0x7f0a0152

    .line 808
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuideDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mGuideMenu:Landroid/view/View;

    .line 810
    new-instance v0, Lorg/inaturalist/android/GuideTaxonFilter;

    invoke-direct {v0}, Lorg/inaturalist/android/GuideTaxonFilter;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mFilter:Lorg/inaturalist/android/GuideTaxonFilter;

    const v0, 0x7f0a02db

    .line 812
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuideDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mRecommendedNextStep:Landroid/widget/Button;

    .line 813
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mRecommendedNextStep:Landroid/widget/Button;

    new-instance v1, Lorg/inaturalist/android/GuideDetails$9;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/GuideDetails$9;-><init>(Lorg/inaturalist/android/GuideDetails;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02e9

    .line 892
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/GuideDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mReset:Landroid/widget/ImageButton;

    .line 893
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mReset:Landroid/widget/ImageButton;

    new-instance v1, Lorg/inaturalist/android/GuideDetails$10;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/GuideDetails$10;-><init>(Lorg/inaturalist/android/GuideDetails;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 910
    invoke-virtual {p0}, Lorg/inaturalist/android/GuideDetails;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    .line 911
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 912
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v1, 0x7f08014e

    .line 913
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    .line 915
    invoke-virtual {p0}, Lorg/inaturalist/android/GuideDetails;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 917
    iget-object v2, p0, Lorg/inaturalist/android/GuideDetails;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v2, :cond_0

    .line 918
    invoke-virtual {p0}, Lorg/inaturalist/android/GuideDetails;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lorg/inaturalist/android/INaturalistApp;

    iput-object v2, p0, Lorg/inaturalist/android/GuideDetails;->mApp:Lorg/inaturalist/android/INaturalistApp;

    :cond_0
    if-nez p1, :cond_2

    const-string p1, "guide"

    .line 922
    invoke-virtual {v1, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    .line 923
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 924
    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/inaturalist/android/GuideDetails;->mGuide:Lorg/inaturalist/android/BetterJSONObject;

    goto :goto_0

    .line 926
    :cond_1
    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mGuide:Lorg/inaturalist/android/BetterJSONObject;

    goto :goto_0

    .line 929
    :cond_2
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mGuideXmlFilename:Ljava/lang/String;

    if-eqz p1, :cond_3

    new-instance p1, Lorg/inaturalist/android/GuideXML;

    iget-object v1, p0, Lorg/inaturalist/android/GuideDetails;->mGuide:Lorg/inaturalist/android/BetterJSONObject;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/inaturalist/android/GuideDetails;->mGuideXmlFilename:Ljava/lang/String;

    invoke-direct {p1, p0, v1, v2}, Lorg/inaturalist/android/GuideXML;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    .line 931
    :cond_3
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mFilter:Lorg/inaturalist/android/GuideTaxonFilter;

    iget-object v1, p0, Lorg/inaturalist/android/GuideDetails;->mFilterSearchText:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/inaturalist/android/GuideTaxonFilter;->setSearchText(Ljava/lang/String;)V

    .line 932
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mFilter:Lorg/inaturalist/android/GuideTaxonFilter;

    iget-object v1, p0, Lorg/inaturalist/android/GuideDetails;->mFilterTags:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lorg/inaturalist/android/GuideTaxonFilter;->setTags(Ljava/util/List;)V

    .line 935
    :goto_0
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mGuide:Lorg/inaturalist/android/BetterJSONObject;

    if-nez p1, :cond_4

    .line 936
    invoke-virtual {p0}, Lorg/inaturalist/android/GuideDetails;->finish()V

    return-void

    .line 940
    :cond_4
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mGuide:Lorg/inaturalist/android/BetterJSONObject;

    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 943
    new-instance p1, Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;-><init>(Lorg/inaturalist/android/GuideDetails;Lorg/inaturalist/android/GuideDetails$1;)V

    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mTaxaGuideReceiver:Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;

    .line 944
    new-instance p1, Landroid/content/IntentFilter;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_GUIDE_XML_RESULT:Ljava/lang/String;

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "GuideDetails"

    const-string v2, "Registering ACTION_GUIDE_XML_RESULT"

    .line 945
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v1, p0, Lorg/inaturalist/android/GuideDetails;->mTaxaGuideReceiver:Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;

    invoke-static {v1, p1, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    const p1, 0x7f0a030e

    .line 948
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GuideDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mSearchText:Landroid/widget/EditText;

    .line 949
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mSearchText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 950
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mSearchText:Landroid/widget/EditText;

    iget-object v2, p0, Lorg/inaturalist/android/GuideDetails;->mFilter:Lorg/inaturalist/android/GuideTaxonFilter;

    invoke-virtual {v2}, Lorg/inaturalist/android/GuideTaxonFilter;->getSearchText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 951
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mSearchText:Landroid/widget/EditText;

    new-instance v2, Lorg/inaturalist/android/GuideDetails$11;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/GuideDetails$11;-><init>(Lorg/inaturalist/android/GuideDetails;)V

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f0a02ad

    .line 978
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GuideDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mProgress:Landroid/widget/ProgressBar;

    const p1, 0x7f0a0154

    .line 979
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GuideDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mTaxaEmpty:Landroid/widget/TextView;

    const p1, 0x7f0a037f

    .line 980
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GuideDetails;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/GridViewExtended;

    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mGuideTaxaGrid:Lorg/inaturalist/android/GridViewExtended;

    .line 981
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mGuideTaxaGrid:Lorg/inaturalist/android/GridViewExtended;

    new-instance v2, Lorg/inaturalist/android/GuideDetails$12;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/GuideDetails$12;-><init>(Lorg/inaturalist/android/GuideDetails;)V

    invoke-virtual {p1, v2}, Lorg/inaturalist/android/GridViewExtended;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 997
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 998
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mGuideTaxaGrid:Lorg/inaturalist/android/GridViewExtended;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lorg/inaturalist/android/GridViewExtended;->setVisibility(I)V

    .line 999
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mTaxaEmpty:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p1, "layout_inflater"

    .line 1001
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GuideDetails;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v3, 0x7f0d0063

    .line 1002
    invoke-virtual {p1, v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1003
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const v1, 0x7f0a00f8

    const-string v3, "description_all_caps"

    const-string v4, "description"

    invoke-virtual {v0, p1, v1, v3, v4}, Lorg/inaturalist/android/INaturalistApp;->setStringResourceForView(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V

    .line 1004
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const v1, 0x7f0a0016

    const-string v3, "about_guide_all_caps"

    const-string v4, "about_guide"

    invoke-virtual {v0, p1, v1, v3, v4}, Lorg/inaturalist/android/INaturalistApp;->setStringResourceForView(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0a00f7

    .line 1005
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mDescription:Landroid/widget/TextView;

    const v0, 0x7f0a0117

    .line 1006
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mEditorName:Landroid/widget/TextView;

    const v0, 0x7f0a01ac

    .line 1007
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mLicense:Landroid/widget/TextView;

    const v0, 0x7f0a010c

    .line 1008
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadTitle:Landroid/widget/TextView;

    const v0, 0x7f0a010b

    .line 1009
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadSubtitle:Landroid/widget/TextView;

    const v0, 0x7f0a010f

    .line 1010
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadingSubtitle:Landroid/widget/TextView;

    const v0, 0x7f0a010a

    .line 1011
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadGuideImage:Landroid/widget/ImageView;

    const v0, 0x7f0a010d

    .line 1013
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadingGuide:Landroid/view/View;

    const v0, 0x7f0a010e

    .line 1014
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadingProgress:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0109

    .line 1016
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mDownloadGuide:Landroid/view/View;

    .line 1018
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mGuideMenuList:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1020
    iget-boolean p1, p0, Lorg/inaturalist/android/GuideDetails;->mIsDownloading:Z

    if-eqz p1, :cond_5

    .line 1021
    invoke-direct {p0}, Lorg/inaturalist/android/GuideDetails;->refreshGuideSideMenu()V

    .line 1022
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {p1, p0}, Lorg/inaturalist/android/INaturalistApp;->setDownloadCallback(Lorg/inaturalist/android/INaturalistApp$OnDownloadFileProgress;)V

    .line 1025
    :cond_5
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    if-eqz p1, :cond_6

    .line 1026
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mTaxa:Ljava/util/List;

    .line 1027
    new-instance p1, Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;

    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mTaxa:Ljava/util/List;

    invoke-direct {p1, p0, p0, v0}, Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;-><init>(Lorg/inaturalist/android/GuideDetails;Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mAdapter:Lorg/inaturalist/android/GuideDetails$TaxaListAdapter;

    .line 1028
    invoke-direct {p0}, Lorg/inaturalist/android/GuideDetails;->updateTaxaByFilter()V

    .line 1030
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1031
    invoke-direct {p0}, Lorg/inaturalist/android/GuideDetails;->updateSideMenu()V

    :cond_6
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 790
    invoke-virtual {p0}, Lorg/inaturalist/android/GuideDetails;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0006

    .line 791
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 792
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDownloadError()V
    .locals 0

    .line 534
    invoke-direct {p0}, Lorg/inaturalist/android/GuideDetails;->showDownloadGuideError()V

    return-void
.end method

.method public onDownloadProgress(JJLjava/lang/String;)Z
    .locals 2

    long-to-float v0, p1

    long-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 492
    new-instance v1, Lorg/inaturalist/android/GuideDetails$6;

    invoke-direct {v1, p0, v0}, Lorg/inaturalist/android/GuideDetails$6;-><init>(Lorg/inaturalist/android/GuideDetails;I)V

    invoke-virtual {p0, v1}, Lorg/inaturalist/android/GuideDetails;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    cmp-long v1, p1, p3

    if-nez v1, :cond_1

    .line 503
    invoke-static {}, Lorg/inaturalist/android/AnalyticsClient;->getInstance()Lorg/inaturalist/android/AnalyticsClient;

    move-result-object p1

    const-string p2, "Guide Download - Complete"

    invoke-virtual {p1, p2}, Lorg/inaturalist/android/AnalyticsClient;->logEvent(Ljava/lang/String;)V

    .line 506
    new-instance p1, Lorg/inaturalist/android/GuideDetails$7;

    invoke-direct {p1, p0}, Lorg/inaturalist/android/GuideDetails$7;-><init>(Lorg/inaturalist/android/GuideDetails;)V

    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GuideDetails;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 512
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    invoke-virtual {p1, p5}, Lorg/inaturalist/android/GuideXML;->extractOfflineGuide(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 515
    invoke-direct {p0}, Lorg/inaturalist/android/GuideDetails;->showDownloadGuideError()V

    return v0

    :cond_0
    const/4 p1, 0x0

    .line 519
    iput-boolean p1, p0, Lorg/inaturalist/android/GuideDetails;->mIsDownloading:Z

    .line 521
    new-instance p1, Lorg/inaturalist/android/GuideDetails$8;

    invoke-direct {p1, p0}, Lorg/inaturalist/android/GuideDetails$8;-><init>(Lorg/inaturalist/android/GuideDetails;)V

    invoke-virtual {p0, p1}, Lorg/inaturalist/android/GuideDetails;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 754
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const v1, 0x7f0a0334

    if-eq v0, v1, :cond_0

    .line 772
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 757
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mGuideMenuListAdapter:Lorg/inaturalist/android/GuideDetails$GuideMenuListAdapter;

    if-nez p1, :cond_1

    return v2

    .line 761
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mGuideMenu:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 762
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mGuideMenu:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_0

    .line 764
    :cond_2
    iget-object p1, p0, Lorg/inaturalist/android/GuideDetails;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mGuideMenu:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    :goto_0
    return v2

    .line 769
    :cond_3
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->navigateUpFromSameTask(Landroid/app/Activity;)V

    return v2
.end method

.method protected onPause()V
    .locals 1

    .line 1038
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 1040
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mTaxaGuideReceiver:Lorg/inaturalist/android/GuideDetails$GuideTaxaReceiver;

    invoke-static {v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 779
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 1044
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 1046
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    if-nez v0, :cond_0

    .line 1048
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mGuide:Lorg/inaturalist/android/BetterJSONObject;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1049
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GUIDE_XML:Ljava/lang/String;

    const/4 v3, 0x0

    const-class v4, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v1, v2, v3, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1050
    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GUIDE_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1051
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1058
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mFilter:Lorg/inaturalist/android/GuideTaxonFilter;

    invoke-virtual {v0}, Lorg/inaturalist/android/GuideTaxonFilter;->getSearchText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mFilterSearchText:Ljava/lang/String;

    .line 1059
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mFilter:Lorg/inaturalist/android/GuideTaxonFilter;

    invoke-virtual {v0}, Lorg/inaturalist/android/GuideTaxonFilter;->getAllTags()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mFilterTags:Ljava/util/ArrayList;

    .line 1061
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1062
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 115
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 116
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 123
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 124
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 125
    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mTypingTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/GuideDetails;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/inaturalist/android/GuideDetails;->mTypingTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
