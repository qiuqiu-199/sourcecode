.class public Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "DeleteKeyDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;,
        Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;
    }
.end annotation


# static fields
.field public static final EXTRA_DELETE_MASTER_KEY_IDS:Ljava/lang/String; = "extra_delete_master_key_ids"

.field public static final EXTRA_HAS_SECRET:Ljava/lang/String; = "extra_has_secret"

.field public static final EXTRA_KEYSERVER:Ljava/lang/String; = "extra_keyserver"


# instance fields
.field private mDeleteOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper<",
            "Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;",
            "Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSecret:Z

.field private mMasterKeyIds:[J

.field private mRevokeOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper<",
            "Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;",
            "Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 53
    invoke-direct {v0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;)[J
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->mMasterKeyIds:[J

    return-object p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->returnResult(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    return-void
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->mHasSecret:Z

    return p0
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->startDeletionOperation()V

    return-void
.end method

.method static synthetic access$400(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->startRevocationOperation()V

    return-void
.end method

.method static synthetic access$500(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->showNormalDeleteDialog()V

    return-void
.end method

.method private getDeletionCallback()Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback<",
            "Lorg/sufficientlysecure/keychain/service/DeleteKeyringParcel;",
            "Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 168
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$2;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$2;-><init>(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;--->getDeletionCallback()Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getRevocationCallback()Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback<",
            "Lorg/sufficientlysecure/keychain/service/RevokeKeyringParcel;",
            "Lorg/sufficientlysecure/keychain/operations/results/RevokeResult;",
            ">;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 136
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$1;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$1;-><init>(Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;)V

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;--->getRevocationCallback()Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private returnResult(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 201
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "operation_result"

    .line 202
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v3, -0x1

    .line 203
    invoke-virtual {v2, v3, v0}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->setResult(ILandroid/content/Intent;)V

    .line 204
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->finish()V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;--->returnResult(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private showNormalDeleteDialog()V
    .locals 6

    move-object/16 v3, p0

    .line 113
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->mMasterKeyIds:[J

    iget-boolean v1, v3, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->mHasSecret:Z

    .line 114
    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;->newInstance([JZ)Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;

    move-result-object v0

    .line 116
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "deleteKeyDialog"

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$DeleteKeyDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;--->showNormalDeleteDialog()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private showRevokeDeleteDialog(Ljava/lang/String;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 122
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;->newInstance(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;

    move-result-object v3

    .line 123
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "deleteRevokeDialog"

    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity$RevokeDeleteDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;--->showRevokeDeleteDialog(Ljava/lang/String;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startDeletionOperation()V
    .locals 4

    move-object/16 v1, p0

    .line 131
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->mDeleteOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;--->startDeletionOperation()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startRevocationOperation()V
    .locals 6

    move-object/16 v3, p0

    .line 127
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->mRevokeOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel(Ljava/util/Date;Z)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;--->startRevocationOperation()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    .line 209
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->mDeleteOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v0, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    .line 210
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->mRevokeOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v0, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 66
    invoke-super {v4, v5}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v5, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    .line 69
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->getDeletionCallback()Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;

    move-result-object v0

    const v1, 0x7f110bfe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v5, v2, v4, v0, v1}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;-><init>(ILandroid/support/v4/app/FragmentActivity;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V

    iput-object v5, v4, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->mDeleteOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    .line 71
    new-instance v5, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    .line 72
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->getRevocationCallback()Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;

    move-result-object v0

    const v1, 0x7f110c24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    invoke-direct {v5, v3, v4, v0, v1}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;-><init>(ILandroid/support/v4/app/FragmentActivity;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V

    iput-object v5, v4, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->mRevokeOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    .line 74
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v0, "extra_delete_master_key_ids"

    invoke-virtual {v5, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v5

    iput-object v5, v4, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->mMasterKeyIds:[J

    .line 75
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v0, "extra_has_secret"

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->mHasSecret:Z

    .line 77
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->mMasterKeyIds:[J

    array-length v5, v5

    if-le v5, v2, :cond_0

    iget-boolean v5, v4, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->mHasSecret:Z

    if-eqz v5, :cond_0

    .line 79
    new-instance v5, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;

    invoke-direct {v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;-><init>()V

    .line 80
    sget-object v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;->MSG_DEL_ERROR_MULTI_SECRET:Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;

    invoke-virtual {v5, v0, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;->add(Lorg/sufficientlysecure/keychain/operations/results/OperationResult$LogType;I)V

    .line 81
    new-instance v0, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;

    iget-object v3, v4, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->mMasterKeyIds:[J

    array-length v3, v3

    invoke-direct {v0, v2, v5, v1, v3}, Lorg/sufficientlysecure/keychain/operations/results/DeleteResult;-><init>(ILorg/sufficientlysecure/keychain/operations/results/OperationResult$OperationLog;II)V

    invoke-direct {v4, v0}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->returnResult(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    return-void

    .line 86
    :cond_0
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->mMasterKeyIds:[J

    array-length v5, v5

    if-ne v5, v2, :cond_4

    iget-boolean v5, v4, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->mHasSecret:Z

    if-eqz v5, :cond_4

    .line 88
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v5

    .line 89
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->mMasterKeyIds:[J

    aget-wide v2, v0, v1

    invoke-virtual {v5, v2, v3}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getUnifiedKeyInfo(J)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    move-result-object v5

    if-nez v5, :cond_1

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Secret key to delete not found at DeleteKeyDialogActivity for "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->mMasterKeyIds:[J

    aget-wide v2, v0, v1

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v5, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->finish()V

    return-void

    .line 96
    :cond_1
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->name()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const v0, 0x7f110d45

    .line 98
    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_2
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_revoked()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 102
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->showNormalDeleteDialog()V

    goto :goto_0

    .line 104
    :cond_3
    invoke-direct {v4, v0}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->showRevokeDeleteDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_4
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;->showNormalDeleteDialog()V

    :goto_0
    return-void
.end method
