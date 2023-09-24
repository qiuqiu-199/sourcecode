.class public Lorg/inaturalist/android/ProfilePhotoViewer;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ProfilePhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/ProfilePhotoViewer$ProfilePhotoPagerAdapter;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "ProfilePhotoViewer"

.field public static final USER:Ljava/lang/String; = "observation"


# instance fields
.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field public mUser:Lorg/json/JSONObject;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$JSONObjectBundler;
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

    .line 36
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 63
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lorg/inaturalist/android/ProfilePhotoViewer;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    .line 67
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 68
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v1, 0x7f08014e

    .line 69
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    .line 71
    invoke-virtual {p0}, Lorg/inaturalist/android/ProfilePhotoViewer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/INaturalistApp;

    iput-object v1, p0, Lorg/inaturalist/android/ProfilePhotoViewer;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const v1, 0x7f0d00be

    .line 72
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/ProfilePhotoViewer;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Lorg/inaturalist/android/ProfilePhotoViewer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez p1, :cond_0

    .line 78
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    const-string v2, "observation"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/inaturalist/android/ProfilePhotoViewer;->mUser:Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    .line 81
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/inaturalist/android/ProfilePhotoViewer;->mUser:Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 83
    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/inaturalist/android/ProfilePhotoViewer;->mUser:Lorg/json/JSONObject;

    const-string v1, "login"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 89
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    const p1, 0x7f0a03d4

    .line 92
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ProfilePhotoViewer;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Luk/co/senab/photoview/HackyViewPager;

    iput-object p1, p0, Lorg/inaturalist/android/ProfilePhotoViewer;->mViewPager:Luk/co/senab/photoview/HackyViewPager;

    .line 93
    iget-object p1, p0, Lorg/inaturalist/android/ProfilePhotoViewer;->mUser:Lorg/json/JSONObject;

    if-eqz p1, :cond_3

    .line 94
    iget-object p1, p0, Lorg/inaturalist/android/ProfilePhotoViewer;->mViewPager:Luk/co/senab/photoview/HackyViewPager;

    new-instance v0, Lorg/inaturalist/android/ProfilePhotoViewer$ProfilePhotoPagerAdapter;

    iget-object v1, p0, Lorg/inaturalist/android/ProfilePhotoViewer;->mUser:Lorg/json/JSONObject;

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/ProfilePhotoViewer$ProfilePhotoPagerAdapter;-><init>(Lorg/inaturalist/android/ProfilePhotoViewer;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0}, Luk/co/senab/photoview/HackyViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    :cond_3
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 177
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 182
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 179
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/ProfilePhotoViewer;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 101
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 48
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 49
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 56
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 57
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method
