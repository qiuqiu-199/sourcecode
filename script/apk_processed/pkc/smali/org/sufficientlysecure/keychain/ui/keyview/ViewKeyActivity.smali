.class public Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;
.super Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;
.source "ViewKeyActivity.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$RequestType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;",
        "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback<",
        "Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;",
        "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final EXTRA_DISPLAY_RESULT:Ljava/lang/String; = "display_result"

.field public static final EXTRA_LINKED_TRANSITION:Ljava/lang/String; = "linked_transition"

.field public static final EXTRA_MASTER_KEY_ID:Ljava/lang/String; = "master_key_id"

.field static final REQUEST_BACKUP:I = 0x2

.field static final REQUEST_CERTIFY:I = 0x3

.field static final REQUEST_DELETE:I = 0x4

.field static final REQUEST_QR_FINGERPRINT:I = 0x1


# instance fields
.field private actionEncryptFile:Landroid/widget/ImageButton;

.field private actionEncryptText:Landroid/widget/ImageButton;

.field private appBarLayout:Landroid/support/design/widget/AppBarLayout;

.field private changeUnlockParcel:Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

.field private collapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

.field private editOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper<",
            "Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;",
            "Lorg/sufficientlysecure/keychain/operations/results/EditKeyResult;",
            ">;"
        }
    .end annotation
.end field

.field private floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

.field private importOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper<",
            "Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;",
            "Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;",
            ">;"
        }
    .end annotation
.end field

.field private isRefreshing:Z

.field keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

.field mPreviousColor:I

.field private photoLayout:Landroid/widget/FrameLayout;

.field private photoView:Landroid/widget/ImageView;

.field private qrCodeLayout:Landroid/support/v7/widget/CardView;

.field private qrCodeLoaded:[B

.field private qrCodeView:Landroid/widget/ImageView;

.field private refreshItem:Landroid/view/MenuItem;

.field private refreshView:Landroid/view/View;

.field private rotate:Landroid/view/animation/Animation;

.field private rotateSpin:Landroid/view/animation/Animation;

.field private statusImage:Landroid/widget/ImageView;

.field private statusText:Landroid/widget/TextView;

.field private unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 112
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;-><init>()V

    const/4 v0, 0x0

    .line 659
    iput v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->mPreviousColor:I

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)Landroid/view/MenuItem;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->refreshItem:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)Z
    .locals 0

    .line 112
    iget-boolean p0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->isRefreshing:Z

    return p0
.end method

.method static synthetic access$1000(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->photoLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)Landroid/view/animation/Animation;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->rotateSpin:Landroid/view/animation/Animation;

    return-object p0
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->changeUnlockParcel:Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    return-object p0
.end method

.method static synthetic access$302(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;)Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;
    .locals 0

    .line 112
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->changeUnlockParcel:Lorg/sufficientlysecure/keychain/service/ChangeUnlockParcel;

    return-object p1
.end method

