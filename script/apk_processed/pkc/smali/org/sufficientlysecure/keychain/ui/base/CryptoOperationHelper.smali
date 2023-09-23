.class public Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;
.super Ljava/lang/Object;
.source "CryptoOperationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$AbstractCallback;,
        Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        "S:",
        "Lorg/sufficientlysecure/keychain/operations/results/OperationResult;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final HELPER_ID_BITMASK:I = -0x100

.field private static final REQUEST_CODE_ENABLE_ORBOT:I = 0x3

.field private static final REQUEST_CODE_NFC:I = 0x2

.field private static final REQUEST_CODE_PASSPHRASE:I = 0x1

.field private static final REQUEST_CODE_RETRY_UPLOAD:I = 0x4


# instance fields
.field private mActivity:Landroid/support/v4/app/FragmentActivity;

.field private mCallback:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback<",
            "TT;TS;>;"
        }
    .end annotation
.end field

.field private mCancellable:Z

.field private mFragment:Landroid/support/v4/app/Fragment;

.field private final mHelperId:I

.field private mProgressMessageResource:Ljava/lang/Integer;

.field private mUseFragment:Z

.field private minimumOperationDelay:Ljava/lang/Long;

.field private operationStartTime:J


# direct methods
.method public constructor <init>(ILandroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/app/Fragment;",
            "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback<",
            "TT;TS;>;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    move-object/16 v1, p0

    move/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 125
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mCancellable:Z

    shl-int/lit8 v2, v2, 0x9

    add-int/lit16 v2, v2, 0x100

    .line 126
    iput v2, v1, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mHelperId:I

    .line 127
    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mFragment:Landroid/support/v4/app/Fragment;

    const/4 v2, 0x1

    .line 128
    iput-boolean v2, v1, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mUseFragment:Z

    .line 129
    iput-object p1, v1, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mProgressMessageResource:Ljava/lang/Integer;

    .line 130
    iput-object p0, v1, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mCallback:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;---><init>(ILandroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(ILandroid/support/v4/app/FragmentActivity;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/app/FragmentActivity;",
            "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback<",
            "TT;TS;>;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    move-object/16 v1, p0

    move/16 v2, p1

    move-object/16 v3, p2

    move-object/16 p0, p3

    move-object/16 p1, p4

    .line 114
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mCancellable:Z

    shl-int/lit8 v2, v2, 0x9

    add-int/lit16 v2, v2, 0x100

    .line 115
    iput v2, v1, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mHelperId:I

    .line 116
    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 117
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mUseFragment:Z

    .line 118
    iput-object p0, v1, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mCallback:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;

    .line 119
    iput-object p1, v1, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mProgressMessageResource:Ljava/lang/Integer;

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;---><init>(ILandroid/support/v4/app/FragmentActivity;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->onHandleResult(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    return-void
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;)Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;
    .locals 0

    .line 55
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mCallback:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;

    return-object p0
.end method

.method private initiateInputActivity(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 148
    iget-boolean v0, v3, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mUseFragment:Z

    if-eqz v0, :cond_0

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 150
    :goto_0
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$2;->$SwitchMap$org$sufficientlysecure$keychain$service$input$RequiredInputParcel$RequiredInputType:[I

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mType:Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel$RequiredInputType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 189
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unhandled pending result!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 182
    :pswitch_0
    new-instance v4, Landroid/content/Intent;

    const-class v1, Lorg/sufficientlysecure/keychain/ui/RetryUploadDialogActivity;

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "extra_crypto_input"

    .line 183
    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v5, 0x4

    .line 184
    invoke-virtual {v3, v4, v5}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 175
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    const-class v1, Lorg/sufficientlysecure/keychain/ui/OrbotRequiredDialogActivity;

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "extra_crypto_input"

    .line 176
    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v5, 0x3

    .line 177
    invoke-virtual {v3, v4, v5}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 167
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "required_input"

    .line 168
    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "crypto_input"

    .line 169
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v4, 0x1

    .line 170
    invoke-virtual {v3, v1, v4}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 155
    :pswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "required_input"

    .line 156
    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "crypto_input"

    .line 157
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v4, 0x2

    .line 158
    invoke-virtual {v3, v1, v4}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;--->initiateInputActivity(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onHandleResult(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    const-string v0, "Handling result in OperationHelper success: %s"

    const/4 v1, 0x1

    .line 329
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v7}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->success()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    instance-of v0, v7, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;

    if-eqz v0, :cond_0

    .line 332
    move-object v0, v7

    check-cast v0, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;

    .line 333
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->isPending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->getRequiredInputParcel()Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v7

    .line 335
    iget-object v0, v0, Lorg/sufficientlysecure/keychain/operations/results/InputPendingResult;->mCryptoInputParcel:Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    invoke-direct {v6, v7, v0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->initiateInputActivity(Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    return-void

    .line 340
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, v6, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->operationStartTime:J

    sub-long v4, v0, v2

    .line 341
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->minimumOperationDelay:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->minimumOperationDelay:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v2, v4, v0

    if-lez v2, :cond_1

    goto :goto_0

    .line 346
    :cond_1
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->minimumOperationDelay:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v2, v0, v4

    .line 347
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$$Lambda$0;

    invoke-direct {v1, v6, v7}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 342
    :cond_2
    :goto_0
    invoke-direct {v6, v7}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->returnResultToCallback(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    return-void

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;--->onHandleResult(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private returnResultToCallback(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 352
    :try_start_0
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->success()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mCallback:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;

    invoke-interface {v0, v4}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    goto :goto_0

    .line 357
    :cond_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mCallback:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;

    invoke-interface {v0, v4}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 360
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad return class ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "), this is a programming error!"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;--->returnResultToCallback(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public cryptoOperation()V
    .locals 5

    move-object/16 v2, p0

    .line 323
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v2, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->operationStartTime:J

    .line 324
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;->createCryptoInputParcel(Ljava/util/Date;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;--->cryptoOperation()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public cryptoOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 267
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mCallback:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;->createOperationInput()Landroid/os/Parcelable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 272
    :cond_0
    iget-boolean v1, v6, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mUseFragment:Z

    if-eqz v1, :cond_1

    iget-object v1, v6, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mActivity:Landroid/support/v4/app/FragmentActivity;

    :goto_0
    if-nez v1, :cond_2

    .line 274
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 278
    :cond_2
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mProgressMessageResource:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 279
    new-instance v2, Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;

    invoke-direct {v2, v1}, Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_1

    :cond_3
    move-object v2, v3

    .line 284
    :goto_1
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->create(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;

    move-result-object v4

    .line 285
    new-instance v5, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$1;

    invoke-direct {v5, v6, v2, v1}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$1;-><init>(Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;Landroid/support/v4/app/FragmentActivity;)V

    .line 314
    invoke-virtual {v4, v0, v7, v5}, Lorg/sufficientlysecure/keychain/service/KeychainServiceTask;->startOperationInBackground(Landroid/os/Parcelable;Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;Lorg/sufficientlysecure/keychain/service/KeychainServiceTask$OperationCallback;)Landroid/support/v4/os/CancellationSignal;

    move-result-object v7

    if-eqz v2, :cond_5

    .line 317
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mProgressMessageResource:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    iget-boolean v4, v6, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mCancellable:Z

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    move-object v7, v3

    :goto_2
    invoke-virtual {v2, v0, v1, v7}, Lorg/sufficientlysecure/keychain/service/ProgressDialogManager;->showProgressDialog(Ljava/lang/String;ILandroid/support/v4/os/CancellationSignal;)V

    :cond_5
    return-void

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;--->cryptoOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    move/16 v5, p2

    move-object/16 p0, p3

    const-string v0, "received activity result in OperationHelper"

    const/4 v1, 0x0

    .line 208
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    and-int/lit16 v0, v4, -0x100

    .line 210
    iget v2, v3, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mHelperId:I

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const-string v0, "handling activity result in OperationHelper"

    .line 214
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    iget v0, v3, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mHelperId:I

    xor-int/2addr v4, v0

    const/4 v0, 0x1

    if-nez v5, :cond_1

    .line 219
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mCallback:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;

    invoke-interface {v4}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;->onCryptoOperationCancelled()V

    return v0

    :cond_1
    const/4 v1, -0x1

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-ne v5, v1, :cond_2

    const-string v4, "result_crypto_input"

    .line 255
    invoke-virtual {p0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    .line 257
    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    goto :goto_0

    :pswitch_1
    if-ne v5, v1, :cond_2

    if-eqz p0, :cond_2

    const-string v4, "result_crypto_input"

    .line 245
    invoke-virtual {p0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    .line 247
    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    goto :goto_0

    :pswitch_2
    if-ne v5, v1, :cond_2

    if-eqz p0, :cond_2

    const-string v4, "result_data"

    .line 236
    invoke-virtual {p0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    .line 237
    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    goto :goto_0

    :pswitch_3
    if-ne v5, v1, :cond_2

    if-eqz p0, :cond_2

    const-string v4, "result_data"

    .line 227
    invoke-virtual {p0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;

    .line 228
    invoke-virtual {v3, v4}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation(Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;)V

    :cond_2
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;--->handleActivityResult(IILandroid/content/Intent;)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$onHandleResult$0$CryptoOperationHelper(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->returnResultToCallback(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    return-void
.end method

.method public setOperationMinimumDelay(Ljava/lang/Long;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 138
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->minimumOperationDelay:Ljava/lang/Long;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;--->setOperationMinimumDelay(Ljava/lang/Long;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setProgressCancellable(Z)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 142
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mCancellable:Z

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;--->setProgressCancellable(Z)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setProgressMessageResource(I)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mProgressMessageResource:Ljava/lang/Integer;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;--->setProgressMessageResource(I)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected startActivityForResult(Landroid/content/Intent;I)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 195
    iget-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mUseFragment:Z

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mFragment:Landroid/support/v4/app/Fragment;

    iget v1, v2, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mHelperId:I

    add-int/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget v1, v2, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->mHelperId:I

    add-int/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;--->startActivityForResult(Landroid/content/Intent;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
