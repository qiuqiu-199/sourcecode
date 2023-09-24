.class public Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;
.source "AppSettingsActivity.java"


# static fields
.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"


# instance fields
.field private apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

.field mApiApp:Lorg/sufficientlysecure/keychain/model/ApiApp;

.field private mAppIconView:Landroid/widget/ImageView;

.field private mAppNameView:Landroid/widget/TextView;

.field private packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 46
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private cancel()V
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    .line 103
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->setResult(I)V

    .line 104
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->finish()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;--->cancel()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private loadData(Landroid/os/Bundle;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 173
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getApiApp(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/model/ApiApp;

    move-result-object v0

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->mApiApp:Lorg/sufficientlysecure/keychain/model/ApiApp;

    .line 178
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 180
    :try_start_0
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->mApiApp:Lorg/sufficientlysecure/keychain/model/ApiApp;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/ApiApp;->package_name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 183
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->mApiApp:Lorg/sufficientlysecure/keychain/model/ApiApp;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/ApiApp;->package_name()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    .line 188
    :goto_0
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->mAppNameView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->mAppIconView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->startListFragments(Landroid/os/Bundle;)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;--->loadData(Landroid/os/Bundle;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private revokeAccess()V
    .locals 5

    move-object/16 v2, p0

    .line 214
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->deleteApiApp(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->finish()V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;--->revokeAccess()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private save()V
    .locals 6

    move-object/16 v3, p0

    .line 85
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Could not retrieve fragmentmanager for saving!"

    .line 87
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const v2, 0x7f090048

    .line 91
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;

    if-nez v0, :cond_1

    const-string v0, "Could not retrieve fragment for saving!"

    .line 93
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 97
    :cond_1
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;->saveAllowedKeys()V

    const/4 v0, -0x1

    .line 98
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->setResult(I)V

    .line 99
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->finish()V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;--->save()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private showAdvancedInfo()V
    .locals 6

    move-object/16 v3, p0

    :try_start_0
    const-string v0, "SHA-256"

    .line 142
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 143
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->mApiApp:Lorg/sufficientlysecure/keychain/model/ApiApp;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/ApiApp;->package_signature()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 144
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 145
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Should not happen!"

    const/4 v2, 0x0

    .line 147
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 150
    :goto_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->mApiApp:Lorg/sufficientlysecure/keychain/model/ApiApp;

    .line 151
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/ApiApp;->package_name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/dialog/AdvancedAppSettingsDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/dialog/AdvancedAppSettingsDialogFragment;

    move-result-object v0

    .line 153
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "advancedDialog"

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/AdvancedAppSettingsDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;--->showAdvancedInfo()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startApp()V
    .locals 6

    move-object/16 v3, p0

    .line 158
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 160
    :try_start_0
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->mApiApp:Lorg/sufficientlysecure/keychain/model/ApiApp;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/ApiApp;->package_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    throw v0

    :cond_0
    const/high16 v1, 0x10200000

    .line 164
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    .line 165
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "startApp"

    const/4 v2, 0x0

    .line 168
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;--->startApp()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startListFragments(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    if-eqz v3, :cond_0

    return-void

    .line 203
    :cond_0
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;->newInstance(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsAllowedKeysListFragment;

    move-result-object v3

    .line 206
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f090048

    .line 207
    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 208
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 210
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;--->startListFragments(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected initLayout()V
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c0021

    .line 109
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->setContentView(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;--->initLayout()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$onCreate$0$AppSettingsActivity(Landroid/view/View;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->startApp()V

    return-void
.end method

.method final synthetic lambda$onCreate$1$AppSettingsActivity(Landroid/view/View;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->cancel()V

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

    .line 221
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "operation_result"

    .line 222
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    .line 223
    invoke-virtual {v2, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    goto :goto_0

    .line 225
    :cond_0
    invoke-super {v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 61
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f09004b

    .line 63
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->mAppNameView:Landroid/widget/TextView;

    const v0, 0x7f09004a

    .line 64
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->mAppIconView:Landroid/widget/ImageView;

    const v0, 0x7f090161

    .line 66
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity$$Lambda$0;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity$$Lambda$1;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;)V

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->setFullScreenDialogClose(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 69
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "package_name"

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->packageName:Ljava/lang/String;

    .line 73
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v3, "Required extra package_name missing!"

    const/4 v0, 0x0

    .line 74
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->finish()V

    return-void

    .line 79
    :cond_0
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/daos/ApiAppDao;->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->apiAppDao:Lorg/sufficientlysecure/keychain/daos/ApiAppDao;

    .line 81
    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->loadData(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 114
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;--->onCreateOptionsMenu(Landroid/view/Menu;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0002

    invoke-virtual {v0, v1, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v3, 0x1

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 121
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 135
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 127
    :pswitch_0
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->revokeAccess()V

    return v1

    .line 131
    :pswitch_1
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->showAdvancedInfo()V

    return v1

    .line 123
    :pswitch_2
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;->save()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7f090221
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/AppSettingsActivity;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
