.class public Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ImportKeysListItemBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final card:Landroid/support/v7/widget/CardView;

.field public final container:Landroid/widget/LinearLayout;

.field public final extra:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;

.field public final extraContainer:Landroid/widget/FrameLayout;

.field private mDirtyFlags:J

.field private mEntry:Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

.field private mNonInteractive:Z

.field private final mboundView1:Landroid/widget/TextView;

.field private final mboundView2:Landroid/widget/TextView;

.field private final mboundView3:Landroid/widget/TextView;

.field public final progress:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 16
    new-instance v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    .line 17
    sget-object v0, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "import_keys_list_item_extra"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    const/4 v5, 0x5

    aput v5, v3, v4

    new-array v1, v1, [I

    const v5, 0x7f0c0089

    aput v5, v1, v4

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 21
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 22
    sget-object v0, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0900eb

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090271

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;---><clinit>()V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    const/4 v0, 0x1

    .line 52
    invoke-direct {v4, v5, v6, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 208
    iput-wide v1, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->mDirtyFlags:J

    .line 53
    sget-object v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0x8

    invoke-static {v5, v6, v3, v1, v2}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v5

    const/4 v1, 0x0

    .line 54
    aget-object v1, v5, v1

    check-cast v1, Landroid/support/v7/widget/CardView;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->card:Landroid/support/v7/widget/CardView;

    .line 55
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->card:Landroid/support/v7/widget/CardView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/CardView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x6

    .line 56
    aget-object v1, v5, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->container:Landroid/widget/LinearLayout;

    const/4 v1, 0x5

    .line 57
    aget-object v1, v5, v1

    check-cast v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->extra:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;

    .line 58
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->extra:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;

    invoke-virtual {v4, v1}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    const/4 v1, 0x4

    .line 59
    aget-object v1, v5, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->extraContainer:Landroid/widget/FrameLayout;

    .line 60
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->extraContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 61
    aget-object v0, v5, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->mboundView1:Landroid/widget/TextView;

    .line 62
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->mboundView1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 63
    aget-object v0, v5, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->mboundView2:Landroid/widget/TextView;

    .line 64
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->mboundView2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 65
    aget-object v0, v5, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->mboundView3:Landroid/widget/TextView;

    .line 66
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->mboundView3:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x7

    .line 67
    aget-object v5, v5, v0

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->progress:Landroid/widget/ProgressBar;

    .line 68
    invoke-virtual {v4, v6}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->setRootTag(Landroid/view/View;)V

    .line 70
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->invalidateAll()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;---><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static bind(Landroid/view/View;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;
    .locals 4

    move-object/16 v1, p0

    .line 228
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;

    move-result-object v1

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;--->bind(Landroid/view/View;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    const-string v0, "layout/import_keys_list_item_0"

    .line 232
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "view tag isn\'t correct on view:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 235
    :cond_0
    new-instance v0, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;

    invoke-direct {v0, v3, v2}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;--->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;
    .locals 4

    move-object/16 v1, p0

    .line 220
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;

    move-result-object v1

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;--->inflate(Landroid/view/LayoutInflater;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    const v0, 0x7f0c0088

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 224
    invoke-virtual {v3, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;

    move-result-object v3

    return-object v3

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;--->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 212
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;

    move-result-object v1

    return-object v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;--->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    const v0, 0x7f0c0088

    .line 216
    invoke-static {v1, v0, v2, v3, p0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;

    return-object v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;--->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onChangeExtra(Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;I)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move/16 v6, p2

    if-nez v6, :cond_0

    .line 145
    monitor-enter v4

    .line 146
    :try_start_0
    iget-wide v5, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, v5, v0

    iput-wide v2, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->mDirtyFlags:J

    .line 147
    monitor-exit v4

    const/4 v5, 0x1

    return v5

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_0
    const/4 v5, 0x0

    return v5

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;--->onChangeExtra(Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;I)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected executeBindings()V
    .locals 16

    move-object/16 v13, p0

    .line 156
    monitor-enter v13

    .line 157
    :try_start_0
    iget-wide v0, v13, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 158
    iput-wide v2, v13, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->mDirtyFlags:J

    .line 159
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    iget-object v4, v13, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->mEntry:Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    const-wide/16 v5, 0xa

    and-long v7, v0, v5

    cmp-long v0, v7, v2

    const/4 v1, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    if-eqz v4, :cond_0

    .line 175
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->isRevokedOrExpiredOrInsecure()Z

    move-result v1

    .line 179
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getDate()Ljava/util/Date;

    move-result-object v6

    .line 181
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->isSecretKey()Z

    move-result v9

    .line 183
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;->getPrimaryUserId()Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;

    move-result-object v10

    move v12, v9

    move v9, v1

    move v1, v12

    goto :goto_0

    :cond_0
    move-object v0, v5

    move-object v6, v0

    move-object v10, v6

    const/4 v9, 0x0

    :goto_0
    if-eqz v10, :cond_1

    .line 189
    iget-object v5, v10, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->email:Ljava/lang/String;

    .line 191
    iget-object v10, v10, Lorg/openintents/openpgp/util/OpenPgpUtils$UserId;->name:Ljava/lang/String;

    move-object v12, v6

    move-object v6, v5

    move-object v5, v10

    move-object v10, v12

    goto :goto_1

    :cond_1
    move-object v10, v6

    move-object v6, v5

    goto :goto_1

    :cond_2
    move-object v0, v5

    move-object v6, v0

    move-object v10, v6

    const/4 v9, 0x0

    :goto_1
    cmp-long v11, v7, v2

    if-eqz v11, :cond_3

    .line 198
    iget-object v2, v13, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->extra:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;

    invoke-virtual {v2, v4}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->setEntry(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)V

    .line 199
    iget-object v2, v13, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->mboundView1:Landroid/widget/TextView;

    invoke-static {v2, v5, v1, v9, v0}, Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysBindings;->setUserId(Landroid/widget/TextView;Ljava/lang/CharSequence;ZZLjava/lang/String;)V

    .line 200
    iget-object v1, v13, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->mboundView2:Landroid/widget/TextView;

    invoke-static {v1, v6, v9, v0}, Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysBindings;->setUserEmail(Landroid/widget/TextView;Ljava/lang/CharSequence;ZLjava/lang/String;)V

    .line 201
    iget-object v0, v13, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->mboundView3:Landroid/widget/TextView;

    invoke-static {v0, v10, v9}, Lorg/sufficientlysecure/keychain/ui/bindings/ImportKeysBindings;->setCreation(Landroid/widget/TextView;Ljava/util/Date;Z)V

    .line 203
    :cond_3
    iget-object v0, v13, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->extra:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    .line 159
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    const-string v14, "M_InsDal"

    const-string v15, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;--->executeBindings()V"

    invoke-static/range {v14 .. v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getEntry()Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;
    .locals 4

    move-object/16 v1, p0

    .line 120
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->mEntry:Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;--->getEntry()Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getNonInteractive()Z
    .locals 4

    move-object/16 v1, p0

    .line 126
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->mNonInteractive:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;--->getNonInteractive()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hasPendingBindings()Z
    .locals 8

    move-object/16 v5, p0

    .line 84
    monitor-enter v5

    .line 85
    :try_start_0
    iget-wide v0, v5, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x1

    if-eqz v4, :cond_0

    .line 86
    monitor-exit v5

    return v0

    .line 88
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->extra:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 88
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;--->hasPendingBindings()Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public invalidateAll()V
    .locals 5

    move-object/16 v2, p0

    .line 75
    monitor-enter v2

    const-wide/16 v0, 0x8

    .line 76
    :try_start_0
    iput-wide v0, v2, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->mDirtyFlags:J

    .line 77
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->extra:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->invalidateAll()V

    .line 79
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 77
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;--->invalidateAll()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 139
    :cond_0
    check-cast v2, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;

    invoke-direct {v0, v2, p0}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->onChangeExtra(Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;I)Z

    move-result v1

    return v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;--->onFieldChange(ILjava/lang/Object;I)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setEntry(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)V
    .locals 9

    move-object/16 v6, p0

    move-object/16 v7, p1

    .line 111
    iput-object v7, v6, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->mEntry:Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    .line 112
    monitor-enter v6

    .line 113
    :try_start_0
    iget-wide v0, v6, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, v6, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->mDirtyFlags:J

    .line 114
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x2

    .line 115
    invoke-virtual {v6, v7}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->notifyPropertyChanged(I)V

    .line 116
    invoke-super {v6}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v7

    .line 114
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;--->setEntry(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 131
    invoke-super {v1, v2}, Landroid/databinding/ViewDataBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;--->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->extra:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemExtraBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setNonInteractive(Z)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 123
    iput-boolean v1, v0, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->mNonInteractive:Z

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;--->setNonInteractive(Z)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move-object/16 v3, p2

    const/4 v0, 0x2

    if-ne v0, v2, :cond_0

    .line 99
    check-cast v3, Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;

    invoke-virtual {v1, v3}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->setEntry(Lorg/sufficientlysecure/keychain/keyimport/ImportKeysListEntry;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne v0, v2, :cond_1

    .line 102
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;->setNonInteractive(Z)V

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListItemBinding;--->setVariable(ILjava/lang/Object;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
