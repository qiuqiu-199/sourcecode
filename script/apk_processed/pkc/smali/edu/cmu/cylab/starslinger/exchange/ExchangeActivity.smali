.class public Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;
.super Ledu/cmu/cylab/starslinger/exchange/BaseActivity;
.source "ExchangeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncBadSigTask;,
        Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncNodesNoncesTask;,
        Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncGoodSigsTask;,
        Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncCommitsDataTask;,
        Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$AssignUserTask;
    }
.end annotation


# static fields
.field private static mDlgProg:Landroid/app/ProgressDialog;

.field private static mLaunched:Z

.field private static mProgressMsg:Ljava/lang/String;

.field private static mProt:Ledu/cmu/cylab/starslinger/exchange/ExchangeController;


# instance fields
.field private mCurrIntent:Landroid/content/Intent;

.field private mCurrView:I

.field private mHandler:Landroid/os/Handler;

.field private mHostName:Ljava/lang/String;

.field private mUpdateReceivedProg:Ljava/lang/Runnable;

.field private mUserData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mCurrIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mCurrView:I

    .line 85
    new-instance v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$1;

    invoke-direct {v0, p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$1;-><init>(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)V

    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mUpdateReceivedProg:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000()Ledu/cmu/cylab/starslinger/exchange/ExchangeController;
    .locals 1

    .line 61
    sget-object v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mProt:Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mProgressMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;Z)Z
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->handled(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showLowestUserIdPrompt(I)V

    return-void
.end method

.method static synthetic access$1200(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;[B[B[BI)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showVerify([B[B[BI)V

    return-void
.end method

.method static synthetic access$1400(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->doVerifyFinalMatchDone()V

    return-void
.end method

.method static synthetic access$1500(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showExitConfirm(I)V

    return-void
.end method

.method static synthetic access$1700(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showExit(I)V

    return-void
.end method

.method static synthetic access$1800(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)[B
    .locals 0

    .line 61
    iget-object p0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mUserData:[B

    return-object p0
.end method

.method static synthetic access$1900(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showGroupSizePicker()V

    return-void
.end method

.method static synthetic access$200(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showProgressUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 61
    iget-object p0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mUpdateReceivedProg:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showProgress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->endProgress()V

    return-void
.end method

.method private doVerifyFinalMatchDone()V
    .locals 5

    .line 332
    :try_start_0
    sget-object v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mProt:Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->decryptMemData()[[B

    move-result-object v0

    .line 334
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    .line 335
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 336
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MemberData"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    :cond_0
    invoke-direct {p0, v1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showExitImportOK(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 351
    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showError(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 349
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showError(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 347
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showError(Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v0

    .line 345
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showError(Ljava/lang/String;)V

    goto :goto_1

    :catch_4
    move-exception v0

    .line 343
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showError(Ljava/lang/String;)V

    goto :goto_1

    :catch_5
    move-exception v0

    .line 341
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showError(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private endProgress()V
    .locals 1

    .line 755
    sget-object v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mDlgProg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 756
    sget-object v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mDlgProg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 757
    sput-object v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mDlgProg:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method private handleGroupingActivity(ILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 323
    :pswitch_0
    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showExit(I)V

    goto :goto_1

    :pswitch_1
    :try_start_0
    const-string p1, "GroupId"

    .line 310
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 311
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "SafeSlinger-Exchange"

    .line 313
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    sget p1, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_InvalidCommonUserId:I

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showNote(I)V

    .line 315
    sget-object p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mProt:Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    invoke-virtual {p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->getUserId()I

    move-result p1

    invoke-direct {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showLowestUserIdPrompt(I)V

    const/4 p1, 0x0

    .line 318
    :goto_0
    sget-object p2, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mProt:Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    invoke-virtual {p2, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->setUserIdLink(I)V

    .line 319
    new-instance p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncCommitsDataTask;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncCommitsDataTask;-><init>(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$1;)V

    const/4 p2, 0x1

    .line 320
    new-array p2, p2, [Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    aput-object v1, p2, v0

    invoke-virtual {p1, p2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncCommitsDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleVerifyActivity(I)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 293
    :pswitch_0
    sget-object p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mProt:Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->setHashSelection(I)V

    .line 294
    new-instance p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncBadSigTask;

    invoke-direct {p1, p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncBadSigTask;-><init>(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$1;)V

    .line 295
    new-array v0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncBadSigTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 288
    :pswitch_1
    sget-object p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mProt:Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    invoke-virtual {p1, v2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->setHashSelection(I)V

    .line 289
    new-instance p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncBadSigTask;

    invoke-direct {p1, p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncBadSigTask;-><init>(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$1;)V

    .line 290
    new-array v0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncBadSigTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 283
    :pswitch_2
    sget-object p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mProt:Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    invoke-virtual {p1, v1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->setHashSelection(I)V

    .line 284
    new-instance p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncGoodSigsTask;

    invoke-direct {p1, p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncGoodSigsTask;-><init>(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$1;)V

    .line 285
    new-array v0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncGoodSigsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    const/16 p1, 0xd

    .line 298
    invoke-direct {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showExitConfirm(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handled(Z)Z
    .locals 1

    if-nez p1, :cond_0

    .line 496
    sget-object v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mProt:Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showError(Ljava/lang/String;)V

    :cond_0
    return p1
.end method

.method private setProgressCancelHandler()V
    .locals 4

    .line 473
    sget-object v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mDlgProg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 474
    sget-object v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mDlgProg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 475
    sget-object v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mDlgProg:Landroid/app/ProgressDialog;

    new-instance v1, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$2;

    invoke-direct {v1, p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$2;-><init>(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 489
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mHandler:Landroid/os/Handler;

    .line 490
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mUpdateReceivedProg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 491
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mUpdateReceivedProg:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showError(Ljava/lang/String;)V
    .locals 2

    .line 521
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ResIdMsg"

    .line 522
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 525
    :try_start_0
    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->removeDialog(I)V

    .line 526
    invoke-virtual {p0, p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showDialog(ILandroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 528
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private showExit(I)V
    .locals 1

    .line 640
    new-instance v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$8;

    invoke-direct {v0, p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$8;-><init>(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)V

    .line 652
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x12c

    .line 655
    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->setResultForParent(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/16 p1, 0x12d

    .line 657
    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->setResultForParent(I)V

    goto :goto_0

    .line 659
    :cond_1
    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->setResultForParent(I)V

    .line 661
    :goto_0
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->finish()V

    return-void
.end method

.method private showExitConfirm(I)V
    .locals 1

    .line 513
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->ask_QuitConfirmation:I

    invoke-virtual {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showQuestion(Ljava/lang/String;I)V

    return-void
.end method

.method private showExitImportOK(Landroid/content/Intent;)V
    .locals 1

    .line 621
    new-instance v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$7;

    invoke-direct {v0, p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$7;-><init>(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)V

    .line 633
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/16 v0, 0x12c

    .line 635
    invoke-virtual {p0, v0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->setResultForParent(ILandroid/content/Intent;)V

    .line 636
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->finish()V

    return-void
.end method

.method private showGroupSizePicker()V
    .locals 1

    .line 560
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 562
    :try_start_0
    invoke-virtual {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->removeDialog(I)V

    .line 563
    invoke-virtual {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showDialog(I)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 565
    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private showLowestUserIdPrompt(I)V
    .locals 2

    .line 552
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/cmu/cylab/starslinger/exchange/GroupingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mCurrIntent:Landroid/content/Intent;

    .line 553
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mCurrIntent:Landroid/content/Intent;

    const-string v1, "UserId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 554
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mCurrIntent:Landroid/content/Intent;

    const-string v0, "NumUsers"

    sget-object v1, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mProt:Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    invoke-virtual {v1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->getNumUsers()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x4c

    .line 555
    iput p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mCurrView:I

    .line 556
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mCurrIntent:Landroid/content/Intent;

    iget v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mCurrView:I

    invoke-virtual {p0, p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showProgress(Ljava/lang/String;)V
    .locals 2

    .line 706
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "ResIdMsg"

    .line 707
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x5

    .line 711
    :try_start_0
    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->removeDialog(I)V

    .line 712
    invoke-virtual {p0, p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showDialog(ILandroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 714
    :try_start_1
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 717
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private showProgressUpdate(Ljava/lang/String;)V
    .locals 2

    .line 744
    sget-object v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mDlgProg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 745
    sget-object v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mProt:Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    if-eqz v0, :cond_0

    .line 746
    sget-object v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mDlgProg:Landroid/app/ProgressDialog;

    sget-object v1, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mProt:Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    invoke-virtual {v1, p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->getStatusBanner(Landroid/app/Activity;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 749
    sget-object v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mDlgProg:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private showQuestion(Ljava/lang/String;I)V
    .locals 2

    .line 665
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "RequestCode"

    .line 666
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "ResIdMsg"

    .line 667
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x3

    .line 670
    :try_start_0
    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->removeDialog(I)V

    .line 671
    invoke-virtual {p0, p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showDialog(ILandroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 673
    invoke-static {p1}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private showVerify([B[B[BI)V
    .locals 2

    .line 502
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/cmu/cylab/starslinger/exchange/VerifyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mCurrIntent:Landroid/content/Intent;

    .line 503
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mCurrIntent:Landroid/content/Intent;

    const-string v1, "FlagHash"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 504
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mCurrIntent:Landroid/content/Intent;

    const-string v0, "DecoyHash1"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 505
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mCurrIntent:Landroid/content/Intent;

    const-string p2, "DecoyHash2"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 506
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mCurrIntent:Landroid/content/Intent;

    const-string p2, "RandomPosition"

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 507
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mCurrIntent:Landroid/content/Intent;

    const-string p2, "NumUsers"

    sget-object p3, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mProt:Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    invoke-virtual {p3}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->getNumUsers()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x4

    .line 508
    iput p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mCurrView:I

    .line 509
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mCurrIntent:Landroid/content/Intent;

    iget p2, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mCurrView:I

    invoke-virtual {p0, p1, p2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private xshowError(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/AlertDialog$Builder;
    .locals 1

    const-string v0, "ResIdMsg"

    .line 534
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "SafeSlinger-Exchange"

    .line 535
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 537
    sget p1, Ledu/cmu/cylab/starslinger/exchange/R$string;->lib_name:I

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 538
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 539
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 540
    new-instance p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$3;

    invoke-direct {p1, p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$3;-><init>(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)V

    const p2, 0x104000a

    invoke-virtual {v0, p2, p1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method private xshowGroupSizePicker(Landroid/app/Activity;)Landroid/app/AlertDialog$Builder;
    .locals 6

    const/16 v0, 0x9

    .line 574
    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 576
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 577
    sget v3, Ledu/cmu/cylab/starslinger/exchange/R$string;->choice_NumUsers:I

    invoke-virtual {p0, v3}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 580
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 581
    sget p1, Ledu/cmu/cylab/starslinger/exchange/R$string;->title_size:I

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 p1, -0x1

    .line 582
    new-instance v2, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$4;

    invoke-direct {v2, p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$4;-><init>(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)V

    invoke-virtual {v1, v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p1, 0x104000a

    .line 590
    new-instance v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$5;

    invoke-direct {v0, p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$5;-><init>(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)V

    invoke-virtual {v1, p1, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 609
    new-instance p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$6;

    invoke-direct {p1, p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$6;-><init>(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    return-object v1
.end method

.method private xshowProgress(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    const-string v0, "ResIdMsg"

    .line 723
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "SafeSlinger-Exchange"

    .line 724
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    sget-object v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mDlgProg:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 727
    sput-object v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mDlgProg:Landroid/app/ProgressDialog;

    .line 728
    sput-object v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mProgressMsg:Ljava/lang/String;

    .line 730
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mDlgProg:Landroid/app/ProgressDialog;

    .line 731
    sget-object p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mDlgProg:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 732
    sget-object p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mProt:Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    if-eqz p1, :cond_1

    .line 733
    sget-object p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mDlgProg:Landroid/app/ProgressDialog;

    sget-object v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mProt:Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    invoke-virtual {v0, p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->getStatusBanner(Landroid/app/Activity;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 735
    :cond_1
    sget-object p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mDlgProg:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 736
    sput-object p2, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mProgressMsg:Ljava/lang/String;

    .line 737
    sget-object p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mDlgProg:Landroid/app/ProgressDialog;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 738
    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->setProgressCancelHandler()V

    .line 740
    sget-object p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mDlgProg:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private xshowQuestion(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/AlertDialog$Builder;
    .locals 2

    const-string v0, "RequestCode"

    .line 679
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "ResIdMsg"

    .line 680
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "SafeSlinger-Exchange"

    .line 681
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 683
    sget p1, Ledu/cmu/cylab/starslinger/exchange/R$string;->lib_name:I

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 684
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 685
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 686
    new-instance p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$9;

    invoke-direct {p1, p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$9;-><init>(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;I)V

    const p2, 0x1040013

    invoke-virtual {v1, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 694
    new-instance p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$10;

    invoke-direct {p1, p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$10;-><init>(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;I)V

    const p2, 0x1040009

    invoke-virtual {v1, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-object v1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x4c

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 264
    :pswitch_1
    sget-object v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mProgressMsg:Ljava/lang/String;

    invoke-direct {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showProgress(Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :pswitch_2
    sget-object v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mProt:Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    invoke-virtual {v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->cancelProtocol()V

    .line 261
    invoke-direct {p0, v1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showExit(I)V

    goto :goto_0

    :pswitch_3
    packed-switch p2, :pswitch_data_2

    goto :goto_0

    .line 250
    :pswitch_4
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mCurrIntent:Landroid/content/Intent;

    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mCurrView:I

    invoke-virtual {p0, v0, v1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 245
    :pswitch_5
    new-instance v0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncBadSigTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncBadSigTask;-><init>(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$1;)V

    const/4 v2, 0x1

    .line 246
    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$SyncBadSigTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :pswitch_6
    packed-switch p2, :pswitch_data_3

    goto :goto_0

    .line 234
    :pswitch_7
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mCurrIntent:Landroid/content/Intent;

    iget v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mCurrView:I

    invoke-virtual {p0, v0, v1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 230
    :pswitch_8
    invoke-direct {p0, v1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showExit(I)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-direct {p0, p2, p3}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->handleGroupingActivity(ILandroid/content/Intent;)V

    goto :goto_0

    .line 272
    :cond_1
    invoke-direct {p0, v1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showExit(I)V

    goto :goto_0

    .line 224
    :cond_2
    invoke-direct {p0, p2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->handleVerifyActivity(I)V

    .line 277
    :goto_0
    invoke-super {p0, p1, p2, p3}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_6
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const v0, 0x1030119

    .line 131
    invoke-virtual {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->setTheme(I)V

    goto :goto_0

    :cond_0
    const v0, 0x103000c

    .line 133
    invoke-virtual {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->setTheme(I)V

    .line 135
    :goto_0
    invoke-super {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 138
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 139
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 140
    sget v1, Ledu/cmu/cylab/starslinger/exchange/R$string;->lib_name:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_1

    .line 142
    :cond_1
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->lib_name:I

    invoke-virtual {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->setTitle(I)V

    .line 146
    :goto_1
    :try_start_0
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$layout;->sse__splash:I

    invoke-virtual {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz p1, :cond_2

    move-object v0, p1

    goto :goto_2

    .line 153
    :cond_2
    invoke-virtual {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_3

    const-string v1, "UserData"

    .line 155
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mUserData:[B

    const-string v1, "HostName"

    .line 156
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mHostName:Ljava/lang/String;

    const-string v1, "NumUsers"

    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x1

    if-nez p1, :cond_9

    .line 164
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mUserData:[B

    if-eqz p1, :cond_8

    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mUserData:[B

    array-length p1, p1

    if-nez p1, :cond_4

    goto/16 :goto_4

    .line 168
    :cond_4
    iget-object p1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mHostName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Hostname "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mHostName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not well formed."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 174
    :cond_5
    :try_start_1
    new-instance p1, Ljava/net/URI;

    const-string v3, "http"

    iget-object v4, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mHostName:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    invoke-direct {p1, v3, v4, v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    new-instance p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    iget-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mHostName:Ljava/lang/String;

    invoke-direct {p1, p0, v3}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mProt:Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    if-nez v0, :cond_6

    .line 191
    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showGroupSizePicker()V

    goto/16 :goto_5

    :cond_6
    const/4 p1, 0x2

    if-lt v0, p1, :cond_7

    const/16 v3, 0xa

    if-gt v0, v3, :cond_7

    .line 196
    sget-object p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mProt:Ledu/cmu/cylab/starslinger/exchange/ExchangeController;

    iget-object v3, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mUserData:[B

    invoke-virtual {p1, v0, v3}, Ledu/cmu/cylab/starslinger/exchange/ExchangeController;->doGenerateCommitment(I[B)Z

    move-result p1

    invoke-direct {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->handled(Z)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 197
    new-instance p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$AssignUserTask;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$AssignUserTask;-><init>(Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$1;)V

    .line 198
    new-array v0, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    aput-object v3, v0, v2

    invoke-virtual {p1, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity$AssignUserTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_5

    .line 203
    :cond_7
    sget v0, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_MinUsersRequired:I

    invoke-virtual {p0, v0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    .line 204
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    .line 203
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showNote(Ljava/lang/String;)V

    .line 205
    invoke-direct {p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showGroupSizePicker()V

    goto :goto_5

    .line 180
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Hostname "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mHostName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not well formed."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 177
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Hostname "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mHostName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not well formed."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 165
    :cond_8
    :goto_4
    sget p1, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_NoDataToExchange:I

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showError(Ljava/lang/String;)V

    return-void

    .line 209
    :cond_9
    :goto_5
    sget-boolean p1, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mLaunched:Z

    if-nez p1, :cond_a

    .line 210
    sput-boolean v1, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mLaunched:Z

    :cond_a
    return-void

    .line 148
    :catch_2
    sget p1, Ledu/cmu/cylab/starslinger/exchange/R$string;->error_OutOfMemoryError:I

    invoke-virtual {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->showError(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 775
    invoke-super {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 771
    :pswitch_0
    invoke-direct {p0, p0, p2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->xshowProgress(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 769
    :pswitch_1
    invoke-direct {p0, p0}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->xshowGroupSizePicker(Landroid/app/Activity;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 767
    :pswitch_2
    invoke-direct {p0, p0, p2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->xshowQuestion(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 765
    :pswitch_3
    invoke-direct {p0, p0, p2}, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->xshowError(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .line 791
    invoke-super {p0}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->onDestroy()V

    .line 793
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mUpdateReceivedProg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 780
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mUserData:[B

    if-eqz v0, :cond_0

    const-string v0, "UserData"

    .line 781
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mUserData:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 783
    :cond_0
    iget-object v0, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mHostName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "HostName"

    .line 784
    iget-object v1, p0, Ledu/cmu/cylab/starslinger/exchange/ExchangeActivity;->mHostName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    :cond_1
    invoke-super {p0, p1}, Ledu/cmu/cylab/starslinger/exchange/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