.method static synthetic access$400(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->displayResult(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V

    return-void
.end method

.method static synthetic access$500(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    return-object p0
.end method

.method static synthetic access$600(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->editOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    return-object p0
.end method

.method static synthetic access$702(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;[B)[B
    .locals 0

    .line 112
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->qrCodeLoaded:[B

    return-object p1
.end method

.method static synthetic access$800(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->qrCodeView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 112
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->photoView:Landroid/widget/ImageView;

    return-object p0
.end method

.method private certifyFingerprint()V
    .locals 7

    move-object/16 v4, p0

    .line 444
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/sufficientlysecure/keychain/ui/CertifyFingerprintActivity;

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "master_key_id"

    .line 445
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v1, 0x3

    .line 447
    invoke-virtual {v4, v0, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->certifyFingerprint()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private certifyImmediate()V
    .locals 9

    move-object/16 v6, p0

    .line 451
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/sufficientlysecure/keychain/ui/CertifyKeyActivity;

    invoke-direct {v0, v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_key_ids"

    const/4 v2, 0x1

    .line 452
    new-array v2, v2, [J

    iget-object v3, v6, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v3

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const/4 v1, 0x3

    .line 454
    invoke-virtual {v6, v0, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->certifyImmediate()V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private changePassword()V
    .locals 7

    move-object/16 v4, p0

    .line 374
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$3;

    invoke-direct {v0, v4}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$3;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)V

    .line 404
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    const v2, 0x7f110bf7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v3, v4, v0, v2}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;-><init>(ILandroid/support/v4/app/FragmentActivity;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->editOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    .line 407
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$4;

    invoke-direct {v0, v4}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$4;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)V

    .line 425
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    const v0, 0x7f110cdd

    .line 427
    invoke-static {v1, v0}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->newInstance(Landroid/os/Messenger;I)Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;

    move-result-object v0

    .line 430
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "setPassphraseDialog"

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/dialog/SetPassphraseDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->changePassword()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private deleteKey()V
    .locals 9

    move-object/16 v6, p0

    .line 515
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;

    invoke-direct {v0, v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_delete_master_key_ids"

    const/4 v2, 0x1

    .line 517
    new-array v2, v2, [J

    iget-object v3, v6, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    .line 518
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v3

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    .line 517
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const-string v1, "extra_has_secret"

    .line 519
    iget-object v2, v6, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 520
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "extra_keyserver"

    .line 523
    invoke-static {v6}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferredKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v2

    .line 522
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const/4 v1, 0x4

    .line 526
    invoke-virtual {v6, v0, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->deleteKey()V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private displayResult(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 434
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v1

    invoke-interface {v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->displayResult(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private encrypt(Z)V
    .locals 7

    move-object/16 v4, p0

    move/16 v5, p1

    .line 599
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_encrypt_key()Z

    move-result v0

    if-nez v0, :cond_0

    const v5, 0x7f110187

    .line 600
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v4, v5, v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v5

    invoke-interface {v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 603
    new-array v0, v0, [J

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    if-eqz v5, :cond_1

    .line 606
    new-instance v5, Landroid/content/Intent;

    const-class v1, Lorg/sufficientlysecure/keychain/ui/EncryptTextActivity;

    invoke-direct {v5, v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "org.sufficientlysecure.keychain.action.ENCRYPT_TEXT"

    .line 607
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "org.sufficientlysecure.keychain.EXTRA_SIGNATURE_KEY_IDS"

    .line 608
    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    goto :goto_0

    .line 610
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-class v1, Lorg/sufficientlysecure/keychain/ui/EncryptFilesActivity;

    invoke-direct {v5, v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "org.sufficientlysecure.keychain.action.ENCRYPT_DATA"

    .line 611
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "org.sufficientlysecure.keychain.EXTRA_SIGNATURE_KEY_IDS"

    .line 612
    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 615
    :goto_0
    invoke-virtual {v4, v5, v3}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->encrypt(Z)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getStatusBarBackgroundColor(I)I
    .locals 6

    move/16 v3, p0

    shr-int/lit8 v0, v3, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, v3, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v0, v0, 0x11

    .line 673
    div-int/lit8 v0, v0, 0x14

    mul-int/lit8 v1, v1, 0x11

    .line 674
    div-int/lit8 v1, v1, 0x14

    mul-int/lit8 v3, v3, 0x11

    .line 675
    div-int/lit8 v3, v3, 0x14

    shl-int/lit8 v0, v0, 0x10

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v3, v0

    return v3

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->getStatusBarBackgroundColor(I)I"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getViewKeyActivityIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 5

    move-object/16 v2, p0

    move-wide/16 v3, p1

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "master_key_id"

    .line 159
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->getViewKeyActivityIntent(Landroid/content/Context;J)Landroid/content/Intent;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private hideFab()V
    .locals 5

    move-object/16 v2, p0

    .line 864
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    const/4 v1, 0x0

    .line 865
    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V

    const/4 v1, -0x1

    .line 866
    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setAnchorId(I)V

    .line 867
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 868
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->hideFab()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private keyHasPassphrase()Z
    .locals 7

    move-object/16 v4, p0

    const/4 v0, 0x0

    .line 490
    :try_start_0
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v1

    .line 491
    iget-object v3, v4, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v3, v1, v2}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getSecretKeyType(J)Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;

    move-result-object v1

    .line 492
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$7;->$SwitchMap$org$sufficientlysecure$keychain$pgp$CanonicalizedSecretKey$SecretKeyType:[I

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/pgp/CanonicalizedSecretKey$SecretKeyType;->ordinal()I

    move-result v1

    aget v1, v2, v1
    :try_end_0
    .catch Lorg/sufficientlysecure/keychain/daos/KeyRepository$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :pswitch_0
    return v0

    :catch_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->keyHasPassphrase()Z"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private loadQrCode([B)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 628
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$5;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$5;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;[B)V

    const/4 v2, 0x0

    .line 656
    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->loadQrCode([B)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V
    .locals 15

    move-object/16 v12, p0

    move-object/16 v13, p1

    if-nez v13, :cond_0

    return-void

    .line 685
    :cond_0
    iput-object v13, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    .line 687
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_1

    .line 688
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->email()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 690
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->beautifyKeyId(J)Ljava/lang/String;

    move-result-object v0

    .line 691
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->collapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 693
    :cond_2
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->collapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const v0, 0x7f110d45

    invoke-virtual {v12, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 697
    :goto_2
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->rotate:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->rotateSpin:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_4

    .line 699
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->supportInvalidateOptionsMenu()V

    .line 703
    :cond_4
    new-instance v8, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$6;

    invoke-direct {v8, v12}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$6;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)V

    .line 722
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_secure()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_expired()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_revoked()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    const v1, 0x7f110d4a

    const v2, 0x7f110d4b

    const/16 v9, 0x8

    if-eqz v0, :cond_8

    .line 724
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->statusText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 726
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 727
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->statusText:Landroid/widget/TextView;

    const v3, 0x7f110d49

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 728
    :cond_6
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_verified()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 729
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->statusText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 731
    :cond_7
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->statusText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 734
    :cond_8
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->statusText:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 739
    :goto_4
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_revoked()Z

    move-result v0

    const v10, 0x7f060054

    const/4 v11, 0x4

    if-eqz v0, :cond_9

    .line 740
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->statusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 741
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->statusImage:Landroid/widget/ImageView;

    iget-object v2, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->statusText:Landroid/widget/TextView;

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->REVOKED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    const v4, 0x7f060050

    const/4 v5, 0x1

    move-object v0, v12

    invoke-static/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;IZ)V

    .line 743
    invoke-static {v12, v10}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 745
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->actionEncryptFile:Landroid/widget/ImageButton;

    invoke-virtual {v1, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 746
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->actionEncryptText:Landroid/widget/ImageButton;

    invoke-virtual {v1, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 747
    invoke-direct {v12}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->hideFab()V

    .line 748
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->qrCodeLayout:Landroid/support/v7/widget/CardView;

    invoke-virtual {v1, v9}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    goto/16 :goto_5

    .line 749
    :cond_9
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_expired()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 750
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->statusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 751
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->statusImage:Landroid/widget/ImageView;

    iget-object v2, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->statusText:Landroid/widget/TextView;

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->EXPIRED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    const v4, 0x7f060050

    const/4 v5, 0x1

    move-object v0, v12

    invoke-static/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;IZ)V

    .line 753
    invoke-static {v12, v10}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 755
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->actionEncryptFile:Landroid/widget/ImageButton;

    invoke-virtual {v1, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 756
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->actionEncryptText:Landroid/widget/ImageButton;

    invoke-virtual {v1, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 757
    invoke-direct {v12}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->hideFab()V

    .line 758
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->qrCodeLayout:Landroid/support/v7/widget/CardView;

    invoke-virtual {v1, v9}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    goto/16 :goto_5

    .line 759
    :cond_a
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_secure()Z

    move-result v0

    if-nez v0, :cond_b

    .line 760
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->statusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 761
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->statusImage:Landroid/widget/ImageView;

    iget-object v2, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->statusText:Landroid/widget/TextView;

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->INSECURE:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    const v4, 0x7f060050

    const/4 v5, 0x1

    move-object v0, v12

    invoke-static/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;IZ)V

    .line 763
    invoke-static {v12, v10}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 765
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->actionEncryptFile:Landroid/widget/ImageButton;

    invoke-virtual {v1, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 766
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->actionEncryptText:Landroid/widget/ImageButton;

    invoke-virtual {v1, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 767
    invoke-direct {v12}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->hideFab()V

    .line 768
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->qrCodeLayout:Landroid/support/v7/widget/CardView;

    invoke-virtual {v1, v9}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    goto/16 :goto_5

    .line 769
    :cond_b
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result v0

    const v10, 0x7f060052

    if-eqz v0, :cond_e

    .line 770
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->statusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 771
    invoke-static {v12, v10}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 773
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->fingerprint()[B

    move-result-object v1

    iget-object v2, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->qrCodeLoaded:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_c

    .line 774
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->fingerprint()[B

    move-result-object v1

    invoke-direct {v12, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->loadQrCode([B)V

    .line 776
    :cond_c
    new-array v1, v6, [Ljava/lang/Long;

    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v8, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 777
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->qrCodeLayout:Landroid/support/v7/widget/CardView;

    invoke-virtual {v1, v7}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 790
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->statusText:Landroid/widget/TextView;

    .line 791
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x30

    .line 792
    invoke-static {v12, v2}, Lorg/sufficientlysecure/keychain/ui/util/FormattingUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2, v7, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 793
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_d

    .line 794
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    :cond_d
    const v2, 0x7f09037d

    .line 796
    invoke-virtual {v1, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 797
    iget-object v2, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->statusText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 799
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->actionEncryptFile:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 800
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->actionEncryptText:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 802
    invoke-direct {v12}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->showFab()V

    .line 803
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    const v2, 0x7f0800d7

    invoke-static {v12, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 805
    :cond_e
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->actionEncryptFile:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 806
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->actionEncryptText:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 807
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->qrCodeLayout:Landroid/support/v7/widget/CardView;

    invoke-virtual {v0, v9}, Landroid/support/v7/widget/CardView;->setVisibility(I)V

    .line 809
    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_verified()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 810
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->statusText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 811
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->statusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 812
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->statusImage:Landroid/widget/ImageView;

    iget-object v2, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->statusText:Landroid/widget/TextView;

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->VERIFIED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    const v4, 0x7f060050

    const/4 v5, 0x1

    move-object v0, v12

    invoke-static/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;IZ)V

    .line 814
    invoke-static {v12, v10}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 815
    new-array v1, v6, [Ljava/lang/Long;

    invoke-virtual {v13}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v8, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 817
    invoke-direct {v12}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->hideFab()V

    goto :goto_5

    .line 819
    :cond_f
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->statusText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 820
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->statusImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 821
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->statusImage:Landroid/widget/ImageView;

    iget-object v2, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->statusText:Landroid/widget/TextView;

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;->UNVERIFIED:Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;

    const v4, 0x7f060050

    const/4 v5, 0x1

    move-object v0, v12

    invoke-static/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->setStatusImage(Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils$State;IZ)V

    const v0, 0x7f060053

    .line 823
    invoke-static {v12, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 825
    invoke-direct {v12}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->showFab()V

    .line 829
    :goto_5
    iget v1, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->mPreviousColor:I

    if-eqz v1, :cond_11

    iget v1, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->mPreviousColor:I

    if-ne v1, v0, :cond_10

    goto :goto_6

    .line 835
    :cond_10
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    const-string v2, "backgroundColor"

    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->mPreviousColor:I

    .line 837
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 836
    invoke-static {v1, v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 838
    iget-object v2, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->collapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v2, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrimColor(I)V

    .line 839
    iget-object v2, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->collapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->getStatusBarBackgroundColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->setStatusBarScrimColor(I)V

    const-wide/16 v2, 0x4b0

    .line 841
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 842
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 843
    iput v0, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->mPreviousColor:I

    goto :goto_7

    .line 830
    :cond_11
    :goto_6
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/AppBarLayout;->setBackgroundColor(I)V

    .line 831
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->collapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrimColor(I)V

    .line 832
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->collapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->getStatusBarBackgroundColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->setStatusBarScrimColor(I)V

    .line 833
    iput v0, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->mPreviousColor:I

    .line 846
    :goto_7
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->statusImage:Landroid/widget/ImageView;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    return-void

    const-string v14, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V"

    invoke-static/range {v14 .. v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private scanQrCode()V
    .locals 5

    move-object/16 v2, p0

    .line 438
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "org.sufficientlysecure.keychain.action.SCAN_QR_CODE_WITH_RESULT"

    .line 439
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 440
    invoke-virtual {v2, v0, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->scanQrCode()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private showFab()V
    .locals 5

    move-object/16 v2, p0

    .line 853
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 854
    new-instance v1, Landroid/support/design/widget/FloatingActionButton$Behavior;

    invoke-direct {v1}, Landroid/support/design/widget/FloatingActionButton$Behavior;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V

    const v1, 0x7f090059

    .line 855
    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setAnchorId(I)V

    .line 856
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/FloatingActionButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 857
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->showFab()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private showQrCodeDialog()V
    .locals 8

    move-object/16 v5, p0

    .line 458
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/sufficientlysecure/keychain/ui/QrCodeViewActivity;

    invoke-direct {v0, v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 463
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 464
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->qrCodeLayout:Landroid/support/v7/widget/CardView;

    const-string v2, "qr_code"

    .line 465
    invoke-static {v5, v1, v2}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 466
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "master_key_id"

    .line 469
    iget-object v3, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 470
    invoke-static {v5, v0, v1}, Landroid/support/v4/app/ActivityCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->showQrCodeDialog()V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startBackupActivity()V
    .locals 10

    move-object/16 v7, p0

    .line 508
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/sufficientlysecure/keychain/ui/BackupActivity;

    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "master_key_ids"

    const/4 v2, 0x1

    .line 509
    new-array v3, v2, [J

    iget-object v4, v7, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v4

    const/4 v6, 0x0

    aput-wide v4, v3, v6

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const-string v1, "export_secret"

    .line 510
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 511
    invoke-virtual {v7, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->startBackupActivity()V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startPassphraseActivity(I)V
    .locals 6

    move-object/16 v3, p0

    move/16 v4, p1

    .line 475
    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->keyHasPassphrase()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/sufficientlysecure/keychain/ui/PassphraseDialogActivity;

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 477
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v1

    .line 479
    invoke-static {v1, v2, v1, v2}, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->createRequiredDecryptPassphrase(JJ)Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;

    move-result-object v1

    const/4 v2, 0x1

    .line 480
    iput-boolean v2, v1, Lorg/sufficientlysecure/keychain/service/input/RequiredInputParcel;->mSkipCaching:Z

    const-string v2, "required_input"

    .line 481
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 482
    invoke-virtual {v3, v0, v4}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 484
    :cond_0
    invoke-direct {v3}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->startBackupActivity()V

    :goto_0
    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->startPassphraseActivity(I)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startSafeSlinger()V
    .locals 7

    move-object/16 v4, p0

    .line 619
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "master_key_id"

    .line 620
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 621
    invoke-virtual {v4, v0, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->startSafeSlinger()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private updateFromKeyserver()V
    .locals 5

    move-object/16 v2, p0

    .line 875
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 879
    iput-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->isRefreshing:Z

    .line 880
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->refreshItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 881
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->refreshItem:Landroid/view/MenuItem;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->refreshView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 882
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->refreshView:Landroid/view/View;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->rotate:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 884
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->importOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation()V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->updateFromKeyserver()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic bridge$lambda$0$ViewKeyActivity(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->onLoadUnifiedKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V

    return-void
.end method

.method public bridge synthetic createOperationInput()Landroid/os/Parcelable;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->createOperationInput()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    move-result-object v0

    return-object v0
.end method

.method public createOperationInput()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;
    .locals 6

    move-object/16 v3, p0

    .line 889
    invoke-static {v3}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferredKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v0

    .line 891
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->fingerprint()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->createFromReference([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    move-result-object v1

    .line 893
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;->createImportKeyringParcel(Ljava/util/List;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;

    move-result-object v0

    return-object v0

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->createOperationInput()Lorg/sufficientlysecure/keychain/service/ImportKeyringParcel;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected initLayout()V
    .locals 4

    move-object/16 v1, p0

    const v0, 0x7f0c0107

    .line 297
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->setContentView(I)V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->initLayout()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$onCreate$0$ViewKeyActivity(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 257
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->encrypt(Z)V

    return-void
.end method

.method final synthetic lambda$onCreate$1$ViewKeyActivity(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 258
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->encrypt(Z)V

    return-void
.end method

.method final synthetic lambda$onCreate$2$ViewKeyActivity(Landroid/view/View;)V
    .locals 0

    .line 261
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {p1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 262
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->startSafeSlinger()V

    goto :goto_0

    .line 264
    :cond_0
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->scanQrCode()V

    :goto_0
    return-void
.end method

.method final synthetic lambda$onCreate$3$ViewKeyActivity(Landroid/view/View;)V
    .locals 0

    .line 268
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->showQrCodeDialog()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    .line 531
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->importOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v0, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 534
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->editOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->editOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    invoke-virtual {v0, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    :cond_1
    const/4 v0, -0x1

    if-eq v3, v0, :cond_2

    .line 539
    invoke-super {v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 587
    invoke-super {v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    .line 572
    :pswitch_0
    invoke-virtual {v1, v0, p0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->setResult(ILandroid/content/Intent;)V

    .line 573
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->finish()V

    return-void

    :pswitch_1
    const-string v2, "operation_result"

    .line 578
    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "operation_result"

    .line 579
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    .line 580
    invoke-virtual {v2, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    :cond_3
    return-void

    .line 567
    :pswitch_2
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->startBackupActivity()V

    return-void

    :pswitch_3
    const-string v2, "operation_result"

    .line 547
    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "operation_result"

    .line 548
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    .line 549
    invoke-virtual {v2, v1}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    :cond_4
    const-string v2, "fingerprint"

    .line 553
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0xdac

    if-nez v2, :cond_5

    const v2, 0x7f110197

    .line 555
    sget-object p0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;IILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    .line 558
    :cond_5
    iget-object p0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->fingerprint()[B

    move-result-object p0

    invoke-static {p0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 559
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->certifyImmediate()V

    goto :goto_0

    :cond_6
    const v2, 0x7f110198

    .line 561
    sget-object p0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;IILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 166
    invoke-super {v5, v6}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {v5}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v0

    iput-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    .line 169
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v5, v5, v2}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;-><init>(ILandroid/support/v4/app/FragmentActivity;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V

    iput-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->importOpHelper:Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    .line 171
    invoke-virtual {v5, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f09037e

    .line 173
    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->statusText:Landroid/widget/TextView;

    const v0, 0x7f09037f

    .line 174
    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->statusImage:Landroid/widget/ImageView;

    const v0, 0x7f090059

    .line 175
    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iput-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->appBarLayout:Landroid/support/design/widget/AppBarLayout;

    const v0, 0x7f0900e4

    .line 176
    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CollapsingToolbarLayout;

    iput-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->collapsingToolbarLayout:Landroid/support/design/widget/CollapsingToolbarLayout;

    const v0, 0x7f090366

    .line 178
    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->actionEncryptFile:Landroid/widget/ImageButton;

    const v0, 0x7f090367

    .line 179
    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->actionEncryptText:Landroid/widget/ImageButton;

    const v0, 0x7f090161

    .line 180
    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    const v0, 0x7f090377

    .line 181
    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->photoView:Landroid/widget/ImageView;

    const v0, 0x7f090378

    .line 182
    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->photoLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f09037c

    .line 183
    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->qrCodeView:Landroid/widget/ImageView;

    const v0, 0x7f09037d

    .line 184
    invoke-virtual {v5, v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->qrCodeLayout:Landroid/support/v7/widget/CardView;

    const v0, 0x7f010027

    .line 186
    invoke-static {v5, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->rotateSpin:Landroid/view/animation/Animation;

    .line 190
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->actionEncryptFile:Landroid/widget/ImageButton;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint;->setup(Landroid/view/View;)V

    .line 191
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->actionEncryptText:Landroid/widget/ImageButton;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint;->setup(Landroid/view/View;)V

    .line 192
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/util/ContentDescriptionHint;->setup(Landroid/view/View;)V

    .line 195
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->rotateSpin:Landroid/view/animation/Animation;

    new-instance v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$1;

    invoke-direct {v3, v5}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$1;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f010026

    .line 216
    invoke-static {v5, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->rotate:Landroid/view/animation/Animation;

    .line 217
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->rotate:Landroid/view/animation/Animation;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 218
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->rotate:Landroid/view/animation/Animation;

    new-instance v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$2;

    invoke-direct {v3, v5}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$2;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 237
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0c008b

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->refreshView:Landroid/view/View;

    .line 240
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "master_key_id"

    .line 242
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "master_key_id"

    const-wide/16 v2, 0x0

    .line 243
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_5

    .line 244
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.contacts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 245
    new-instance v3, Lorg/sufficientlysecure/keychain/util/ContactHelper;

    invoke-direct {v3, v5}, Lorg/sufficientlysecure/keychain/util/ContactHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->masterKeyIdFromContactsDataUri(Landroid/net/Uri;)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v6, "Contact Data missing. Should be uri of key!"

    const/4 v0, 0x0

    .line 247
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v6, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const v6, 0x7f11016e

    .line 248
    invoke-static {v5, v6, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 249
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->finish()V

    return-void

    .line 252
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 257
    :goto_0
    iget-object v3, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->actionEncryptFile:Landroid/widget/ImageButton;

    new-instance v4, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$$Lambda$0;

    invoke-direct {v4, v5}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v3, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->actionEncryptText:Landroid/widget/ImageButton;

    new-instance v4, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$$Lambda$1;

    invoke-direct {v4, v5}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v3, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->floatingActionButton:Landroid/support/design/widget/FloatingActionButton;

    new-instance v4, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$$Lambda$2;

    invoke-direct {v4, v5}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)V

    invoke-virtual {v3, v4}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v3, v5, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->qrCodeLayout:Landroid/support/v7/widget/CardView;

    new-instance v4, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$$Lambda$3;

    invoke-direct {v4, v5}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$$Lambda$3;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    invoke-static {v5}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v3

    const-class v4, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;

    invoke-virtual {v3, v4}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;

    .line 271
    invoke-virtual {v3, v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;->setMasterKeyId(J)V

    .line 272
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/UnifiedKeyInfoViewModel;->getUnifiedKeyInfoLiveData(Landroid/content/Context;)Landroid/arch/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$$Lambda$4;

    invoke-direct {v2, v5}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity$$Lambda$4;-><init>(Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;)V

    invoke-virtual {v1, v5, v2}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    if-nez v6, :cond_2

    const-string v1, "display_result"

    .line 274
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "display_result"

    .line 275
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    .line 276
    invoke-virtual {v0, v5}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    :cond_2
    if-eqz v6, :cond_3

    return-void

    .line 284
    :cond_3
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    .line 286
    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;->newInstance()Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyFragment;

    move-result-object v0

    .line 287
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f090375

    const-string v3, "view_key_fragment"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 289
    invoke-static {v5}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getExperimentalEnableKeybase()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 290
    invoke-static {}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->newInstance()Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;

    move-result-object v0

    .line 291
    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    const v1, 0x7f090376

    invoke-virtual {v6, v1, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_4
    return-void

    .line 254
    :cond_5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing required extra master_key_id or contact uri"

    invoke-direct {v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 302
    invoke-super {v2, v3}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->onCreateOptionsMenu(Landroid/view/Menu;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0010

    invoke-virtual {v0, v1, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09023b

    .line 304
    invoke-interface {v3, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->refreshItem:Landroid/view/MenuItem;

    const/4 v3, 0x1

    return v3
.end method

.method public onCryptoOperationCancelled()V
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    .line 904
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->isRefreshing:Z

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->onCryptoOperationCancelled()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    const/4 v0, 0x0

    .line 909
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->isRefreshing:Z

    .line 910
    invoke-virtual {v2, v1}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 112
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->onCryptoOperationError(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V

    return-void
.end method

.method public onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    const/4 v0, 0x0

    .line 898
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->isRefreshing:Z

    .line 899
    invoke-virtual {v2, v1}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 112
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->onCryptoOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;)V

    return-void
.end method

.method public onCryptoSetProgress(Ljava/lang/String;II)Z
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    const/4 v1, 0x1

    return v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->onCryptoSetProgress(Ljava/lang/String;II)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 310
    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/high16 v2, 0x4000000

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f09022c

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 351
    invoke-super {v4, v5}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    return v5

    .line 326
    :pswitch_0
    new-instance v5, Landroid/content/Intent;

    const-class v0, Lorg/sufficientlysecure/keychain/ui/MainActivity;

    invoke-direct {v5, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "init_frag"

    const/4 v1, 0x5

    .line 327
    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 329
    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->startActivity(Landroid/content/Intent;)V

    return v3

    .line 343
    :pswitch_1
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->updateFromKeyserver()V

    return v3

    .line 333
    :pswitch_2
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->deleteKey()V

    return v3

    .line 347
    :pswitch_3
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->certifyFingerprint()V

    return v3

    :pswitch_4
    const/4 v5, 0x2

    .line 322
    invoke-direct {v4, v5}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->startPassphraseActivity(I)V

    return v3

    .line 337
    :pswitch_5
    new-instance v5, Landroid/content/Intent;

    const-class v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyAdvActivity;

    invoke-direct {v5, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "master_key_id"

    .line 338
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v1

    invoke-virtual {v5, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 339
    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->startActivity(Landroid/content/Intent;)V

    return v3

    .line 318
    :cond_0
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->changePassword()V

    return v3

    .line 312
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-class v0, Lorg/sufficientlysecure/keychain/ui/MainActivity;

    invoke-direct {v5, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 313
    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 314
    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->startActivity(Landroid/content/Intent;)V

    return v3

    :pswitch_data_0
    .packed-switch 0x7f090237
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 356
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const v0, 0x7f090238

    .line 359
    invoke-interface {v4, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 360
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f09023c

    .line 361
    invoke-interface {v4, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f09022c

    .line 362
    invoke-interface {v4, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 363
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f090239

    .line 365
    invoke-interface {v4, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 366
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    .line 367
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_verified()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_expired()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->unifiedKeyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    .line 368
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_revoked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 366
    :cond_1
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return v2

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->onPrepareOptionsMenu(Landroid/view/Menu;)Z"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onSecurityTokenPostExecute(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 593
    invoke-super {v0, v1}, Lorg/sufficientlysecure/keychain/ui/base/BaseSecurityTokenActivity;->onSecurityTokenPostExecute(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;--->onSecurityTokenPostExecute(Lorg/sufficientlysecure/keychain/securitytoken/SecurityTokenConnection;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->finish()V

    return-void
.end method
