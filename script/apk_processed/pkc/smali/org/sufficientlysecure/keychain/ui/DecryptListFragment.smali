.class public Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;
.super Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;
.source "DecryptListFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$ViewHolder;,
        Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment<",
        "Lorg/sufficientlysecure/keychain/service/InputDataParcel;",
        "Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;",
        ">;",
        "Landroid/widget/PopupMenu$OnMenuItemClickListener;"
    }
.end annotation


# static fields
.field public static final ARG_CANCELLED_URIS:Ljava/lang/String; = "cancelled_uris"

.field public static final ARG_CAN_DELETE:Ljava/lang/String; = "can_delete"

.field public static final ARG_INPUT_URIS:Ljava/lang/String; = "input_uris"

.field public static final ARG_IS_AUTOCRYPT_SETUP:Ljava/lang/String; = "is_autocrypt_setup"

.field public static final ARG_OUTPUT_URIS:Ljava/lang/String; = "output_uris"

.field public static final ARG_RESULTS:Ljava/lang/String; = "results"

.field private static final REQUEST_CODE_OUTPUT:I = 0x7007

.field private static final REQUEST_PERMISSION_READ_EXTERNAL_STORAGE:I = 0xc


# instance fields
.field private mAdapter:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;

.field private mCanDelete:Z

.field private mCancelledInputUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentInputUri:Landroid/net/Uri;

.field private mCurrentSaveFileUri:Landroid/net/Uri;

.field mIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDataResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;",
            ">;"
        }
    .end annotation
.end field

.field private mInputUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAutocryptSetup:Z

.field private mPendingInputUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x0

    .line 158
    invoke-direct {v1, v0}, Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;-><init>(Ljava/lang/Integer;)V

    .line 400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mIconCache:Ljava/util/HashMap;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;)Ljava/util/HashMap;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mInputDataResults:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;)Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;
    .locals 0

    .line 116
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;)Z
    .locals 0

    .line 116
    iget-boolean p0, p0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCanDelete:Z

    return p0
.end method

.method static synthetic access$400(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;Landroid/net/Uri;J)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2, p3}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->lookupUnknownKey(Landroid/net/Uri;J)V

    return-void
.end method

