.class public abstract Lorg/inaturalist/android/BaseTab;
.super Landroid/support/v4/app/Fragment;
.source "BaseTab.java"

# interfaces
.implements Lorg/inaturalist/android/ProjectsAdapter$OnLoading;
.implements Lorg/inaturalist/android/INaturalistApp$OnLocationStatus;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/BaseTab$ProjectsReceiver;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_LOGIN:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "INAT"


# instance fields
.field private mAdapter:Lorg/inaturalist/android/ProjectsAdapter;

.field protected mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mAskedForLocationPermission:Z

.field private mEmptyListLabel:Landroid/widget/TextView;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field private mLoadingProjects:Z

.field private mLogin:Landroid/widget/Button;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProjectList:Landroid/widget/ListView;

.field public mProjects:Ljava/util/ArrayList;
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

.field private mProjectsReceiver:Lorg/inaturalist/android/BaseTab$ProjectsReceiver;

.field private mSearchText:Landroid/widget/EditText;

.field private mSettings:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lorg/inaturalist/android/BaseTab;->mProjects:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lorg/inaturalist/android/BaseTab;->mLoadingProjects:Z

    .line 176
    iput-boolean v0, p0, Lorg/inaturalist/android/BaseTab;->mAskedForLocationPermission:Z

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/BaseTab;)Lorg/inaturalist/android/BaseTab$ProjectsReceiver;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/inaturalist/android/BaseTab;->mProjectsReceiver:Lorg/inaturalist/android/BaseTab$ProjectsReceiver;

    return-object p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/BaseTab;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lorg/inaturalist/android/BaseTab;->loadProjectsIntoUI()V

    return-void
.end method

.method static synthetic access$300(Lorg/inaturalist/android/BaseTab;)Lorg/inaturalist/android/ProjectsAdapter;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/inaturalist/android/BaseTab;->mAdapter:Lorg/inaturalist/android/ProjectsAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lorg/inaturalist/android/BaseTab;)Landroid/widget/TextView;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/inaturalist/android/BaseTab;->mEmptyListLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/inaturalist/android/BaseTab;)Landroid/widget/Button;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/inaturalist/android/BaseTab;->mSettings:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$600(Lorg/inaturalist/android/BaseTab;)Landroid/widget/ProgressBar;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/inaturalist/android/BaseTab;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$700(Lorg/inaturalist/android/BaseTab;)Landroid/widget/ListView;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/inaturalist/android/BaseTab;->mProjectList:Landroid/widget/ListView;

    return-object p0
.end method

