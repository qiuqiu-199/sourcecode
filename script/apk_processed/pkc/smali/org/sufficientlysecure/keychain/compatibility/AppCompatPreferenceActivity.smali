.class public abstract Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "AppCompatPreferenceActivity.java"


# instance fields
.field private mDelegate:Landroid/support/v7/app/AppCompatDelegate;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 38
    invoke-direct {v0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getDelegate()Landroid/support/v7/app/AppCompatDelegate;
    .locals 4

    move-object/16 v1, p0

    .line 122
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 123
    invoke-static {v1, v0}, Landroid/support/v7/app/AppCompatDelegate;->create(Landroid/app/Activity;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    .line 125
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;->mDelegate:Landroid/support/v7/app/AppCompatDelegate;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;--->getDelegate()Landroid/support/v7/app/AppCompatDelegate;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 84
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AppCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;--->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 4

    move-object/16 v1, p0

    .line 64
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;--->getMenuInflater()Landroid/view/MenuInflater;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSupportActionBar()Landroid/support/v7/app/ActionBar;
    .locals 4

    move-object/16 v1, p0

    .line 55
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;--->getSupportActionBar()Landroid/support/v7/app/ActionBar;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public invalidateOptionsMenu()V
    .locals 4

    move-object/16 v1, p0

    .line 118
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->invalidateOptionsMenu()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;--->invalidateOptionsMenu()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 101
    invoke-super {v1, v2}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;--->onConfigurationChanged(Landroid/content/res/Configuration;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AppCompatDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 43
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->installViewFactory()V

    .line 44
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AppCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-super {v1, v2}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onDestroy()V
    .locals 4

    move-object/16 v1, p0

    .line 113
    invoke-super {v1}, Landroid/preference/PreferenceActivity;->onDestroy()V

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;--->onDestroy()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->onDestroy()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 50
    invoke-super {v1, v2}, Landroid/preference/PreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;--->onPostCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AppCompatDelegate;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPostResume()V
    .locals 4

    move-object/16 v1, p0

    .line 89
    invoke-super {v1}, Landroid/preference/PreferenceActivity;->onPostResume()V

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;--->onPostResume()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->onPostResume()V

    return-void
.end method

.method protected onStop()V
    .locals 4

    move-object/16 v1, p0

    .line 107
    invoke-super {v1}, Landroid/preference/PreferenceActivity;->onStop()V

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;--->onStop()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegate;->onStop()V

    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 95
    invoke-super {v0, v1, v2}, Landroid/preference/PreferenceActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;--->onTitleChanged(Ljava/lang/CharSequence;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/app/AppCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentView(I)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 69
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;--->setContentView(I)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 74
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(Landroid/view/View;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;--->setContentView(Landroid/view/View;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 79
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AppCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;--->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 59
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AppCompatDelegate;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/compatibility/AppCompatPreferenceActivity;--->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
