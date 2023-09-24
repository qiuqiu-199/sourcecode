.class public Lorg/sufficientlysecure/keychain/ui/KeyListFragment;
.super Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;
.source "KeyListFragment.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;
.implements Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;
.implements Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;
.implements Lorg/sufficientlysecure/keychain/util/FabContainer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment<",
        "Leu/davidea/flexibleadapter/FlexibleAdapter<",
        "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem;",
        ">;>;",
        "Landroid/support/v7/widget/SearchView$OnQueryTextListener;",
        "Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemClickListener;",
        "Leu/davidea/flexibleadapter/FlexibleAdapter$OnItemLongClickListener;",
        "Lorg/sufficientlysecure/keychain/util/FabContainer;"
    }
.end annotation


# static fields
.field static final REQUEST_ACTION:I = 0x1

.field private static final REQUEST_DELETE:I = 0x2

.field private static final REQUEST_VIEW_KEY:I = 0x3


# instance fields
.field private fastScroller:Leu/davidea/fastscroller/FastScroller;

.field private flexibleKeyItemFactory:Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItemFactory;

.field private keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

.field private final mActionCallback:Landroid/view/ActionMode$Callback;

.field private mActionMode:Landroid/view/ActionMode;

.field private mFab:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

.field private queuedHighlightMasterKeyId:Ljava/lang/Long;

.field private vSearchButton:Landroid/widget/Button;