.method private getProjects()V
    .locals 5

    .line 405
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab;->mProjectsReceiver:Lorg/inaturalist/android/BaseTab$ProjectsReceiver;

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    .line 407
    new-instance v0, Lorg/inaturalist/android/BaseTab$ProjectsReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/BaseTab$ProjectsReceiver;-><init>(Lorg/inaturalist/android/BaseTab;Lorg/inaturalist/android/BaseTab$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/BaseTab;->mProjectsReceiver:Lorg/inaturalist/android/BaseTab$ProjectsReceiver;

    .line 408
    new-instance v0, Landroid/content/IntentFilter;

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getFilterResultName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "INAT"

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Registering "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getFilterResultName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v2, p0, Lorg/inaturalist/android/BaseTab;->mProjectsReceiver:Lorg/inaturalist/android/BaseTab$ProjectsReceiver;

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    const-string v0, "INAT"

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re-Calling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getActionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getActionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 414
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private isNetworkAvailable()Z
    .locals 2

    .line 163
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 164
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
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

.method private loadProjectsIntoUI()V
    .locals 7

    .line 127
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Lorg/inaturalist/android/ProjectsAdapter;

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v5, p0, Lorg/inaturalist/android/BaseTab;->mProjects:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getDefaultIcon()I

    move-result v6

    move-object v1, v0

    move-object v4, p0

    invoke-direct/range {v1 .. v6}, Lorg/inaturalist/android/ProjectsAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/inaturalist/android/ProjectsAdapter$OnLoading;Ljava/util/List;I)V

    iput-object v0, p0, Lorg/inaturalist/android/BaseTab;->mAdapter:Lorg/inaturalist/android/ProjectsAdapter;

    .line 129
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab;->mProjectList:Landroid/widget/ListView;

    iget-object v1, p0, Lorg/inaturalist/android/BaseTab;->mAdapter:Lorg/inaturalist/android/ProjectsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab;->mProjectList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab;->mProjects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 136
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab;->mEmptyListLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab;->mSearchText:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_1

    .line 139
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab;->mEmptyListLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab;->mProjectList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 142
    invoke-direct {p0}, Lorg/inaturalist/android/BaseTab;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab;->mEmptyListLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getNoInternetText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->requiresLocation()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/inaturalist/android/BaseTab;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->isLocationPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/inaturalist/android/BaseTab;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0, p0}, Lorg/inaturalist/android/INaturalistApp;->isLocationEnabled(Lorg/inaturalist/android/INaturalistApp$OnLocationStatus;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 147
    :cond_3
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab;->mEmptyListLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getLocationRequiredText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab;->mSettings:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 149
    :cond_4
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->requiresLogin()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/inaturalist/android/BaseTab;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->loggedIn()Z

    move-result v0

    if-nez v0, :cond_5

    .line 151
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab;->mEmptyListLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getUserLoginRequiredText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab;->mLogin:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 155
    :cond_5
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab;->mEmptyListLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getNoItemsFoundText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method private toggleLoading(ZI)V
    .locals 1

    .line 363
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    new-instance v0, Lorg/inaturalist/android/BaseTab$5;

    invoke-direct {v0, p0, p1}, Lorg/inaturalist/android/BaseTab$5;-><init>(Lorg/inaturalist/android/BaseTab;Z)V

    invoke-virtual {p2, v0}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected abstract getActionName()Ljava/lang/String;
.end method

.method protected getDefaultIcon()I
    .locals 1

    const v0, 0x7f08026b

    return v0
.end method

.method protected abstract getFilterResultName()Ljava/lang/String;
.end method

.method protected abstract getFilterResultParamName()Ljava/lang/String;
.end method

.method protected getLocationRequiredText()Ljava/lang/String;
    .locals 2

    .line 202
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getNoInternetText()Ljava/lang/String;
.end method

.method protected abstract getNoItemsFoundText()Ljava/lang/String;
.end method

.method protected getUserLoginRequiredText()Ljava/lang/String;
    .locals 2

    .line 211
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadProjects()V
    .locals 5

    .line 313
    iget-boolean v0, p0, Lorg/inaturalist/android/BaseTab;->mLoadingProjects:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, Lorg/inaturalist/android/BaseTab;->mLoadingProjects:Z

    .line 317
    iget-object v1, p0, Lorg/inaturalist/android/BaseTab;->mProjects:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 319
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->requiresLocation()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/inaturalist/android/BaseTab;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistApp;->isLocationPermissionGranted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 320
    iget-object v1, p0, Lorg/inaturalist/android/BaseTab;->mEmptyListLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getLocationRequiredText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v1, p0, Lorg/inaturalist/android/BaseTab;->mSettings:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 322
    iget-object v1, p0, Lorg/inaturalist/android/BaseTab;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 323
    iget-object v1, p0, Lorg/inaturalist/android/BaseTab;->mEmptyListLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    iget-object v1, p0, Lorg/inaturalist/android/BaseTab;->mProjectList:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 327
    iget-boolean v1, p0, Lorg/inaturalist/android/BaseTab;->mAskedForLocationPermission:Z

    if-nez v1, :cond_3

    .line 328
    iput-boolean v0, p0, Lorg/inaturalist/android/BaseTab;->mAskedForLocationPermission:Z

    .line 330
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lorg/inaturalist/android/BaseTab$4;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/BaseTab$4;-><init>(Lorg/inaturalist/android/BaseTab;)V

    invoke-virtual {v0, v1, v2}, Lorg/inaturalist/android/INaturalistApp;->requestLocationPermission(Landroid/app/Activity;Lorg/inaturalist/android/INaturalistApp$OnRequestPermissionResult;)V

    goto :goto_0

    :cond_1
    const-string v0, "INAT"

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getActionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getActionName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v0, "INAT"

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Previously loaded projects: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/inaturalist/android/BaseTab;->mProjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-direct {p0}, Lorg/inaturalist/android/BaseTab;->loadProjectsIntoUI()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 388
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x1000

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 392
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->refresh()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 234
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 235
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    const-string v0, "INAT"

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getActionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 240
    iput-object p1, p0, Lorg/inaturalist/android/BaseTab;->mProjects:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "INAT"

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/inaturalist/android/BaseTab;->mProjects:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/inaturalist/android/BaseTab;->mProjects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object p3

    check-cast p3, Lorg/inaturalist/android/INaturalistApp;

    iput-object p3, p0, Lorg/inaturalist/android/BaseTab;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 268
    new-instance p3, Lorg/inaturalist/android/ActivityHelper;

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, v0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lorg/inaturalist/android/BaseTab;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    const p3, 0x7f0d00c9

    const/4 v0, 0x0

    .line 270
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0327

    .line 272
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lorg/inaturalist/android/BaseTab;->mSettings:Landroid/widget/Button;

    .line 273
    iget-object p2, p0, Lorg/inaturalist/android/BaseTab;->mSettings:Landroid/widget/Button;

    new-instance p3, Lorg/inaturalist/android/BaseTab$1;

    invoke-direct {p3, p0}, Lorg/inaturalist/android/BaseTab$1;-><init>(Lorg/inaturalist/android/BaseTab;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a01e2

    .line 281
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lorg/inaturalist/android/BaseTab;->mLogin:Landroid/widget/Button;

    .line 282
    iget-object p2, p0, Lorg/inaturalist/android/BaseTab;->mLogin:Landroid/widget/Button;

    new-instance p3, Lorg/inaturalist/android/BaseTab$2;

    invoke-direct {p3, p0}, Lorg/inaturalist/android/BaseTab$2;-><init>(Lorg/inaturalist/android/BaseTab;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object p2, p0, Lorg/inaturalist/android/BaseTab;->mLogin:Landroid/widget/Button;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setVisibility(I)V

    const p2, 0x102000a

    .line 290
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lorg/inaturalist/android/BaseTab;->mProjectList:Landroid/widget/ListView;

    .line 291
    iget-object p2, p0, Lorg/inaturalist/android/BaseTab;->mProjectList:Landroid/widget/ListView;

    new-instance v0, Lorg/inaturalist/android/BaseTab$3;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/BaseTab$3;-><init>(Lorg/inaturalist/android/BaseTab;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p2, 0x7f0a02ad

    .line 301
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lorg/inaturalist/android/BaseTab;->mProgressBar:Landroid/widget/ProgressBar;

    const p2, 0x1020004

    .line 303
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lorg/inaturalist/android/BaseTab;->mEmptyListLabel:Landroid/widget/TextView;

    .line 304
    iget-object p2, p0, Lorg/inaturalist/android/BaseTab;->mEmptyListLabel:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    const p2, 0x7f0a030e

    .line 306
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lorg/inaturalist/android/BaseTab;->mSearchText:Landroid/widget/EditText;

    .line 307
    iget-object p2, p0, Lorg/inaturalist/android/BaseTab;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setVisibility(I)V

    return-object p1
.end method

.method protected abstract onItemSelected(Lorg/inaturalist/android/BetterJSONObject;I)V
.end method

.method public onLoading(Ljava/lang/Boolean;I)V
    .locals 0

    .line 419
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1, p2}, Lorg/inaturalist/android/BaseTab;->toggleLoading(ZI)V

    return-void
.end method

.method public onLocationStatus(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 427
    iget-object p1, p0, Lorg/inaturalist/android/BaseTab;->mEmptyListLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getLocationRequiredText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object p1, p0, Lorg/inaturalist/android/BaseTab;->mSettings:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 228
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 246
    new-instance v0, Lorg/inaturalist/android/BaseTab$ProjectsReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/BaseTab$ProjectsReceiver;-><init>(Lorg/inaturalist/android/BaseTab;Lorg/inaturalist/android/BaseTab$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/BaseTab;->mProjectsReceiver:Lorg/inaturalist/android/BaseTab$ProjectsReceiver;

    .line 247
    new-instance v0, Landroid/content/IntentFilter;

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getFilterResultName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "INAT"

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getFilterResultName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v1, p0, Lorg/inaturalist/android/BaseTab;->mProjectsReceiver:Lorg/inaturalist/android/BaseTab$ProjectsReceiver;

    invoke-virtual {p0}, Lorg/inaturalist/android/BaseTab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 251
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 222
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 223
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "INAT"

    const-string v1, "onStop"

    .line 381
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method

.method protected abstract recallServiceActionIfNoResults()Z
.end method

.method public refresh()V
    .locals 2

    .line 397
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab;->mEmptyListLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab;->mLogin:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 400
    invoke-direct {p0, v0, v1}, Lorg/inaturalist/android/BaseTab;->toggleLoading(ZI)V

    .line 401
    invoke-direct {p0}, Lorg/inaturalist/android/BaseTab;->getProjects()V

    return-void
.end method

.method protected requiresLocation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected requiresLogin()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateProject(ILorg/inaturalist/android/BetterJSONObject;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/inaturalist/android/BaseTab;->mAdapter:Lorg/inaturalist/android/ProjectsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/BaseTab;->mAdapter:Lorg/inaturalist/android/ProjectsAdapter;

    invoke-virtual {p2}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/inaturalist/android/ProjectsAdapter;->updateItem(ILorg/json/JSONObject;)V

    :cond_0
    return-void
.end method