.method private checkAndRequestReadPermission(Landroid/app/Activity;Landroid/net/Uri;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    const-string v0, "file"

    .line 658
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v0, 0x1

    if-nez v4, :cond_0

    return v0

    .line 663
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v4, v1, :cond_1

    return v0

    :cond_1
    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    .line 667
    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    return v0

    .line 672
    :cond_2
    new-array v3, v0, [Ljava/lang/String;

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v0, 0x0

    aput-object v4, v3, v0

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->requestPermissions([Ljava/lang/String;I)V

    return v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;--->checkAndRequestReadPermission(Landroid/app/Activity;Landroid/net/Uri;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private deleteFile(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    const/4 v0, 0x0

    .line 820
    iput-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCanDelete:Z

    .line 823
    :try_start_0
    invoke-static {v3, v4}, Lorg/sufficientlysecure/keychain/util/FileHelper;->deleteFileSecurely(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v4

    if-lez v4, :cond_0

    const v4, 0x7f110417

    .line 825
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v3, v4, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v4

    invoke-interface {v4}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    goto :goto_0

    :cond_0
    const v4, 0x7f110416

    .line 827
    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->WARN:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v3, v4, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v4

    invoke-interface {v4}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v1, "exception deleting file"

    .line 830
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const v4, 0x7f110415

    .line 831
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v3, v4, v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v3

    invoke-interface {v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;--->deleteFile(Landroid/app/Activity;Landroid/net/Uri;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private displayInputUris(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;",
            ">;)V"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    move-object/16 p0, p3

    .line 238
    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mInputUris:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 239
    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCurrentInputUri:Landroid/net/Uri;

    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 240
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    :goto_0
    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mInputDataResults:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    goto :goto_1

    .line 241
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    iput-object v4, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCancelledInputUris:Ljava/util/ArrayList;

    .line 243
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mPendingInputUris:Ljava/util/ArrayList;

    .line 245
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 246
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;

    invoke-virtual {v0, v4}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->add(Landroid/net/Uri;)V

    .line 248
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCancelledInputUris:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;

    invoke-virtual {v0, v4, v1}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->setCancelled(Landroid/net/Uri;Z)V

    goto :goto_2

    :cond_2
    if-eqz p0, :cond_3

    .line 254
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_4

    .line 256
    invoke-direct {v2, v4}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->processResult(Landroid/net/Uri;)V

    goto :goto_2

    .line 260
    :cond_4
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mPendingInputUris:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 264
    :cond_5
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->cryptoOperation()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;--->displayInputUris(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private lookupUnknownKey(Landroid/net/Uri;J)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-wide/16 v4, p2

    .line 768
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferredKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v0

    .line 772
    invoke-static {v4, p0}, Lorg/sufficientlysecure/keychain/ui/util/KeyFormattingUtils;->convertKeyIdToHex(J)Ljava/lang/String;

    move-result-object v4

    const/4 p0, 0x0

    .line 771
    invoke-static {p0, v4, p0, p0}, Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;->createFromReference([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/sufficientlysecure/keychain/keyimport/ParcelableKeyRing;

    move-result-object v4

    .line 773
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 774
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$3;

    invoke-direct {v4, v2, v1, v0, v3}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$3;-><init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;Ljava/util/ArrayList;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;Landroid/net/Uri;)V

    .line 809
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->setProcessingKeyLookup(Landroid/net/Uri;Z)V

    .line 811
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    const/4 v0, 0x2

    invoke-direct {v3, v0, v2, v4, p0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;-><init>(ILandroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V

    .line 812
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;--->lookupUnknownKey(Landroid/net/Uri;J)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance(Ljava/util/ArrayList;ZZ)Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;ZZ)",
            "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;"
        }
    .end annotation

    move-object/16 v3, p0

    move/16 v4, p1

    move/16 v5, p2

    .line 146
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;-><init>()V

    .line 148
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "input_uris"

    .line 149
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "can_delete"

    .line 150
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "is_autocrypt_setup"

    .line 151
    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 152
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;--->newInstance(Ljava/util/ArrayList;ZZ)Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private processResult(Landroid/net/Uri;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 404
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$2;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;Landroid/net/Uri;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 471
    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;--->processResult(Landroid/net/Uri;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private saveFile(Landroid/net/Uri;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 308
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCurrentSaveFileUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    return-void

    .line 312
    :cond_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCurrentSaveFileUri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 313
    iput-object v1, v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCurrentInputUri:Landroid/net/Uri;

    .line 315
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->hideKeyboard()V

    .line 317
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 323
    :cond_1
    :try_start_0
    invoke-static {v1, v0, v4}, Lorg/sufficientlysecure/keychain/util/FileHelper;->copyUriData(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V

    const v4, 0x7f110419

    .line 324
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v1, v4, v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v4

    invoke-interface {v4}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v0, "error saving file"

    const/4 v2, 0x0

    .line 326
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const v4, 0x7f110196

    .line 327
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v1, v4, v0}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v4

    invoke-interface {v4}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    :goto_0
    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;--->saveFile(Landroid/net/Uri;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private saveFileDialog(Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;I)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    .line 289
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 294
    :cond_0
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mMetadata:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openintents/openpgp/OpenPgpMetadata;

    .line 295
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->getOutputUris()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCurrentSaveFileUri:Landroid/net/Uri;

    .line 297
    invoke-virtual {v0}, Lorg/openintents/openpgp/OpenPgpMetadata;->getFilename()Ljava/lang/String;

    move-result-object v4

    .line 298
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 299
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v0}, Lorg/openintents/openpgp/OpenPgpMetadata;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 300
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decrypted"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, ""

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 304
    :cond_2
    invoke-virtual {v0}, Lorg/openintents/openpgp/OpenPgpMetadata;->getMimeType()Ljava/lang/String;

    move-result-object v5

    const/16 v0, 0x7007

    invoke-static {v3, v4, v5, v0}, Lorg/sufficientlysecure/keychain/util/FileHelper;->saveDocument(Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;--->saveFileDialog(Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bridge synthetic createOperationInput()Landroid/os/Parcelable;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->createOperationInput()Lorg/sufficientlysecure/keychain/service/InputDataParcel;

    move-result-object v0

    return-object v0
.end method

.method public createOperationInput()Lorg/sufficientlysecure/keychain/service/InputDataParcel;
    .locals 8

    move-object/16 v5, p0

    .line 619
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 624
    :cond_0
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCurrentInputUri:Landroid/net/Uri;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 625
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mPendingInputUris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 630
    :cond_1
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mPendingInputUris:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, v5, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCurrentInputUri:Landroid/net/Uri;

    .line 633
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentInputUri="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCurrentInputUri:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 635
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCurrentInputUri:Landroid/net/Uri;

    invoke-direct {v5, v0, v2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->checkAndRequestReadPermission(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    .line 639
    :cond_3
    invoke-static {}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;->builder()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 640
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;->setAllowSymmetricDecryption(Z)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;

    move-result-object v0

    iget-boolean v1, v5, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mIsAutocryptSetup:Z

    .line 641
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;->setAutocryptSetup(Z)Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;

    move-result-object v0

    .line 642
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCurrentInputUri:Landroid/net/Uri;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel$Builder;->build()Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/sufficientlysecure/keychain/service/InputDataParcel;->createInputDataParcel(Landroid/net/Uri;Lorg/sufficientlysecure/keychain/pgp/PgpDecryptVerifyInputParcel;)Lorg/sufficientlysecure/keychain/service/InputDataParcel;

    move-result-object v0

    return-object v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;--->createOperationInput()Lorg/sufficientlysecure/keychain/service/InputDataParcel;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public displayBottomSheet(Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;I)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 494
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 499
    :cond_0
    new-instance v1, Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    invoke-direct {v1, v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;-><init>(Landroid/app/Activity;)V

    const v0, 0x7f0d0004

    invoke-virtual {v1, v0}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->sheet(I)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object v0

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$$Lambda$0;

    invoke-direct {v1, v2, v3, v4}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;I)V

    invoke-virtual {v0, v1}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->listener(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object v3

    .line 513
    invoke-virtual {v3}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->grid()Lcom/cocosw/bottomsheet/BottomSheet$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cocosw/bottomsheet/BottomSheet$Builder;->show()Lcom/cocosw/bottomsheet/BottomSheet;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;--->displayBottomSheet(Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public displayWithViewIntent(Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;IZZ)V
    .locals 12

    move-object/16 v9, p0

    move-object/16 v10, p1

    move/16 v11, p2

    move/16 p0, p3

    move/16 p1, p4

    .line 518
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 523
    :cond_0
    invoke-virtual {v10}, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->getOutputUris()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 524
    iget-object v2, v10, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mMetadata:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/openintents/openpgp/OpenPgpMetadata;

    const-string v2, "text/plain"

    .line 529
    invoke-virtual {v11}, Lorg/openintents/openpgp/OpenPgpMetadata;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const v4, 0x7f1107fc

    const/high16 v5, 0x7f0e0000

    const v6, 0x7f110d47

    const/4 v7, 0x1

    if-eqz v2, :cond_3

    if-eqz p0, :cond_1

    const/4 v10, 0x0

    .line 533
    :try_start_0
    invoke-static {v0, v1, v10}, Lorg/sufficientlysecure/keychain/util/FileHelper;->readTextFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 535
    new-instance v11, Landroid/content/Intent;

    const-string p0, "android.intent.action.SEND"

    invoke-direct {v11, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p0, "text/plain"

    .line 536
    invoke-virtual {v11, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "android.intent.extra.TEXT"

    .line 537
    invoke-virtual {v11, p0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v10, 0x7f1107fb

    .line 539
    invoke-virtual {v9, v10}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v10

    .line 540
    invoke-virtual {v9, v10}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const v10, 0x7f11018f

    .line 543
    sget-object v11, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v10, v11}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v10

    invoke-interface {v10}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    :goto_0
    return-void

    .line 549
    :cond_1
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    .line 550
    invoke-virtual {p0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "text/plain"

    .line 551
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_2

    .line 555
    new-instance p1, Landroid/content/pm/LabeledIntent;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-class v2, Lorg/sufficientlysecure/keychain/ui/DisplayTextActivity;

    .line 557
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "result"

    iget-object v10, v10, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mDecryptVerifyResult:Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    .line 558
    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v10

    const-string v0, "metadata"

    .line 559
    invoke-virtual {v10, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "org.sufficientlysecure.keychain"

    invoke-direct {p1, v10, v11, v6, v5}, Landroid/content/pm/LabeledIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;II)V

    .line 562
    invoke-virtual {v9, v4}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "android.intent.extra.INITIAL_INTENTS"

    .line 563
    new-array p0, v7, [Landroid/os/Parcelable;

    aput-object p1, p0, v3

    invoke-virtual {v10, v11, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 566
    invoke-virtual {v9, v10}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 570
    :cond_2
    const-class p1, Lorg/sufficientlysecure/keychain/ui/DisplayTextActivity;

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 571
    invoke-virtual {p0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p1, "result"

    .line 572
    iget-object v10, v10, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mDecryptVerifyResult:Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    invoke-virtual {p0, p1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v10, "metadata"

    .line 573
    invoke-virtual {p0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 574
    invoke-virtual {v9, p0}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_3
    if-eqz p0, :cond_4

    .line 582
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v11}, Lorg/openintents/openpgp/OpenPgpMetadata;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    .line 584
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 586
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v11}, Lorg/openintents/openpgp/OpenPgpMetadata;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    if-nez p1, :cond_5

    const-string p1, "application/pgp-keys"

    .line 589
    invoke-virtual {v11}, Lorg/openintents/openpgp/OpenPgpMetadata;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 591
    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    move-object p1, v2

    .line 595
    :goto_1
    invoke-virtual {p1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 597
    invoke-virtual {v9, v4}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 598
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-nez p0, :cond_6

    .line 600
    invoke-virtual {v11}, Lorg/openintents/openpgp/OpenPgpMetadata;->getMimeType()Ljava/lang/String;

    move-result-object p0

    const-string v2, "text/*"

    invoke-static {p0, v2}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 601
    new-instance p0, Landroid/content/pm/LabeledIntent;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-class p1, Lorg/sufficientlysecure/keychain/ui/DisplayTextActivity;

    .line 603
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "result"

    iget-object v10, v10, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mDecryptVerifyResult:Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    .line 604
    invoke-virtual {p1, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v10

    const-string p1, "metadata"

    .line 605
    invoke-virtual {v10, p1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "org.sufficientlysecure.keychain"

    invoke-direct {p0, v10, v11, v6, v5}, Landroid/content/pm/LabeledIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;II)V

    const-string v10, "android.intent.extra.INITIAL_INTENTS"

    .line 607
    new-array v11, v7, [Landroid/os/Parcelable;

    aput-object p0, v11, v3

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 611
    :cond_6
    invoke-virtual {v9, v1}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;--->displayWithViewIntent(Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;IZZ)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$displayBottomSheet$0$DecryptListFragment(Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;ILandroid/view/MenuItem;)Z
    .locals 2

    .line 500
    invoke-interface {p3}, Landroid/view/MenuItem;->getItemId()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 505
    :pswitch_0
    invoke-virtual {p0, p1, p2, v1, v1}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->displayWithViewIntent(Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;IZZ)V

    goto :goto_0

    .line 509
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->saveFileDialog(Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;I)V

    goto :goto_0

    .line 502
    :pswitch_2
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->displayWithViewIntent(Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;IZZ)V

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x7f09011a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 217
    invoke-super {v5, v6}, Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 221
    :goto_0
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "input_uris"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "cancelled_uris"

    .line 222
    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "results"

    .line 223
    invoke-virtual {v6, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/util/ParcelableHashMap;

    const-string v3, "can_delete"

    const/4 v4, 0x0

    .line 225
    invoke-virtual {v6, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v5, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCanDelete:Z

    const-string v3, "is_autocrypt_setup"

    .line 226
    invoke-virtual {v6, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v5, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mIsAutocryptSetup:Z

    if-eqz v2, :cond_1

    .line 229
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/util/ParcelableHashMap;->getMap()Ljava/util/HashMap;

    move-result-object v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 228
    :goto_1
    invoke-direct {v5, v0, v1, v6}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->displayInputUris(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    const/16 v0, 0x7007

    if-eq v2, v0, :cond_0

    .line 281
    invoke-super {v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, -0x1

    if-ne v3, v2, :cond_1

    if-eqz p0, :cond_1

    .line 273
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 274
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->saveFile(Landroid/net/Uri;)V

    const/4 v2, 0x0

    .line 275
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCurrentInputUri:Landroid/net/Uri;

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    move-object/16 p0, p3

    const p0, 0x7f0c004d

    const/4 v0, 0x0

    .line 166
    invoke-virtual {v3, p0, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090120

    .line 168
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    .line 170
    new-instance p0, Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;

    .line 171
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/FormattingUtils;->dpToPx(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/SpacesItemDecoration;-><init>(I)V

    .line 170
    invoke-virtual {v4, p0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    const/4 p0, 0x1

    .line 172
    invoke-virtual {v4, p0}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 173
    new-instance p0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 174
    new-instance p0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$1;

    invoke-direct {p0, v2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;)V

    invoke-virtual {v4, p0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 181
    new-instance p0, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;

    invoke-direct {p0, v2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;-><init>(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;)V

    iput-object p0, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;

    .line 182
    iget-object p0, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;

    invoke-virtual {v4, p0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-object v3

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCryptoOperationCancelled()V
    .locals 6

    move-object/16 v3, p0

    .line 388
    invoke-super {v3}, Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;->onCryptoOperationCancelled()V

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;--->onCryptoOperationCancelled()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCurrentInputUri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 391
    iput-object v1, v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCurrentInputUri:Landroid/net/Uri;

    .line 393
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCancelledInputUris:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->setCancelled(Landroid/net/Uri;Z)V

    .line 396
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->cryptoOperation()V

    return-void
.end method

.method public onCryptoSetProgress(Ljava/lang/String;II)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    move/16 p0, p3

    .line 333
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCurrentInputUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4, p0, v3}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->setProgress(Landroid/net/Uri;IILjava/lang/String;)V

    const/4 v3, 0x1

    return v3

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;--->onCryptoSetProgress(Ljava/lang/String;II)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 734
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->access$200(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;)Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->access$200(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;)Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->hasResult()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 739
    :cond_0
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mPendingInputUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 743
    :cond_1
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 748
    :cond_2
    iget-object v3, v5, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->access$200(Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;)Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;

    move-result-object v3

    .line 749
    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    const v4, 0x7f090111

    if-eq v6, v4, :cond_4

    const v4, 0x7f090389

    if-eq v6, v4, :cond_3

    return v1

    .line 751
    :cond_3
    new-instance v6, Landroid/content/Intent;

    const-class v1, Lorg/sufficientlysecure/keychain/ui/LogDisplayActivity;

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "log"

    .line 752
    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mResult:Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    invoke-virtual {v6, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 753
    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 756
    :cond_4
    iget-object v6, v3, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter$ViewModel;->mInputUri:Landroid/net/Uri;

    invoke-direct {v5, v0, v6}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->deleteFile(Landroid/app/Activity;Landroid/net/Uri;)V

    return v2

    :cond_5
    :goto_0
    return v1

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;--->onMenuItemClick(Landroid/view/MenuItem;)Z"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onQueuedOperationError(Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 339
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCurrentInputUri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 340
    iput-object v1, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCurrentInputUri:Landroid/net/Uri;

    .line 342
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "com.fsck.k9.attachmentprovider"

    .line 343
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f110193

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 347
    :cond_0
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;

    invoke-virtual {v1, v0, v5}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->addResult(Landroid/net/Uri;Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;)V

    .line 349
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->cryptoOperation()V

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;--->onQueuedOperationError(Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onQueuedOperationError(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 116
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->onQueuedOperationError(Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;)V

    return-void
.end method

.method public onQueuedOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;)V
    .locals 15

    move-object/16 v12, p0

    move-object/16 v13, p1

    .line 354
    iget-object v0, v12, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCurrentInputUri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 355
    iput-object v1, v12, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCurrentInputUri:Landroid/net/Uri;

    .line 357
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 359
    iget-object v2, v12, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mInputDataResults:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v12, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mPendingInputUris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 363
    iget-object v2, v13, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mMetadata:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 364
    :goto_1
    iget-object v5, v13, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mMetadata:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openintents/openpgp/OpenPgpMetadata;

    const-string v6, "text/plain"

    .line 365
    invoke-virtual {v5}, Lorg/openintents/openpgp/OpenPgpMetadata;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 366
    invoke-virtual {v5}, Lorg/openintents/openpgp/OpenPgpMetadata;->getOriginalSize()J

    move-result-wide v7

    const-wide/32 v9, 0xc800

    cmp-long v11, v7, v9

    if-lez v11, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v2, :cond_3

    if-eqz v6, :cond_3

    if-nez v3, :cond_3

    .line 369
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/sufficientlysecure/keychain/ui/DisplayTextActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, v13, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mOutputUris:Ljava/util/ArrayList;

    .line 370
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    const-string v3, "text/plain"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "result"

    iget-object v13, v13, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;->mDecryptVerifyResult:Lorg/sufficientlysecure/keychain/operations/results/DecryptVerifyResult;

    .line 371
    invoke-virtual {v0, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v13

    const-string v0, "metadata"

    .line 372
    invoke-virtual {v13, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v13

    .line 373
    invoke-virtual {v1, v13}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 374
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    .line 380
    :cond_3
    iget-object v1, v12, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mInputDataResults:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-direct {v12, v0}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->processResult(Landroid/net/Uri;)V

    .line 383
    invoke-virtual {v12}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->cryptoOperation()V

    return-void

    const-string v14, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;--->onQueuedOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;)V"

    invoke-static/range {v14 .. v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onQueuedOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/OperationResult;)V
    .locals 0

    .line 116
    check-cast p1, Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->onQueuedOperationSuccess(Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    move-object/16 v4, p2

    move-object/16 p0, p3

    const/16 v0, 0xc

    if-eq v3, v0, :cond_0

    .line 686
    invoke-super {v2, v3, v4, p0}, Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;--->onRequestPermissionsResult(I[Ljava/lang/String;[I)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 690
    :cond_0
    array-length v3, p0

    const/4 v4, 0x1

    const/4 v0, 0x0

    if-lez v3, :cond_1

    aget v3, p0, v0

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 696
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCancelledInputUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 697
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 698
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    const-string p0, "file"

    .line 699
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    .line 702
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 703
    iget-object p0, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mPendingInputUris:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    iget-object p0, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;

    invoke-virtual {p0, v4, v0}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->setCancelled(Landroid/net/Uri;Z)V

    goto :goto_1

    .line 710
    :cond_3
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCancelledInputUris:Ljava/util/ArrayList;

    iget-object p0, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCurrentInputUri:Landroid/net/Uri;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;

    iget-object p0, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCurrentInputUri:Landroid/net/Uri;

    invoke-virtual {v3, p0, v4}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->setCancelled(Landroid/net/Uri;Z)V

    const/4 v3, 0x0

    .line 713
    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCurrentInputUri:Landroid/net/Uri;

    .line 714
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mPendingInputUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 715
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 716
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    const-string v0, "file"

    .line 717
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    .line 720
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 721
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCancelledInputUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;

    invoke-virtual {v0, p0, v4}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->setCancelled(Landroid/net/Uri;Z)V

    goto :goto_2

    .line 728
    :cond_5
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->cryptoOperation()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 189
    invoke-super {v4, v5}, Lorg/sufficientlysecure/keychain/ui/base/QueueingCryptoOperationFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;--->onSaveInstanceState(Landroid/os/Bundle;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "input_uris"

    .line 191
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mInputUris:Ljava/util/ArrayList;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 193
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mInputUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 194
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mInputUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 195
    iget-object v3, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mPendingInputUris:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 198
    :cond_1
    iget-object v3, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;

    invoke-virtual {v3, v2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->getItemResult(Landroid/net/Uri;)Lorg/sufficientlysecure/keychain/operations/results/InputDataResult;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 200
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v1, "results"

    .line 204
    new-instance v2, Lorg/sufficientlysecure/keychain/util/ParcelableHashMap;

    invoke-direct {v2, v0}, Lorg/sufficientlysecure/keychain/util/ParcelableHashMap;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "output_uris"

    .line 205
    new-instance v1, Lorg/sufficientlysecure/keychain/util/ParcelableHashMap;

    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mInputDataResults:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/util/ParcelableHashMap;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "cancelled_uris"

    .line 206
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCancelledInputUris:Ljava/util/ArrayList;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "can_delete"

    .line 207
    iget-boolean v1, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCanDelete:Z

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "is_autocrypt_setup"

    .line 208
    iget-boolean v1, v4, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mIsAutocryptSetup:Z

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public retryUri(Landroid/net/Uri;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 478
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCurrentInputUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    return-void

    .line 483
    :cond_0
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mCancelledInputUris:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 484
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mInputDataResults:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mPendingInputUris:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment$DecryptFilesAdapter;->resetItemData(Landroid/net/Uri;)V

    .line 489
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;->cryptoOperation()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/DecryptListFragment;--->retryUri(Landroid/net/Uri;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
