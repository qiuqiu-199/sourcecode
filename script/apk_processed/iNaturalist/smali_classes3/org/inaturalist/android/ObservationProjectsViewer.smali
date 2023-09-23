.class public Lorg/inaturalist/android/ObservationProjectsViewer;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ObservationProjectsViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;
    }
.end annotation


# static fields
.field public static final PROJECTS:Ljava/lang/String; = "projects"

.field private static final TAG:Ljava/lang/String; = "INAT:ObservationProjectsViewer"


# instance fields
.field private mAdapter:Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;

.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field private mLoadingProjects:Landroid/widget/TextView;

.field public mObservationProjects:Ljava/util/ArrayList;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$SerializableBundler;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/inaturalist/android/BetterJSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mProjectList:Landroid/widget/ListView;

.field private mSearchText:Landroid/widget/EditText;

.field private mShownSearchBox:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/ObservationProjectsViewer;)Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/inaturalist/android/ObservationProjectsViewer;->mAdapter:Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lorg/inaturalist/android/ObservationProjectsViewer;)Lorg/inaturalist/android/ActivityHelper;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/inaturalist/android/ObservationProjectsViewer;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 86
    new-instance v0, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationProjectsViewer;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    .line 88
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationProjectsViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0d00ce

    .line 89
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/ObservationProjectsViewer;->setContentView(I)V

    .line 91
    iget-object v1, p0, Lorg/inaturalist/android/ObservationProjectsViewer;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationProjectsViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/INaturalistApp;

    iput-object v1, p0, Lorg/inaturalist/android/ObservationProjectsViewer;->mApp:Lorg/inaturalist/android/INaturalistApp;

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "projects"

    .line 96
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationProjectsViewer;->mObservationProjects:Ljava/util/ArrayList;

    .line 99
    :cond_1
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationProjectsViewer;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    .line 100
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 101
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x106000d

    .line 102
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setIcon(I)V

    .line 104
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f08014f

    .line 105
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    const v0, 0x7f1002dc

    .line 106
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    const p1, 0x7f0a02ba

    .line 108
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationProjectsViewer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationProjectsViewer;->mLoadingProjects:Landroid/widget/TextView;

    .line 109
    iget-object p1, p0, Lorg/inaturalist/android/ObservationProjectsViewer;->mLoadingProjects:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x7f0a02b9

    .line 110
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationProjectsViewer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationProjectsViewer;->mProjectList:Landroid/widget/ListView;

    const p1, 0x7f0a030e

    .line 112
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationProjectsViewer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationProjectsViewer;->mSearchText:Landroid/widget/EditText;

    .line 113
    iget-object p1, p0, Lorg/inaturalist/android/ObservationProjectsViewer;->mSearchText:Landroid/widget/EditText;

    const v0, 0x7f10030e

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 114
    iget-object p1, p0, Lorg/inaturalist/android/ObservationProjectsViewer;->mSearchText:Landroid/widget/EditText;

    new-instance v0, Lorg/inaturalist/android/ObservationProjectsViewer$1;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ObservationProjectsViewer$1;-><init>(Lorg/inaturalist/android/ObservationProjectsViewer;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 127
    iget-boolean p1, p0, Lorg/inaturalist/android/ObservationProjectsViewer;->mShownSearchBox:Z

    if-eqz p1, :cond_2

    .line 128
    iget-object p1, p0, Lorg/inaturalist/android/ObservationProjectsViewer;->mSearchText:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 131
    :cond_2
    new-instance p1, Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationProjectsViewer;->mObservationProjects:Ljava/util/ArrayList;

    invoke-direct {p1, p0, p0, v0}, Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;-><init>(Lorg/inaturalist/android/ObservationProjectsViewer;Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lorg/inaturalist/android/ObservationProjectsViewer;->mAdapter:Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;

    .line 132
    iget-object p1, p0, Lorg/inaturalist/android/ObservationProjectsViewer;->mProjectList:Landroid/widget/ListView;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationProjectsViewer;->mAdapter:Lorg/inaturalist/android/ObservationProjectsViewer$ProjectAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 71
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 78
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 74
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationProjectsViewer;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 143
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 148
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 149
    iget-object v0, p0, Lorg/inaturalist/android/ObservationProjectsViewer;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationProjectsViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationProjectsViewer;->mApp:Lorg/inaturalist/android/INaturalistApp;

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 137
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 138
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method
