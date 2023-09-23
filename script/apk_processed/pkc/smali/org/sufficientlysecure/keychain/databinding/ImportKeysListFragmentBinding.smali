.class public Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ImportKeysListFragmentBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final basic:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;

.field private mAdvanced:Z

.field private mDirtyFlags:J

.field private mNumber:I

.field private mStatus:I

.field private final mboundView0:Landroid/widget/RelativeLayout;

.field private final mboundView1:Landroid/widget/ProgressBar;

.field private final mboundView2:Landroid/widget/TextView;

.field private final mboundView3:Landroid/widget/TextView;

.field private final mboundView4:Landroid/widget/LinearLayout;

.field private final mboundView5:Landroid/widget/LinearLayout;

.field public final recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 16
    new-instance v0, Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    .line 17
    sget-object v0, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "import_keys_list_basic_item"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [I

    const/4 v5, 0x7

    aput v5, v3, v4

    new-array v1, v1, [I

    const v5, 0x7f0c0085

    aput v5, v1, v4

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    return-void

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;---><clinit>()V"

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

    .line 320
    iput-wide v1, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mDirtyFlags:J

    .line 53
    sget-object v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v3, 0x8

    invoke-static {v5, v6, v3, v1, v2}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v5

    const/4 v1, 0x7

    .line 54
    aget-object v1, v5, v1

    check-cast v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->basic:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;

    .line 55
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->basic:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;

    invoke-virtual {v4, v1}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->setContainedBinding(Landroid/databinding/ViewDataBinding;)V

    const/4 v1, 0x0

    .line 56
    aget-object v1, v5, v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mboundView0:Landroid/widget/RelativeLayout;

    .line 57
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mboundView0:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 58
    aget-object v0, v5, v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mboundView1:Landroid/widget/ProgressBar;

    .line 59
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mboundView1:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 60
    aget-object v0, v5, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mboundView2:Landroid/widget/TextView;

    .line 61
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mboundView2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x3

    .line 62
    aget-object v0, v5, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mboundView3:Landroid/widget/TextView;

    .line 63
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mboundView3:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 64
    aget-object v0, v5, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mboundView4:Landroid/widget/LinearLayout;

    .line 65
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mboundView4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 66
    aget-object v0, v5, v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mboundView5:Landroid/widget/LinearLayout;

    .line 67
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mboundView5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x6

    .line 68
    aget-object v5, v5, v0

    check-cast v5, Landroid/support/v7/widget/RecyclerView;

    iput-object v5, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 69
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v4, v6}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->setRootTag(Landroid/view/View;)V

    .line 72
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->invalidateAll()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;---><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static bind(Landroid/view/View;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;
    .locals 4

    move-object/16 v1, p0

    .line 340
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;

    move-result-object v1

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;--->bind(Landroid/view/View;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    const-string v0, "layout/import_keys_list_fragment_0"

    .line 344
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
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

    .line 347
    :cond_0
    new-instance v0, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;

    invoke-direct {v0, v3, v2}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;--->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;
    .locals 4

    move-object/16 v1, p0

    .line 332
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;

    move-result-object v1

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;--->inflate(Landroid/view/LayoutInflater;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    const v0, 0x7f0c0087

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 336
    invoke-virtual {v3, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;

    move-result-object v3

    return-object v3

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;--->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 324
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;

    move-result-object v1

    return-object v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;--->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    const v0, 0x7f0c0087

    .line 328
    invoke-static {v1, v0, v2, v3, p0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;

    return-object v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;--->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private onChangeBasic(Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;I)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move/16 v6, p2

    if-nez v6, :cond_0

    .line 165
    monitor-enter v4

    .line 166
    :try_start_0
    iget-wide v5, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long v2, v5, v0

    iput-wide v2, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mDirtyFlags:J

    .line 167
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

    const-string p1, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;--->onChangeBasic(Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;I)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected executeBindings()V
    .locals 29

    move-object/16 v26, p0

    move-object/from16 v1, v26

    .line 176
    monitor-enter v26

    .line 177
    :try_start_0
    iget-wide v2, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 178
    iput-wide v4, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mDirtyFlags:J

    .line 179
    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iget v6, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mStatus:I

    .line 184
    iget-boolean v7, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mAdvanced:Z

    .line 192
    iget v8, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mNumber:I

    const-wide/16 v9, 0x12

    and-long v11, v2, v9

    cmp-long v13, v11, v4

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-eqz v13, :cond_10

    const/4 v13, 0x3

    if-ne v6, v13, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    if-nez v6, :cond_1

    const/16 v17, 0x1

    goto :goto_1

    :cond_1
    const/16 v17, 0x0

    :goto_1
    if-ne v6, v15, :cond_2

    const/16 v18, 0x1

    goto :goto_2

    :cond_2
    const/16 v18, 0x0

    :goto_2
    const/4 v14, 0x2

    if-ne v6, v14, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    cmp-long v14, v11, v4

    if-eqz v14, :cond_5

    if-eqz v13, :cond_4

    const-wide/16 v11, 0x400

    or-long v20, v2, v11

    goto :goto_4

    :cond_4
    const-wide/16 v11, 0x200

    or-long v20, v2, v11

    goto :goto_4

    :cond_5
    move-wide/from16 v20, v2

    :goto_4
    and-long v2, v20, v9

    cmp-long v11, v2, v4

    if-eqz v11, :cond_7

    if-eqz v17, :cond_6

    const-wide/16 v2, 0x40

    or-long v11, v20, v2

    goto :goto_5

    :cond_6
    const-wide/16 v2, 0x20

    or-long v11, v20, v2

    goto :goto_5

    :cond_7
    move-wide/from16 v11, v20

    :goto_5
    and-long v2, v11, v9

    cmp-long v14, v2, v4

    if-eqz v14, :cond_9

    if-eqz v18, :cond_8

    const-wide/16 v2, 0x100

    or-long v20, v11, v2

    goto :goto_6

    :cond_8
    const-wide/16 v2, 0x80

    or-long v20, v11, v2

    goto :goto_6

    :cond_9
    move-wide/from16 v20, v11

    :goto_6
    and-long v2, v20, v9

    cmp-long v11, v2, v4

    if-eqz v11, :cond_b

    if-eqz v6, :cond_a

    const-wide/32 v2, 0x40000

    or-long v11, v20, v2

    :goto_7
    move-wide v2, v11

    goto :goto_8

    :cond_a
    const-wide/32 v2, 0x20000

    or-long v11, v20, v2

    goto :goto_7

    :cond_b
    move-wide/from16 v2, v20

    :goto_8
    if-eqz v13, :cond_c

    const/4 v11, 0x0

    goto :goto_9

    :cond_c
    const/16 v11, 0x8

    :goto_9
    if-eqz v17, :cond_d

    const/4 v12, 0x0

    goto :goto_a

    :cond_d
    const/16 v12, 0x8

    :goto_a
    if-eqz v18, :cond_e

    const/4 v13, 0x0

    goto :goto_b

    :cond_e
    const/16 v13, 0x8

    :goto_b
    if-eqz v6, :cond_f

    const/4 v6, 0x0

    goto :goto_c

    :cond_f
    const/16 v6, 0x8

    goto :goto_c

    :cond_10
    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_c
    const-wide/16 v17, 0x1c

    and-long v20, v2, v17

    cmp-long v14, v20, v4

    const-wide/32 v22, 0x8000

    if-eqz v14, :cond_12

    cmp-long v14, v20, v4

    if-eqz v14, :cond_12

    if-eqz v7, :cond_11

    const-wide/32 v20, 0x10000

    or-long v24, v2, v20

    move-wide/from16 v2, v24

    goto :goto_d

    :cond_11
    or-long v20, v2, v22

    move-wide/from16 v2, v20

    :cond_12
    :goto_d
    and-long v20, v2, v22

    cmp-long v14, v20, v4

    if-eqz v14, :cond_13

    if-ne v8, v15, :cond_13

    const/4 v14, 0x1

    goto :goto_e

    :cond_13
    const/4 v14, 0x0

    :goto_e
    and-long v20, v2, v17

    cmp-long v22, v20, v4

    if-eqz v22, :cond_19

    if-eqz v7, :cond_14

    const/4 v14, 0x1

    :cond_14
    cmp-long v7, v20, v4

    if-eqz v7, :cond_16

    if-eqz v14, :cond_15

    const-wide/16 v20, 0x1000

    or-long v22, v2, v20

    const-wide/16 v2, 0x4000

    or-long v20, v22, v2

    :goto_f
    move-wide/from16 v2, v20

    goto :goto_10

    :cond_15
    const-wide/16 v20, 0x800

    or-long v22, v2, v20

    const-wide/16 v2, 0x2000

    or-long v20, v22, v2

    goto :goto_f

    :cond_16
    :goto_10
    if-eqz v14, :cond_17

    const/16 v7, 0x8

    goto :goto_11

    :cond_17
    const/4 v7, 0x0

    :goto_11
    if-eqz v14, :cond_18

    goto :goto_12

    :cond_18
    const/16 v16, 0x8

    :goto_12
    move/from16 v14, v16

    goto :goto_13

    :cond_19
    const/4 v7, 0x0

    const/4 v14, 0x0

    :goto_13
    const-wide/16 v15, 0x18

    and-long v19, v2, v15

    cmp-long v15, v19, v4

    if-eqz v15, :cond_1a

    .line 299
    iget-object v15, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->basic:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;

    invoke-virtual {v15, v8}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->setNumber(I)V

    :cond_1a
    and-long v15, v2, v9

    cmp-long v8, v15, v4

    if-eqz v8, :cond_1b

    .line 304
    iget-object v8, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mboundView1:Landroid/widget/ProgressBar;

    invoke-virtual {v8, v13}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 305
    iget-object v8, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mboundView2:Landroid/widget/TextView;

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    iget-object v8, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mboundView3:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    iget-object v8, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mboundView4:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1b
    and-long v8, v2, v17

    cmp-long v2, v8, v4

    if-eqz v2, :cond_1c

    .line 312
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mboundView5:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 313
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v14}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 315
    :cond_1c
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->basic:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->executeBindingsOn(Landroid/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 179
    :try_start_1
    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    const-string v27, "M_InsDal"

    const-string v28, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;--->executeBindings()V"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getAdvanced()Z
    .locals 4

    move-object/16 v1, p0

    .line 135
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mAdvanced:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;--->getAdvanced()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getNumber()I
    .locals 4

    move-object/16 v1, p0

    .line 146
    iget v0, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mNumber:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;--->getNumber()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getStatus()I
    .locals 4

    move-object/16 v1, p0

    .line 124
    iget v0, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mStatus:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;--->getStatus()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hasPendingBindings()Z
    .locals 8

    move-object/16 v5, p0

    .line 86
    monitor-enter v5

    .line 87
    :try_start_0
    iget-wide v0, v5, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v0, 0x1

    if-eqz v4, :cond_0

    .line 88
    monitor-exit v5

    return v0

    .line 90
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->basic:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->hasPendingBindings()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 90
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;--->hasPendingBindings()Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public invalidateAll()V
    .locals 5

    move-object/16 v2, p0

    .line 77
    monitor-enter v2

    const-wide/16 v0, 0x10

    .line 78
    :try_start_0
    iput-wide v0, v2, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mDirtyFlags:J

    .line 79
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->basic:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->invalidateAll()V

    .line 81
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 79
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;--->invalidateAll()V"

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

    .line 159
    :cond_0
    check-cast v2, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;

    invoke-direct {v0, v2, p0}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->onChangeBasic(Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;I)Z

    move-result v1

    return v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;--->onFieldChange(ILjava/lang/Object;I)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setAdvanced(Z)V
    .locals 9

    move-object/16 v6, p0

    move/16 v7, p1

    .line 127
    iput-boolean v7, v6, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mAdvanced:Z

    .line 128
    monitor-enter v6

    .line 129
    :try_start_0
    iget-wide v0, v6, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long v4, v0, v2

    iput-wide v4, v6, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mDirtyFlags:J

    .line 130
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x1

    .line 131
    invoke-virtual {v6, v7}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->notifyPropertyChanged(I)V

    .line 132
    invoke-super {v6}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v7

    .line 130
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;--->setAdvanced(Z)V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 151
    invoke-super {v1, v2}, Landroid/databinding/ViewDataBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;--->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->basic:Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;

    invoke-virtual {v0, v2}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->setLifecycleOwner(Landroid/arch/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setNumber(I)V
    .locals 9

    move-object/16 v6, p0

    move/16 v7, p1

    .line 138
    iput v7, v6, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mNumber:I

    .line 139
    monitor-enter v6

    .line 140
    :try_start_0
    iget-wide v0, v6, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long v4, v0, v2

    iput-wide v4, v6, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mDirtyFlags:J

    .line 141
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x4

    .line 142
    invoke-virtual {v6, v7}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->notifyPropertyChanged(I)V

    .line 143
    invoke-super {v6}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v7

    .line 141
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;--->setNumber(I)V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setStatus(I)V
    .locals 9

    move-object/16 v6, p0

    move/16 v7, p1

    .line 116
    iput v7, v6, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mStatus:I

    .line 117
    monitor-enter v6

    .line 118
    :try_start_0
    iget-wide v0, v6, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, v6, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->mDirtyFlags:J

    .line 119
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x5

    .line 120
    invoke-virtual {v6, v7}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->notifyPropertyChanged(I)V

    .line 121
    invoke-super {v6}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v7

    .line 119
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;--->setStatus(I)V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    move-object/16 v4, p2

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-ne v1, v3, :cond_0

    .line 101
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->setStatus(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v3, :cond_1

    .line 104
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->setAdvanced(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne v1, v3, :cond_2

    .line 107
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;->setNumber(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListFragmentBinding;--->setVariable(ILjava/lang/Object;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
