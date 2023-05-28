.class public Lorg/inaturalist/android/TaxonTagPhotosViewer;
.super Landroid/support/v7/app/AppCompatActivity;
.source "TaxonTagPhotosViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/TaxonTagPhotosViewer$TagPicsPagerAdapter;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "TaxonTagPhotosViewer"


# instance fields
.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field public mGuideId:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mGuideXml:Lorg/inaturalist/android/GuideXML;

.field public mGuideXmlFilename:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field public mTagName:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mTagValue:Ljava/lang/String;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mViewPager:Luk/co/senab/photoview/HackyViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/TaxonTagPhotosViewer;)Lorg/inaturalist/android/GuideXML;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    return-object p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/TaxonTagPhotosViewer;Lorg/inaturalist/android/GuideTaxonPhotoXML;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lorg/inaturalist/android/TaxonTagPhotosViewer;->getPhotoLocation(Lorg/inaturalist/android/GuideTaxonPhotoXML;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPhotoLocation(Lorg/inaturalist/android/GuideTaxonPhotoXML;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x4

    .line 199
    new-array v0, v0, [Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    sget-object v1, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;->LARGE:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;->MEDIUM:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;->SMALL:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;->THUMBNAIL:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 207
    iget-object v1, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    .line 208
    invoke-virtual {v1}, Lorg/inaturalist/android/GuideXML;->isGuideDownloaded()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;->LOCAL:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;->REMOTE:Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;

    :goto_0
    const/4 v3, 0x0

    .line 211
    array-length v4, v0

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    .line 212
    invoke-virtual {p1, v1, v3}, Lorg/inaturalist/android/GuideTaxonPhotoXML;->getPhotoLocation(Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoType;Lorg/inaturalist/android/GuideTaxonPhotoXML$PhotoSize;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 215
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object v3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 62
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonTagPhotosViewer;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    .line 66
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 67
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v1, 0x106000d

    .line 68
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setIcon(I)V

    const v1, 0x7f080392

    .line 69
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    .line 71
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonTagPhotosViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/INaturalistApp;

    iput-object v1, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const v1, 0x7f0d00a8

    .line 72
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/TaxonTagPhotosViewer;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonTagPhotosViewer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez p1, :cond_0

    const-string p1, "guide_id"

    .line 77
    invoke-virtual {v1, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer;->mGuideId:Ljava/lang/String;

    const-string p1, "guide_xml_filename"

    .line 78
    invoke-virtual {v1, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer;->mGuideXmlFilename:Ljava/lang/String;

    const-string p1, "tag_name"

    .line 79
    invoke-virtual {v1, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer;->mTagName:Ljava/lang/String;

    const-string p1, "tag_value"

    .line 80
    invoke-virtual {v1, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer;->mTagValue:Ljava/lang/String;

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer;->mTagName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer;->mTagValue:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer;->mTagName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer;->mTagValue:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    const p1, 0x7f0a017b

    .line 87
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonTagPhotosViewer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Luk/co/senab/photoview/HackyViewPager;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer;->mViewPager:Luk/co/senab/photoview/HackyViewPager;

    .line 89
    iget-object p1, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer;->mGuideXmlFilename:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 91
    new-instance p1, Lorg/inaturalist/android/GuideXML;

    iget-object v0, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer;->mGuideId:Ljava/lang/String;

    iget-object v1, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer;->mGuideXmlFilename:Ljava/lang/String;

    invoke-direct {p1, p0, v0, v1}, Lorg/inaturalist/android/GuideXML;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer;->mGuideXml:Lorg/inaturalist/android/GuideXML;

    .line 92
    iget-object p1, p0, Lorg/inaturalist/android/TaxonTagPhotosViewer;->mViewPager:Luk/co/senab/photoview/HackyViewPager;

    new-instance v0, Lorg/inaturalist/android/TaxonTagPhotosViewer$TagPicsPagerAdapter;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/TaxonTagPhotosViewer$TagPicsPagerAdapter;-><init>(Lorg/inaturalist/android/TaxonTagPhotosViewer;)V

    invoke-virtual {p1, v0}, Luk/co/senab/photoview/HackyViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 100
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 105
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 102
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonTagPhotosViewer;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 111
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 112
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 47
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 48
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 55
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 56
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method
