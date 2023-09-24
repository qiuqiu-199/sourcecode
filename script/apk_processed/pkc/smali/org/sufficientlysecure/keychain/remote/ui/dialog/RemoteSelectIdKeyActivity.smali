.class public Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RemoteSelectIdKeyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;,
        Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;
    }
.end annotation


# static fields
.field public static final EXTRA_CURRENT_MASTER_KEY_ID:Ljava/lang/String; = "current_master_key_id"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final EXTRA_PACKAGE_SIGNATURE:Ljava/lang/String; = "package_signature"

.field public static final EXTRA_SHOW_AUTOCRYPT_HINT:Ljava/lang/String; = "show_autocrypt_hint"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "user_id"


# instance fields
.field private currentlyImportingParcel:Landroid/os/Parcelable;

.field private importOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper<",
            "Landroid/os/Parcelable;",
            "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;",
            ">;"
        }
    .end annotation
.end field

.field private presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;


# direct methods
.method public constructor <init>()V
    .locals 7

    move-object/16 v4, p0

    .line 79
    invoke-direct {v4}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 455
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$1;

    invoke-direct {v1, v4}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$1;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v4, v1, v3}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;-><init>(ILandroid/support/v4/app/FragmentActivity;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;->importOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;---><init>()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;)Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;

    return-object p0
.end method

.method static synthetic access$500(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;->launchImportOperation(Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;)V

    return-void
.end method

.method static synthetic access$600(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;)Landroid/os/Parcelable;
    .locals 0

    .line 79
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;->currentlyImportingParcel:Landroid/os/Parcelable;

    return-object p0
.end method

.method static synthetic access$602(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;->currentlyImportingParcel:Landroid/os/Parcelable;

    return-object p1
.end method

.method private launchImportOperation(Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 437
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;->currentlyImportingParcel:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    const-string v2, "Starting import while already running? Inconsistent state!"

    const/4 v0, 0x0

    .line 438
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 442
    :cond_0
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;->currentlyImportingParcel:Landroid/os/Parcelable;

    .line 443
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;->importOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;--->launchImportOperation(Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    .line 448
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;->importOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v0, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 452
    :cond_0
    invoke-super {v1, v2, v3, p0}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 93
    invoke-super {v4, v5}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;-><init>(Landroid/content/Context;Landroid/arch/lifecycle/LifecycleOwner;)V

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;

    .line 97
    invoke-static {v4}, Lcom/mikepenz/materialdrawer/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;)V

    .line 99
    invoke-static {v4}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;

    .line 101
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "user_id"

    .line 102
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;->rawUserId:Ljava/lang/String;

    const-string v2, "package_name"

    .line 103
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;->packageName:Ljava/lang/String;

    const-string v2, "package_signature"

    .line 104
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;->packageSignature:[B

    const-string v2, "show_autocrypt_hint"

    const/4 v3, 0x0

    .line 105
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;->clientHasAutocryptSetupMsg:Z

    if-nez v5, :cond_0

    .line 108
    new-instance v5, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;

    invoke-direct {v5}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;-><init>()V

    .line 109
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "requestKeyDialog"

    invoke-virtual {v5, v0, v1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdentityKeyDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 5

    move-object/16 v2, p0

    .line 115
    invoke-super {v2}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;--->onStart()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {v2}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;

    .line 118
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity;->presenter:Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdentityKeyPresenter;->setupFromViewModel(Lorg/sufficientlysecure/keychain/remote/ui/dialog/RemoteSelectIdKeyActivity$RemoteSelectIdViewModel;)V

    return-void
.end method
