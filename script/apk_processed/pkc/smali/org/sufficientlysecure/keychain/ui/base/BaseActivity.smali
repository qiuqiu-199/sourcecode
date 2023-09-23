.class public abstract Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "BaseActivity.java"


# instance fields
.field protected mStatusBar:Landroid/view/View;

.field protected mThemeChanger:Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;

.field protected mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 40
    invoke-direct {v0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected initLayout()V
    .locals 3

    move-object/16 v0, p0

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;--->initLayout()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected initTheme()V
    .locals 6

    move-object/16 v3, p0

    .line 93
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;-><init>(Landroid/app/Activity;)V

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->mThemeChanger:Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;

    .line 94
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->mThemeChanger:Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;

    const v1, 0x7f12017a

    const v2, 0x7f120177

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->setThemes(II)V

    .line 95
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->mThemeChanger:Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->changeTheme()Z

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;--->initTheme()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected initToolbar()V
    .locals 5

    move-object/16 v2, p0

    const v0, 0x7f090326

    .line 81
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 82
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 84
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const v0, 0x7f0902e6

    .line 86
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->mStatusBar:Landroid/view/View;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;--->initToolbar()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 47
    invoke-super {v0, v1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->initTheme()V

    .line 49
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->initLayout()V

    .line 50
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->initToolbar()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 68
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 73
    invoke-super {v2, v3}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 70
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onBackPressed()V

    const/4 v3, 0x1

    return v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onResume()V
    .locals 5

    move-object/16 v2, p0

    .line 55
    invoke-super {v2}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;--->onResume()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->mThemeChanger:Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->mThemeChanger:Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/util/ThemeChanger;->changeTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 59
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->finish()V

    const/4 v1, 0x0

    .line 60
    invoke-virtual {v2, v1, v1}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->overridePendingTransition(II)V

    .line 61
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 62
    invoke-virtual {v2, v1, v1}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method protected setActionBarIcon(I)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 99
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;--->setActionBarIcon(I)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected setFullScreenDialogClose(IZ)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    .line 145
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity$1;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity$1;-><init>(Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;I)V

    invoke-virtual {v1, v0, v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->setFullScreenDialogClose(Landroid/view/View$OnClickListener;Z)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;--->setFullScreenDialogClose(IZ)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected setFullScreenDialogClose(Landroid/view/View$OnClickListener;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    const/4 v0, 0x1

    .line 140
    invoke-virtual {v1, v2, v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->setFullScreenDialogClose(Landroid/view/View$OnClickListener;Z)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;--->setFullScreenDialogClose(Landroid/view/View$OnClickListener;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected setFullScreenDialogClose(Landroid/view/View$OnClickListener;Z)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    if-eqz v3, :cond_0

    const v3, 0x7f08009e

    .line 131
    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->setActionBarIcon(I)V

    goto :goto_0

    :cond_0
    const v3, 0x7f08009c

    .line 133
    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->setActionBarIcon(I)V

    .line 135
    :goto_0
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 136
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;--->setFullScreenDialogClose(Landroid/view/View$OnClickListener;Z)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setFullScreenDialogDoneClose(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 7

    move-object/16 v4, p0

    move/16 v5, p1

    move-object/16 v6, p2

    move-object/16 p0, p3

    const v0, 0x7f08009e

    .line 108
    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->setActionBarIcon(I)V

    .line 111
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c007a

    const/4 v2, 0x0

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09017e

    .line 115
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 116
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f09017d

    .line 117
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 121
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 122
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v5

    new-instance v6, Landroid/support/v7/app/ActionBar$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    const v3, 0x800005

    invoke-direct {v6, v1, v2, v3}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v0, v6}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    .line 125
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v5, p0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;--->setFullScreenDialogDoneClose(ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected setFullScreenDialogTwoButtons(IILandroid/view/View$OnClickListener;IILandroid/view/View$OnClickListener;)V
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    move/16 v5, p2

    move-object/16 p0, p3

    move/16 p1, p4

    move/16 p2, p5

    move-object/16 p3, p6

    .line 163
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 164
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0c007b

    const/4 v2, 0x0

    .line 165
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090031

    .line 168
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 169
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    const/4 v4, 0x0

    .line 170
    invoke-virtual {v1, v5, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v5, 0x7f090030

    .line 171
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f09002f

    .line 173
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 174
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(I)V

    .line 175
    invoke-virtual {v5, p2, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const v5, 0x7f09002e

    .line 176
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 181
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 182
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 183
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 184
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v4

    new-instance v5, Landroid/support/v7/app/ActionBar$LayoutParams;

    const/4 p0, -0x1

    invoke-direct {v5, p0, p0}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v0, v5}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    return-void

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;--->setFullScreenDialogTwoButtons(IILandroid/view/View$OnClickListener;IILandroid/view/View$OnClickListener;)V"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
