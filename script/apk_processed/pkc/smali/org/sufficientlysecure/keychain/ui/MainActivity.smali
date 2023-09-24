.class public Lorg/sufficientlysecure/keychain/ui/MainActivity;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;
.source "MainActivity.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/util/FabContainer;


# static fields
.field public static final EXTRA_INIT_FRAG:Ljava/lang/String; = "init_frag"

.field public static final EXTRA_SKIP_FIRST_TIME:Ljava/lang/String; = "skip_first_time"

.field static final ID_APPS:I = 0x3

.field static final ID_BACKUP:I = 0x4

.field static final ID_ENCRYPT_DECRYPT:I = 0x2

.field static final ID_HELP:I = 0x7

.field static final ID_KEYS:I = 0x1

.field static final ID_SETTINGS:I = 0x6

.field public static final ID_TRANSFER:I = 0x5


# instance fields
.field private analyticsManager:Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

.field public mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 50
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/MainActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/MainActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->onEnDecryptSelected()V

    return-void
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/MainActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->onAppsSelected()V

    return-void
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/MainActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->onBackupSelected()V

    return-void
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/ui/MainActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->onTransferSelected()V

    return-void
.end method

.method private onAppsSelected()V
    .locals 7

    move-object/16 v4, p0

    .line 230
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f110b9b

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 231
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/MainActivity;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    const-wide/16 v1, 0x3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mikepenz/materialdrawer/Drawer;->setSelection(JZ)Z

    .line 232
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/remote/ui/AppsListFragment;-><init>()V

    .line 233
    invoke-direct {v4, v0}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->setFragment(Landroid/support/v4/app/Fragment;)V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/MainActivity;--->onAppsSelected()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onBackupSelected()V
    .locals 7

    move-object/16 v4, p0

    .line 237
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f110b9c

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 238
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/MainActivity;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    const-wide/16 v1, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mikepenz/materialdrawer/Drawer;->setSelection(JZ)Z

    .line 239
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/BackupRestoreFragment;-><init>()V

    .line 240
    invoke-direct {v4, v0}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->setFragment(Landroid/support/v4/app/Fragment;)V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/MainActivity;--->onBackupSelected()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onEnDecryptSelected()V
    .locals 7

    move-object/16 v4, p0

    .line 223
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f110b9d

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 224
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/MainActivity;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    const-wide/16 v1, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mikepenz/materialdrawer/Drawer;->setSelection(JZ)Z

    .line 225
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/EncryptDecryptFragment;-><init>()V

    .line 226
    invoke-direct {v4, v0}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->setFragment(Landroid/support/v4/app/Fragment;)V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/MainActivity;--->onEnDecryptSelected()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onTransferSelected()V
    .locals 7

    move-object/16 v4, p0

    .line 244
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f110b9f

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 245
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/MainActivity;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    const-wide/16 v1, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mikepenz/materialdrawer/Drawer;->setSelection(JZ)Z

    .line 246
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 247
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferNotAvailableFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferNotAvailableFragment;-><init>()V

    .line 248
    invoke-direct {v4, v0}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->setFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 250
    :cond_0
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferFragment;-><init>()V

    .line 251
    invoke-direct {v4, v0}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->setFragment(Landroid/support/v4/app/Fragment;)V

    :goto_0
    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/MainActivity;--->onTransferSelected()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setFragment(Landroid/support/v4/app/Fragment;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 205
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 207
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/MainActivity;->analyticsManager:Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->trackFragmentImpression(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0901ed

    .line 210
    invoke-virtual {v0, v1, v5}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const/16 v5, 0x1003

    .line 211
    invoke-virtual {v0, v5}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 212
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/MainActivity;--->setFragment(Landroid/support/v4/app/Fragment;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public fabMoveUp(I)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 279
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0901ed

    .line 280
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 281
    instance-of v1, v0, Lorg/sufficientlysecure/keychain/util/FabContainer;

    if-eqz v1, :cond_0

    .line 282
    check-cast v0, Lorg/sufficientlysecure/keychain/util/FabContainer;

    invoke-interface {v0, v3}, Lorg/sufficientlysecure/keychain/util/FabContainer;->fabMoveUp(I)V

    :cond_0
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/MainActivity;--->fabMoveUp(I)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public fabRestorePosition()V
    .locals 5

    move-object/16 v2, p0

    .line 288
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0901ed

    .line 289
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 290
    instance-of v1, v0, Lorg/sufficientlysecure/keychain/util/FabContainer;

    if-eqz v1, :cond_0

    .line 291
    check-cast v0, Lorg/sufficientlysecure/keychain/util/FabContainer;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/util/FabContainer;->fabRestorePosition()V

    :cond_0
    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/MainActivity;--->fabRestorePosition()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onBackPressed()V
    .locals 5

    move-object/16 v2, p0

    .line 265
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/MainActivity;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/MainActivity;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/Drawer;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/MainActivity;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/Drawer;->closeDrawer()V

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0901ed

    .line 269
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;

    if-eqz v0, :cond_1

    .line 270
    invoke-super {v2}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onBackPressed()V

    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->onKeysSelected()V

    :goto_0
    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/MainActivity;--->onBackPressed()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    .line 70
    invoke-super {v8, v9}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v10, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/MainActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0c00a9

    .line 71
    invoke-virtual {v8, v0}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->setContentView(I)V

    const v0, 0x7f090326

    .line 73
    invoke-virtual {v8, v0}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, v8, Lorg/sufficientlysecure/keychain/ui/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 74
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/ui/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f110045

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 75
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/ui/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v8, v0}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 77
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/KeychainApplication;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/KeychainApplication;->getAnalyticsManager()Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

    move-result-object v0

    iput-object v0, v8, Lorg/sufficientlysecure/keychain/ui/MainActivity;->analyticsManager:Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

    .line 79
    new-instance v0, Lcom/mikepenz/materialdrawer/DrawerBuilder;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;-><init>()V

    .line 80
    invoke-virtual {v0, v8}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withActivity(Landroid/app/Activity;)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object v0

    const v1, 0x7f0c00aa

    .line 81
    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withHeader(I)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object v0

    iget-object v1, v8, Lorg/sufficientlysecure/keychain/ui/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 82
    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withToolbar(Landroid/support/v7/widget/Toolbar;)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    new-instance v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-direct {v2}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;-><init>()V

    const v3, 0x7f110b9e

    .line 84
    invoke-virtual {v2, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withName(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    sget-object v3, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$Icon;->cmd_key:Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$Icon;

    invoke-virtual {v2, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(Lcom/mikepenz/iconics/typeface/IIcon;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const-wide/16 v3, 0x1

    .line 85
    invoke-virtual {v2, v3, v4}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIdentifier(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withSelectable(Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    aput-object v2, v1, v3

    new-instance v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-direct {v2}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;-><init>()V

    const v4, 0x7f110b9d

    .line 86
    invoke-virtual {v2, v4}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withName(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    sget-object v4, Lcom/mikepenz/fontawesome_typeface_library/FontAwesome$Icon;->faw_lock:Lcom/mikepenz/fontawesome_typeface_library/FontAwesome$Icon;

    invoke-virtual {v2, v4}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(Lcom/mikepenz/iconics/typeface/IIcon;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const-wide/16 v4, 0x2

    .line 87
    invoke-virtual {v2, v4, v5}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIdentifier(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-virtual {v2, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withSelectable(Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-direct {v2}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;-><init>()V

    const v5, 0x7f110cd9

    .line 88
    invoke-virtual {v2, v5}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withName(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    sget-object v5, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$Icon;->cmd_apps:Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$Icon;

    invoke-virtual {v2, v5}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(Lcom/mikepenz/iconics/typeface/IIcon;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const-wide/16 v5, 0x3

    .line 89
    invoke-virtual {v2, v5, v6}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIdentifier(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-virtual {v2, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withSelectable(Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-direct {v2}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;-><init>()V

    const v5, 0x7f110b9c

    .line 90
    invoke-virtual {v2, v5}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withName(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    sget-object v5, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$Icon;->cmd_backup_restore:Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$Icon;

    invoke-virtual {v2, v5}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(Lcom/mikepenz/iconics/typeface/IIcon;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const-wide/16 v5, 0x4

    .line 91
    invoke-virtual {v2, v5, v6}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIdentifier(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-virtual {v2, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withSelectable(Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    const/4 v5, 0x3

    aput-object v2, v1, v5

    new-instance v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-direct {v2}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;-><init>()V

    const v5, 0x7f110b9f

    .line 92
    invoke-virtual {v2, v5}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withName(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const v5, 0x7f0800f0

    .line 93
    invoke-virtual {v2, v5}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const v5, 0x7f0600f6

    .line 94
    invoke-virtual {v2, v5}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIconColorRes(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    .line 95
    invoke-virtual {v2, v4}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIconTintingEnabled(Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const-wide/16 v5, 0x5

    .line 96
    invoke-virtual {v2, v5, v6}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIdentifier(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-virtual {v2, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withSelectable(Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    const/4 v5, 0x4

    aput-object v2, v1, v5

    new-instance v2, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem;

    invoke-direct {v2}, Lcom/mikepenz/materialdrawer/model/DividerDrawerItem;-><init>()V

    const/4 v5, 0x5

    aput-object v2, v1, v5

    new-instance v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-direct {v2}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;-><init>()V

    const v6, 0x7f110979

    .line 98
    invoke-virtual {v2, v6}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withName(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    sget-object v6, Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$Icon;->gmd_settings:Lcom/mikepenz/google_material_typeface_library/GoogleMaterial$Icon;

    invoke-virtual {v2, v6}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(Lcom/mikepenz/iconics/typeface/IIcon;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const-wide/16 v6, 0x6

    invoke-virtual {v2, v6, v7}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIdentifier(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-virtual {v2, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withSelectable(Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    const/4 v6, 0x6

    aput-object v2, v1, v6

    new-instance v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-direct {v2}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;-><init>()V

    const v6, 0x7f110972

    .line 99
    invoke-virtual {v2, v6}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withName(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    sget-object v6, Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$Icon;->cmd_help_circle:Lcom/mikepenz/community_material_typeface_library/CommunityMaterial$Icon;

    invoke-virtual {v2, v6}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIcon(Lcom/mikepenz/iconics/typeface/IIcon;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    const-wide/16 v6, 0x7

    invoke-virtual {v2, v6, v7}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withIdentifier(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;

    invoke-virtual {v2, v3}, Lcom/mikepenz/materialdrawer/model/PrimaryDrawerItem;->withSelectable(Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;

    const/4 v6, 0x7

    aput-object v2, v1, v6

    .line 83
    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->addDrawerItems([Lcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object v0

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/MainActivity$1;

    invoke-direct {v1, v8}, Lorg/sufficientlysecure/keychain/ui/MainActivity$1;-><init>(Lorg/sufficientlysecure/keychain/ui/MainActivity;)V

    .line 101
    invoke-virtual {v0, v1}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withOnDrawerItemClickListener(Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object v0

    const-wide/16 v1, -0x1

    .line 138
    invoke-virtual {v0, v1, v2}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withSelectedItem(J)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object v0

    .line 139
    invoke-virtual {v0, v9}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->withSavedInstance(Landroid/os/Bundle;)Lcom/mikepenz/materialdrawer/DrawerBuilder;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/mikepenz/materialdrawer/DrawerBuilder;->build()Lcom/mikepenz/materialdrawer/Drawer;

    move-result-object v0

    iput-object v0, v8, Lorg/sufficientlysecure/keychain/ui/MainActivity;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    .line 143
    invoke-static {v8}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v0

    .line 144
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "skip_first_time"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->isFirstTime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    new-instance v9, Landroid/content/Intent;

    const-class v0, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    invoke-direct {v9, v8, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "first_time"

    .line 146
    invoke-virtual {v9, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    invoke-virtual {v8, v9}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 148
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->finish()V

    return-void

    :cond_0
    if-eqz v9, :cond_1

    return-void

    .line 157
    :cond_1
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_2

    const-string v0, "operation_result"

    .line 159
    invoke-virtual {v9, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "operation_result"

    .line 160
    invoke-virtual {v9, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    .line 161
    invoke-virtual {v0, v8}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    .line 164
    :cond_2
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->onKeysSelected()V

    if-eqz v9, :cond_4

    const-string v0, "init_frag"

    .line 166
    invoke-virtual {v9, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "init_frag"

    const/4 v1, -0x1

    .line 168
    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v5, :cond_3

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 173
    :pswitch_0
    invoke-direct {v8}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->onAppsSelected()V

    goto :goto_0

    .line 170
    :pswitch_1
    invoke-direct {v8}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->onEnDecryptSelected()V

    goto :goto_0

    .line 176
    :cond_3
    invoke-direct {v8}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->onTransferSelected()V

    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeysSelected()V
    .locals 7

    move-object/16 v4, p0

    .line 216
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/MainActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f110045

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 217
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/MainActivity;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mikepenz/materialdrawer/Drawer;->setSelection(JZ)Z

    .line 218
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;-><init>()V

    .line 219
    invoke-direct {v4, v0}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->setFragment(Landroid/support/v4/app/Fragment;)V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/MainActivity;--->onKeysSelected()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 185
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/MainActivity;--->onNewIntent(Landroid/content/Intent;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->setIntent(Landroid/content/Intent;)V

    if-eqz v3, :cond_1

    const-string v0, "init_frag"

    .line 188
    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "init_frag"

    const/4 v1, -0x1

    .line 190
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v0, 0x5

    if-eq v3, v0, :cond_0

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 195
    :pswitch_0
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->onAppsSelected()V

    goto :goto_0

    .line 192
    :pswitch_1
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->onEnDecryptSelected()V

    goto :goto_0

    .line 198
    :cond_0
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/MainActivity;->onTransferSelected()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 258
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/MainActivity;->mDrawer:Lcom/mikepenz/materialdrawer/Drawer;

    invoke-virtual {v0, v2}, Lcom/mikepenz/materialdrawer/Drawer;->saveInstanceState(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 259
    invoke-super {v1, v2}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/MainActivity;--->onSaveInstanceState(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
