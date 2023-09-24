.class public Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;
.super Landroid/databinding/ViewDataBinding;
.source "ImportKeysListBasicItemBinding.java"


# static fields
.field private static final sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field public final importKeys:Landroid/widget/Button;

.field public final listKeys:Landroid/widget/Button;

.field private mDirtyFlags:J

.field private mNonInteractive:Z

.field private mNumber:I

.field private final mboundView0:Landroid/support/v7/widget/CardView;

.field private final mboundView1:Landroid/widget/TextView;

.field private final mboundView2:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 17
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 18
    sget-object v0, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f090193

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget-object v0, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0901e2

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;---><clinit>()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    const/4 v0, 0x0

    .line 42
    invoke-direct {v4, v5, v6, v0}, Landroid/databinding/ViewDataBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 169
    iput-wide v1, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->mDirtyFlags:J

    .line 43
    sget-object v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->sIncludes:Landroid/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v2, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v3, 0x5

    invoke-static {v5, v6, v3, v1, v2}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->mapBindings(Landroid/databinding/DataBindingComponent;Landroid/view/View;ILandroid/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v5

    const/4 v1, 0x3

    .line 44
    aget-object v1, v5, v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->importKeys:Landroid/widget/Button;

    const/4 v1, 0x4

    .line 45
    aget-object v1, v5, v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->listKeys:Landroid/widget/Button;

    .line 46
    aget-object v0, v5, v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->mboundView0:Landroid/support/v7/widget/CardView;

    .line 47
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->mboundView0:Landroid/support/v7/widget/CardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 48
    aget-object v0, v5, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->mboundView1:Landroid/widget/TextView;

    .line 49
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->mboundView1:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x2

    .line 50
    aget-object v5, v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->mboundView2:Landroid/widget/LinearLayout;

    .line 51
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->mboundView2:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {v4, v6}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->setRootTag(Landroid/view/View;)V

    .line 54
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->invalidateAll()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;---><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static bind(Landroid/view/View;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;
    .locals 4

    move-object/16 v1, p0

    .line 189
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;

    move-result-object v1

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;--->bind(Landroid/view/View;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    const-string v0, "layout/import_keys_list_basic_item_0"

    .line 193
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
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

    .line 196
    :cond_0
    new-instance v0, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;

    invoke-direct {v0, v3, v2}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;-><init>(Landroid/databinding/DataBindingComponent;Landroid/view/View;)V

    return-object v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;--->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;
    .locals 4

    move-object/16 v1, p0

    .line 181
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;

    move-result-object v1

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;--->inflate(Landroid/view/LayoutInflater;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    const v0, 0x7f0c0085

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 185
    invoke-virtual {v3, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v4}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->bind(Landroid/view/View;Landroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;

    move-result-object v3

    return-object v3

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;--->inflate(Landroid/view/LayoutInflater;Landroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 173
    invoke-static {}, Landroid/databinding/DataBindingUtil;->getDefaultComponent()Landroid/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;

    move-result-object v1

    return-object v1

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;--->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    move-object/16 p0, p3

    const v0, 0x7f0c0085

    .line 177
    invoke-static {v1, v0, v2, v3, p0}, Landroid/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Landroid/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;

    return-object v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;--->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroid/databinding/DataBindingComponent;)Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected executeBindings()V
    .locals 21

    move-object/16 v18, p0

    move-object/from16 v1, v18

    .line 123
    monitor-enter v18

    .line 124
    :try_start_0
    iget-wide v2, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 125
    iput-wide v4, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->mDirtyFlags:J

    .line 126
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    .line 129
    iget v7, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->mNumber:I

    .line 130
    iget-boolean v8, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->mNonInteractive:Z

    const-wide/16 v9, 0x5

    and-long v11, v2, v9

    cmp-long v13, v11, v4

    const/4 v11, 0x0

    if-eqz v13, :cond_0

    .line 137
    iget-object v6, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->mboundView1:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v12, 0x7f1107de

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v13, v11

    invoke-virtual {v6, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_0
    const-wide/16 v12, 0x6

    and-long v14, v2, v12

    cmp-long v7, v14, v4

    if-eqz v7, :cond_3

    cmp-long v7, v14, v4

    if-eqz v7, :cond_2

    if-eqz v8, :cond_1

    const-wide/16 v14, 0x10

    or-long v16, v2, v14

    :goto_0
    move-wide/from16 v2, v16

    goto :goto_1

    :cond_1
    const-wide/16 v14, 0x8

    or-long v16, v2, v14

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    const/16 v7, 0x8

    const/16 v11, 0x8

    :cond_3
    and-long v7, v2, v9

    cmp-long v9, v7, v4

    if-eqz v9, :cond_4

    .line 158
    iget-object v7, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->mboundView1:Landroid/widget/TextView;

    invoke-static {v7, v6}, Landroid/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_4
    and-long v6, v2, v12

    cmp-long v2, v6, v4

    if-eqz v2, :cond_5

    .line 163
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->mboundView2:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 126
    :try_start_1
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    const-string v19, "M_InsDal"

    const-string v20, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;--->executeBindings()V"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getNonInteractive()Z
    .locals 4

    move-object/16 v1, p0

    .line 110
    iget-boolean v0, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->mNonInteractive:Z

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;--->getNonInteractive()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getNumber()I
    .locals 4

    move-object/16 v1, p0

    .line 99
    iget v0, v1, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->mNumber:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;--->getNumber()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hasPendingBindings()Z
    .locals 8

    move-object/16 v5, p0

    .line 67
    monitor-enter v5

    .line 68
    :try_start_0
    iget-wide v0, v5, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 69
    monitor-exit v5

    return v0

    .line 71
    :cond_0
    monitor-exit v5

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;--->hasPendingBindings()Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public invalidateAll()V
    .locals 5

    move-object/16 v2, p0

    .line 59
    monitor-enter v2

    const-wide/16 v0, 0x4

    .line 60
    :try_start_0
    iput-wide v0, v2, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->mDirtyFlags:J

    .line 61
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 61
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;--->invalidateAll()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    const/4 v1, 0x0

    return v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;--->onFieldChange(ILjava/lang/Object;I)Z"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setNonInteractive(Z)V
    .locals 9

    move-object/16 v6, p0

    move/16 v7, p1

    .line 102
    iput-boolean v7, v6, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->mNonInteractive:Z

    .line 103
    monitor-enter v6

    .line 104
    :try_start_0
    iget-wide v0, v6, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long v4, v0, v2

    iput-wide v4, v6, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->mDirtyFlags:J

    .line 105
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x3

    .line 106
    invoke-virtual {v6, v7}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->notifyPropertyChanged(I)V

    .line 107
    invoke-super {v6}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v7

    .line 105
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;--->setNonInteractive(Z)V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setNumber(I)V
    .locals 9

    move-object/16 v6, p0

    move/16 v7, p1

    .line 91
    iput v7, v6, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->mNumber:I

    .line 92
    monitor-enter v6

    .line 93
    :try_start_0
    iget-wide v0, v6, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long v4, v0, v2

    iput-wide v4, v6, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->mDirtyFlags:J

    .line 94
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x4

    .line 95
    invoke-virtual {v6, v7}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->notifyPropertyChanged(I)V

    .line 96
    invoke-super {v6}, Landroid/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v7

    .line 94
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    const-string v8, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;--->setNumber(I)V"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    move-object/16 v3, p2

    const/4 v0, 0x4

    if-ne v0, v2, :cond_0

    .line 79
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->setNumber(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne v0, v2, :cond_1

    .line 82
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;->setNonInteractive(Z)V

    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/databinding/ImportKeysListBasicItemBinding;--->setVariable(ILjava/lang/Object;)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
