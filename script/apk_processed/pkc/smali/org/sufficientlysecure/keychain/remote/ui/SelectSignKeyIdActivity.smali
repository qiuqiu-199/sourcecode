.class public Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;
.source "SelectSignKeyIdActivity.java"


# static fields
.field public static final EXTRA_DATA:Ljava/lang/String; = "data"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final EXTRA_PACKAGE_SIGNATURE:Ljava/lang/String; = "package_signature"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "user_id"

.field protected static final REQUEST_CODE_CREATE_KEY:I = 0x8884


# instance fields
.field private mData:Landroid/content/Intent;

.field private mPreferredUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 35
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;)Landroid/content/Intent;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;->mData:Landroid/content/Intent;

    return-object p0
.end method

.method private startListFragments(Landroid/os/Bundle;Ljava/lang/String;[BLandroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    move-object/16 p2, p5

    if-eqz v1, :cond_0

    return-void

    .line 96
    :cond_0
    invoke-static {v2, p0, p1, p2}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;->newInstance(Ljava/lang/String;[BLandroid/content/Intent;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdListFragment;

    move-result-object v1

    .line 99
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const p0, 0x7f090056

    .line 100
    invoke-virtual {v2, p0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 103
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;--->startListFragments(Landroid/os/Bundle;Ljava/lang/String;[BLandroid/content/Intent;Ljava/lang/String;)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected initLayout()V
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c002d

    .line 108
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;->setContentView(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;--->initLayout()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    if-eqz p0, :cond_0

    const-string v0, "operation_result"

    .line 114
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "operation_result"

    .line 115
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    .line 116
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    :cond_0
    const v0, 0x8884

    if-eq v2, v0, :cond_1

    .line 133
    invoke-super {v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    if-ne v3, v2, :cond_3

    if-eqz p0, :cond_2

    const-string v2, "operation_result"

    .line 122
    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "missing result!"

    const/4 v3, 0x0

    .line 127
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    .line 49
    invoke-super {v8, v9}, Lorg/sufficientlysecure/keychain/ui/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v10, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity$1;

    invoke-direct {v0, v8}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity$1;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;)V

    invoke-virtual {v8, v0}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;->setFullScreenDialogClose(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090058

    .line 61
    invoke-virtual {v8, v0}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    new-instance v1, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity$2;

    invoke-direct {v1, v8}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity$2;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "package_name"

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "package_signature"

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    const-string v1, "user_id"

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;->mPreferredUserId:Ljava/lang/String;

    const-string v1, "data"

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, v8, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;->mData:Landroid/content/Intent;

    if-nez v4, :cond_0

    const-string v9, "Intent data missing. Should be Uri of app!"

    const/4 v0, 0x0

    .line 78
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;->finish()V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v6, v8, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;->mData:Landroid/content/Intent;

    iget-object v7, v8, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;->mPreferredUserId:Ljava/lang/String;

    move-object v2, v8

    move-object v3, v9

    invoke-direct/range {v2 .. v7}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;->startListFragments(Landroid/os/Bundle;Ljava/lang/String;[BLandroid/content/Intent;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