.field private vSearchContainer:Landroid/widget/ViewAnimator;


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 86
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->mActionMode:Landroid/view/ActionMode;

    .line 105
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$1;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;)V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->mActionCallback:Landroid/view/ActionMode$Callback;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;)[J
    .locals 0

    .line 86
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getSelectedMasterKeyIds()[J

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;[J)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->multiSelectEncrypt([J)V

    return-void
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;)Z
    .locals 0

    .line 86
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->isAnySecretKeySelected()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;[JZ)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->multiSelectDelete([JZ)V

    return-void
.end method

.method static synthetic access$402(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$500(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->showClipboardDataSnackbar()V

    return-void
.end method

.method private benchmark()V
    .locals 7

    move-object/16 v4, p0

    .line 616
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$6;

    invoke-direct {v0, v4}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$6;-><init>(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;)V

    .line 644
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    const v2, 0x7f110c10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v3, v4, v0, v2}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;-><init>(ILandroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V

    .line 645
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation()V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->benchmark()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private checkClipboardForPublicKeyMaterial()V
    .locals 5

    move-object/16 v2, p0

    .line 334
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/compatibility/ClipboardReflection;->getClipboardText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 336
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$3;

    invoke-direct {v1, v2, v0}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$3;-><init>(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 357
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->checkClipboardForPublicKeyMaterial()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private createKey()V
    .locals 6

    move-object/16 v3, p0

    .line 577
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    .line 578
    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->createKey()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getBubbleText(I)Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 312
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem;

    if-nez v2, :cond_0

    const-string v2, ""

    return-object v2

    .line 316
    :cond_0
    instance-of v0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem$FlexibleSectionableKeyItem;

    if-eqz v0, :cond_1

    .line 317
    check-cast v2, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem$FlexibleSectionableKeyItem;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem$FlexibleSectionableKeyItem;->getHeader()Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;

    move-result-object v2

    .line 318
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;->getSectionTitle()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 320
    :cond_1
    instance-of v0, v2, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;

    if-eqz v0, :cond_2

    .line 321
    check-cast v2, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyHeader;->getSectionTitle()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    const-string v2, ""

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->getBubbleText(I)Ljava/lang/String;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getSelectedMasterKeyIds()[J
    .locals 9

    move-object/16 v6, p0

    .line 168
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Leu/davidea/flexibleadapter/FlexibleAdapter;

    .line 169
    invoke-virtual {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getSelectedPositions()Ljava/util/List;

    move-result-object v1

    .line 170
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [J

    const/4 v3, 0x0

    .line 171
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 172
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-class v5, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;

    invoke-virtual {v0, v4, v5}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(ILjava/lang/Class;)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v4

    check-cast v4, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;

    if-eqz v4, :cond_0

    .line 174
    iget-object v4, v4, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v4

    aput-wide v4, v2, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->getSelectedMasterKeyIds()[J"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private importFile()V
    .locals 6

    move-object/16 v3, p0

    .line 571
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_FILE_AND_RETURN"

    .line 572
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 573
    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->importFile()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private isAnySecretKeySelected()Z
    .locals 7

    move-object/16 v4, p0

    .line 181
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Leu/davidea/flexibleadapter/FlexibleAdapter;

    .line 182
    invoke-virtual {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getSelectedPositions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 183
    const-class v3, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;

    invoke-virtual {v0, v2, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(ILjava/lang/Class;)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, v2, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->isAnySecretKeySelected()Z"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private loadFlexibleKeyItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem;",
            ">;"
        }
    .end annotation

    move-object/16 v2, p0

    .line 269
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getAllUnifiedKeyInfo()Ljava/util/List;

    move-result-object v0

    .line 270
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->flexibleKeyItemFactory:Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItemFactory;

    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItemFactory;->mapUnifiedKeyInfoToFlexibleKeyItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->loadFlexibleKeyItems()Ljava/util/List;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private maybeHighlightKey(Leu/davidea/flexibleadapter/FlexibleAdapter;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/davidea/flexibleadapter/FlexibleAdapter<",
            "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem;",
            ">;)V"
        }
    .end annotation

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 299
    iget-object v0, v6, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->queuedHighlightMasterKeyId:Ljava/lang/Long;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 302
    :goto_0
    invoke-virtual {v7}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 303
    invoke-virtual {v7, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItemId(I)J

    move-result-wide v1

    iget-object v3, v6, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->queuedHighlightMasterKeyId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 304
    invoke-virtual {v7, v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->smoothScrollToPosition(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    .line 308
    iput-object v7, v6, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->queuedHighlightMasterKeyId:Ljava/lang/Long;

    return-void

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->maybeHighlightKey(Leu/davidea/flexibleadapter/FlexibleAdapter;)V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private multiSelectDelete([JZ)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    .line 149
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/sufficientlysecure/keychain/ui/DeleteKeyDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_delete_master_key_ids"

    .line 150
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const-string v4, "extra_has_secret"

    .line 151
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v5, :cond_0

    const-string v4, "extra_keyserver"

    .line 154
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferredKeyserver()Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    move-result-object v5

    .line 153
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const/4 v4, 0x2

    .line 156
    invoke-virtual {v3, v0, v4}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->multiSelectDelete([JZ)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private multiSelectEncrypt([J)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 160
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/sufficientlysecure/keychain/ui/EncryptFilesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "org.sufficientlysecure.keychain.action.ENCRYPT_DATA"

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "org.sufficientlysecure.keychain.EXTRA_SIGNATURE_KEY_IDS"

    .line 162
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const/4 v4, 0x1

    .line 164
    invoke-virtual {v3, v0, v4}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->multiSelectEncrypt([J)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onLoadKeyItems(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem;",
            ">;)V"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 274
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Leu/davidea/flexibleadapter/FlexibleAdapter;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$2;

    invoke-direct {v0, v2, v3, v2, v1}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;Ljava/util/List;Ljava/lang/Object;Z)V

    .line 286
    invoke-virtual {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->setDisplayHeadersAtStartUp(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;

    .line 287
    invoke-virtual {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->setStickyHeaders(Z)Leu/davidea/flexibleadapter/FlexibleAdapter;

    const/4 v3, 0x2

    .line 288
    invoke-virtual {v0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->setMode(I)V

    .line 289
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 290
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->fastScroller:Leu/davidea/fastscroller/FastScroller;

    invoke-virtual {v0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->setFastScroller(Leu/davidea/fastscroller/FastScroller;)V

    .line 291
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->fastScroller:Leu/davidea/fastscroller/FastScroller;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$$Lambda$6;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$$Lambda$6;-><init>(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;)V

    invoke-virtual {v3, v1}, Leu/davidea/fastscroller/FastScroller;->setBubbleTextCreator(Leu/davidea/fastscroller/FastScroller$BubbleTextCreator;)V

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {v0, v3, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->updateDataSet(Ljava/util/List;Z)V

    .line 295
    :goto_0
    invoke-direct {v2, v0}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->maybeHighlightKey(Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->onLoadKeyItems(Ljava/util/List;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private scanQrCode()V
    .locals 6

    move-object/16 v3, p0

    .line 565
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysProxyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "org.sufficientlysecure.keychain.action.SCAN_QR_CODE_IMPORT"

    .line 566
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 567
    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->scanQrCode()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private searchCloud()V
    .locals 6

    move-object/16 v3, p0

    .line 559
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "org.sufficientlysecure.keychain.EXTRA_QUERY"

    const/4 v2, 0x0

    .line 560
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->searchCloud()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setContextTitle(I)V
    .locals 7

    move-object/16 v4, p0

    move/16 v5, p1

    .line 476
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 477
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0f000e

    .line 476
    invoke-virtual {v0, v2, v5, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 478
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, v5}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->setContextTitle(I)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private showClipboardDataSnackbar()V
    .locals 9

    move-object/16 v6, p0

    .line 361
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f110cb3

    const/4 v2, 0x0

    .line 366
    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    new-instance v4, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$$Lambda$7;

    invoke-direct {v4, v6}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$$Lambda$7;-><init>(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;)V

    const v5, 0x7f110cb2

    invoke-static/range {v0 .. v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;IILorg/sufficientlysecure/keychain/ui/util/Notify$Style;Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;I)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v0

    .line 371
    invoke-interface {v0, v6}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show(Landroid/support/v4/app/Fragment;)V

    return-void

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->showClipboardDataSnackbar()V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startSearchForQuery()V
    .locals 7

    move-object/16 v4, p0

    .line 375
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 380
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "org.sufficientlysecure.keychain.EXTRA_QUERY"

    .line 381
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Leu/davidea/flexibleadapter/FlexibleAdapter;

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getFilter(Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_KEYSERVER"

    .line 382
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    invoke-virtual {v4, v1}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->startSearchForQuery()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private toggleSelection(I)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 464
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->toggleSelection(I)V

    .line 466
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getSelectedItemCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 469
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    goto :goto_0

    .line 471
    :cond_0
    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->setContextTitle(I)V

    :goto_0
    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->toggleSelection(I)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private updateAllKeys()V
    .locals 7

    move-object/16 v4, p0

    .line 582
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$5;

    invoke-direct {v0, v4}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$5;-><init>(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;)V

    .line 610
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;

    const v2, 0x7f110c10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v3, v4, v0, v2}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;-><init>(ILandroid/support/v4/app/Fragment;Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper$Callback;Ljava/lang/Integer;)V

    const/4 v0, 0x1

    .line 611
    invoke-virtual {v1, v0}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->setProgressCancellable(Z)V

    .line 612
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/base/CryptoOperationHelper;->cryptoOperation()V

    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->updateAllKeys()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method final synthetic bridge$lambda$0$KeyListFragment()Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->loadFlexibleKeyItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final synthetic bridge$lambda$1$KeyListFragment(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->onLoadKeyItems(Ljava/util/List;)V

    return-void
.end method

.method final synthetic bridge$lambda$2$KeyListFragment(I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getBubbleText(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public fabMoveUp(I)V
    .locals 8

    move-object/16 v5, p0

    move/16 v6, p1

    .line 688
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->mFab:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    const-string v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    neg-int v6, v6

    int-to-float v6, v6

    const/4 v3, 0x1

    aput v6, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v0, 0x10e

    .line 690
    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 691
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->fabMoveUp(I)V"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public fabRestorePosition()V
    .locals 8

    move-object/16 v5, p0

    .line 696
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->mFab:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    const-string v1, "translationY"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x46

    .line 698
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v1, 0x12c

    .line 699
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 700
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->fabRestorePosition()V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final synthetic lambda$onCreateView$0$KeyListFragment(Landroid/view/View;)V
    .locals 0

    .line 208
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->mFab:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->collapse()V

    .line 209
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->scanQrCode()V

    return-void
.end method

.method final synthetic lambda$onCreateView$1$KeyListFragment(Landroid/view/View;)V
    .locals 0

    .line 212
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->mFab:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->collapse()V

    .line 213
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->searchCloud()V

    return-void
.end method

.method final synthetic lambda$onCreateView$2$KeyListFragment(Landroid/view/View;)V
    .locals 0

    .line 216
    iget-object p1, p0, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->mFab:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    invoke-virtual {p1}, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;->collapse()V

    .line 217
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->importFile()V

    return-void
.end method

.method final synthetic lambda$onCreateView$3$KeyListFragment(Landroid/view/View;)V
    .locals 0

    .line 224
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->startSearchForQuery()V

    return-void
.end method

.method final synthetic lambda$showClipboardDataSnackbar$4$KeyListFragment()V
    .locals 3

    .line 368
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "org.sufficientlysecure.keychain.action.IMPORT_KEY_FROM_CLIPBOARD"

    .line 369
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    invoke-virtual {p0, v0}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 234
    invoke-super {v3, v4}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->onActivityCreated(Landroid/os/Bundle;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_0

    .line 239
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v0, "Activity must be bound!"

    invoke-direct {v4, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const v0, 0x7f110045

    .line 241
    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentActivity;->setTitle(I)V

    const/4 v0, 0x1

    .line 244
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->setHasOptionsMenu(Z)V

    .line 246
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 248
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v0

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    .line 249
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItemFactory;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItemFactory;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->flexibleKeyItemFactory:Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItemFactory;

    .line 251
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "operation_result"

    .line 252
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "operation_result"

    .line 253
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;

    .line 254
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/operations/results/ImportKeyResult;->getImportedMasterKeyIds()[J

    move-result-object v0

    if-eqz v0, :cond_1

    .line 255
    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 256
    aget-wide v1, v0, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->queuedHighlightMasterKeyId:Ljava/lang/Long;

    .line 260
    :cond_1
    invoke-static {v3}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;

    .line 261
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$$Lambda$4;

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$$Lambda$4;-><init>(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;)V

    invoke-virtual {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/keyview/GenericViewModel;->getGenericLiveData(Landroid/content/Context;Lorg/sufficientlysecure/keychain/livedata/GenericLiveData$GenericDataLoader;)Landroid/arch/lifecycle/LiveData;

    move-result-object v0

    .line 262
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$$Lambda$5;

    invoke-direct {v1, v3}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$$Lambda$5;-><init>(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;)V

    invoke-virtual {v0, v3, v1}, Landroid/arch/lifecycle/LiveData;->observe(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V

    .line 264
    invoke-static {v4}, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;->getInstance(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;

    move-result-object v4

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;->maybeAskForAnalytics()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-eqz p0, :cond_0

    const-string v0, "operation_result"

    .line 675
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "operation_result"

    .line 676
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    .line 677
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    goto :goto_0

    .line 679
    :cond_0
    invoke-super {v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 652
    :pswitch_1
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_1
    if-eqz p0, :cond_2

    const-string v0, "operation_result"

    .line 656
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v2, "operation_result"

    .line 657
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    .line 658
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    goto :goto_0

    .line 660
    :cond_2
    invoke-super {v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    if-eqz p0, :cond_3

    const-string v0, "operation_result"

    .line 666
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v2, "operation_result"

    .line 667
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;

    .line 668
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/operations/results/OperationResult;->createNotify(Landroid/app/Activity;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v2

    invoke-interface {v2}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    goto :goto_0

    .line 670
    :cond_3
    invoke-super {v1, v2, v3, p0}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->onActivityResult(IILandroid/content/Intent;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    const v0, 0x7f0d000e

    .line 388
    invoke-virtual {v4, v0, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f090235

    .line 399
    invoke-interface {v3, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 400
    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SearchView;

    .line 403
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 406
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$4;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$4;-><init>(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;)V

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setOnActionExpandListener(Landroid/view/MenuItem;Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 420
    invoke-super {v2, v3, v4}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    move-object/16 p0, p3

    const p0, 0x7f0c0092

    const/4 v0, 0x0

    .line 199
    invoke-virtual {v3, p0, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090167

    .line 201
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    iput-object v4, v2, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->mFab:Lcom/getbase/floatingactionbutton/FloatingActionsMenu;

    const v4, 0x7f090164

    .line 203
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    const p0, 0x7f090162

    .line 204
    invoke-virtual {v3, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    const v0, 0x7f090163

    .line 205
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/getbase/floatingactionbutton/FloatingActionButton;

    .line 207
    new-instance v1, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$$Lambda$0;

    invoke-direct {v1, v2}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$$Lambda$0;-><init>(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;)V

    invoke-virtual {v4, v1}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$$Lambda$1;

    invoke-direct {v4, v2}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$$Lambda$1;-><init>(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;)V

    invoke-virtual {p0, v4}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$$Lambda$2;

    invoke-direct {v4, v2}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$$Lambda$2;-><init>(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;)V

    invoke-virtual {v0, v4}, Lcom/getbase/floatingactionbutton/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f090168

    .line 220
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Leu/davidea/fastscroller/FastScroller;

    iput-object v4, v2, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->fastScroller:Leu/davidea/fastscroller/FastScroller;

    const v4, 0x7f0902a5

    .line 222
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ViewAnimator;

    iput-object v4, v2, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->vSearchContainer:Landroid/widget/ViewAnimator;

    const v4, 0x7f0902a3

    .line 223
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v2, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->vSearchButton:Landroid/widget/Button;

    .line 224
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->vSearchButton:Landroid/widget/Button;

    new-instance p0, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$$Lambda$3;

    invoke-direct {p0, v2}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment$$Lambda$3;-><init>(Lorg/sufficientlysecure/keychain/ui/KeyListFragment;)V

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v3

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onItemClick(Landroid/view/View;I)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 425
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v3, v4}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v3

    check-cast v3, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyItem;

    const/4 v0, 0x0

    if-nez v3, :cond_0

    return v0

    .line 430
    :cond_0
    instance-of v1, v3, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDummyItem;

    if-eqz v1, :cond_1

    .line 431
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->createKey()V

    return v0

    .line 435
    :cond_1
    instance-of v1, v3, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;

    if-nez v1, :cond_2

    return v0

    .line 439
    :cond_2
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    if-eq v4, v1, :cond_3

    .line 440
    invoke-direct {v2, v4}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->toggleSelection(I)V

    const/4 v3, 0x1

    return v3

    .line 444
    :cond_3
    check-cast v3, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v3

    .line 445
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3, v4}, Lorg/sufficientlysecure/keychain/ui/keyview/ViewKeyActivity;->getViewKeyActivityIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x3

    .line 446
    invoke-virtual {v2, v3, v4}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->onItemClick(Landroid/view/View;I)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onItemLongClick(I)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 452
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0, v3}, Leu/davidea/flexibleadapter/FlexibleAdapter;->getItem(I)Leu/davidea/flexibleadapter/items/IFlexible;

    move-result-object v0

    instance-of v0, v0, Lorg/sufficientlysecure/keychain/ui/adapter/FlexibleKeyDetailsItem;

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 454
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->mActionCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->mActionMode:Landroid/view/ActionMode;

    .line 459
    :cond_0
    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->toggleSelection(I)V

    :cond_1
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->onItemLongClick(I)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 483
    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090236

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 531
    invoke-super {v4, v5}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    return v5

    .line 505
    :pswitch_0
    :try_start_0
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v1}, Lorg/sufficientlysecure/keychain/KeychainDatabase;->debugBackup(Landroid/content/Context;Z)V

    .line 506
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v0, "Backup to debug_backup.db completed"

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v5, v0, v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v5

    invoke-interface {v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v0, "IO Error"

    .line 508
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO Error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v5, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v5

    invoke-interface {v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    :goto_0
    return v2

    .line 494
    :pswitch_1
    :try_start_1
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v2}, Lorg/sufficientlysecure/keychain/KeychainDatabase;->debugBackup(Landroid/content/Context;Z)V

    .line 495
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v0, "Restored debug_backup.db"

    sget-object v3, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->OK:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v5, v0, v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v5

    invoke-interface {v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    .line 496
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/daos/DatabaseNotifyManager;->notifyAllKeysChange()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    const-string v0, "IO Error"

    .line 498
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 499
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO Error "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v0, v5, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;Ljava/lang/String;Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v5

    invoke-interface {v5}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    :goto_1
    return v2

    .line 514
    :pswitch_2
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v5

    .line 515
    invoke-virtual {v5, v2}, Lorg/sufficientlysecure/keychain/util/Preferences;->setFirstTime(Z)V

    .line 516
    new-instance v5, Landroid/content/Intent;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lorg/sufficientlysecure/keychain/ui/CreateKeyActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "first_time"

    .line 517
    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 518
    invoke-virtual {v4, v5}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->startActivity(Landroid/content/Intent;)V

    .line 519
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return v2

    .line 523
    :pswitch_3
    invoke-static {}, Lorg/sufficientlysecure/keychain/keysync/KeyserverSyncManager;->debugRunSyncNow()V

    return v2

    .line 527
    :pswitch_4
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->benchmark()V

    return v2

    .line 485
    :pswitch_5
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->createKey()V

    return v2

    .line 489
    :cond_0
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->updateAllKeys()V

    return v2

    :pswitch_data_0
    .packed-switch 0x7f09022d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    .line 543
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0, v6}, Leu/davidea/flexibleadapter/FlexibleAdapter;->setFilter(Ljava/io/Serializable;)V

    .line 544
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Leu/davidea/flexibleadapter/FlexibleAdapter;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->filterItems(J)V

    .line 546
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-le v0, v3, :cond_0

    .line 547
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->vSearchButton:Landroid/widget/Button;

    const v3, 0x7f110080

    new-array v4, v2, [Ljava/lang/Object;

    aput-object v6, v4, v1

    invoke-virtual {v5, v3, v4}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->vSearchContainer:Landroid/widget/ViewAnimator;

    invoke-virtual {v6, v2}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 549
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->vSearchContainer:Landroid/widget/ViewAnimator;

    invoke-virtual {v6, v1}, Landroid/widget/ViewAnimator;->setVisibility(I)V

    goto :goto_0

    .line 551
    :cond_0
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->vSearchContainer:Landroid/widget/ViewAnimator;

    invoke-virtual {v6, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 552
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->vSearchContainer:Landroid/widget/ViewAnimator;

    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/widget/ViewAnimator;->setVisibility(I)V

    :goto_0
    return v2

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->onQueryTextChange(Ljava/lang/String;)Z"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    const/4 v1, 0x1

    return v1

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->onQueryTextSubmit(Ljava/lang/String;)Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onStart()V
    .locals 3

    move-object/16 v0, p0

    .line 328
    invoke-super {v0}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->onStart()V

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->onStart()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->checkClipboardForPublicKeyMaterial()V

    return-void
.end method

.method public startSafeSlingerForKey(J)V
    .locals 6

    move-object/16 v3, p0

    move-wide/16 v4, p1

    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "master_key_id"

    .line 193
    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v4, 0x1

    .line 194
    invoke-virtual {v3, v0, v4}, Lorg/sufficientlysecure/keychain/ui/KeyListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/KeyListFragment;--->startSafeSlingerForKey(J)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
